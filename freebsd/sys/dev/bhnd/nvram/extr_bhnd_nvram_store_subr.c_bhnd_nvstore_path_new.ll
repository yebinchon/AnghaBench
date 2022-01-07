; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_path_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_path_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32*, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @bhnd_nvstore_path_new(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call %struct.TYPE_6__* @bhnd_nv_malloc(i32 32)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %60

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = call i32* (...) @bhnd_nvram_plist_new()
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %37

24:                                               ; preds = %11
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call %struct.TYPE_6__* @bhnd_nv_strndup(i8* %25, i64 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %37

35:                                               ; preds = %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %3, align 8
  br label %60

37:                                               ; preds = %34, %23
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bhnd_nvram_plist_release(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @bhnd_nv_free(%struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = call i32 @bhnd_nv_free(%struct.TYPE_6__* %58)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %60

60:                                               ; preds = %57, %35, %10
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %61
}

declare dso_local %struct.TYPE_6__* @bhnd_nv_malloc(i32) #1

declare dso_local i32* @bhnd_nvram_plist_new(...) #1

declare dso_local %struct.TYPE_6__* @bhnd_nv_strndup(i8*, i64) #1

declare dso_local i32 @bhnd_nvram_plist_release(i32*) #1

declare dso_local i32 @bhnd_nv_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
