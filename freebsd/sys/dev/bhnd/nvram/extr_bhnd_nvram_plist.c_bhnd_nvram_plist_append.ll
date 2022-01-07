; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_plist.c_bhnd_nvram_plist_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_plist.c_bhnd_nvram_plist_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@pl_link = common dso_local global i32 0, align 4
@HASHINIT = common dso_local global i32 0, align 4
@pl_hash_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_plist_append(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @bhnd_nvram_plist_contains(%struct.TYPE_13__* %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EEXIST, align 4
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIZE_MAX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %64

25:                                               ; preds = %17
  %26 = call %struct.TYPE_12__* @bhnd_nv_malloc(i32 4)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %7, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = icmp eq %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = call i32 @bhnd_nvram_prop_retain(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = load i32, i32* @pl_link, align 4
  %40 = call i32 @TAILQ_INSERT_TAIL(i32* %37, %struct.TYPE_12__* %38, i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HASHINIT, align 4
  %45 = call i64 @hash32_str(i32 %43, i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @nitems(i32* %52)
  %54 = urem i64 %49, %53
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = load i32, i32* @pl_hash_link, align 4
  %59 = call i32 @LIST_INSERT_HEAD(i32* %56, %struct.TYPE_12__* %57, i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %31, %29, %23, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @bhnd_nvram_plist_contains(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @bhnd_nv_malloc(i32) #1

declare dso_local i32 @bhnd_nvram_prop_retain(%struct.TYPE_11__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @hash32_str(i32, i32) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
