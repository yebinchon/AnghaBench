; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_uni_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_uni_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unimem_debug = type { i8*, i32, i64 }

@UNIMEM_TYPES = common dso_local global i64 0, align 8
@nguni_freemem = common dso_local global i32* null, align 8
@link = common dso_local global i32 0, align 4
@M_UNI = common dso_local global i32 0, align 4
@nguni_usedmem = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"ng_uni: %s in use: %p (%s,%u)\0A\00", align 1
@unimem_names = common dso_local global i8** null, align 8
@nguni_unilist_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uni_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_fini() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.unimem_debug*, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %51, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @UNIMEM_TYPES, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %54

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %14, %7
  %9 = load i32*, i32** @nguni_freemem, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = call %struct.unimem_debug* @LIST_FIRST(i32* %11)
  store %struct.unimem_debug* %12, %struct.unimem_debug** %2, align 8
  %13 = icmp ne %struct.unimem_debug* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.unimem_debug*, %struct.unimem_debug** %2, align 8
  %16 = load i32, i32* @link, align 4
  %17 = call i32 @LIST_REMOVE(%struct.unimem_debug* %15, i32 %16)
  %18 = load %struct.unimem_debug*, %struct.unimem_debug** %2, align 8
  %19 = load i32, i32* @M_UNI, align 4
  %20 = call i32 @free(%struct.unimem_debug* %18, i32 %19)
  br label %8

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %28, %21
  %23 = load i32*, i32** @nguni_usedmem, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call %struct.unimem_debug* @LIST_FIRST(i32* %25)
  store %struct.unimem_debug* %26, %struct.unimem_debug** %2, align 8
  %27 = icmp ne %struct.unimem_debug* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.unimem_debug*, %struct.unimem_debug** %2, align 8
  %30 = load i32, i32* @link, align 4
  %31 = call i32 @LIST_REMOVE(%struct.unimem_debug* %29, i32 %30)
  %32 = load i8**, i8*** @unimem_names, align 8
  %33 = load i64, i64* %1, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.unimem_debug*, %struct.unimem_debug** %2, align 8
  %37 = getelementptr inbounds %struct.unimem_debug, %struct.unimem_debug* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.unimem_debug*, %struct.unimem_debug** %2, align 8
  %41 = getelementptr inbounds %struct.unimem_debug, %struct.unimem_debug* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.unimem_debug*, %struct.unimem_debug** %2, align 8
  %44 = getelementptr inbounds %struct.unimem_debug, %struct.unimem_debug* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %39, i8* %42, i32 %45)
  %47 = load %struct.unimem_debug*, %struct.unimem_debug** %2, align 8
  %48 = load i32, i32* @M_UNI, align 4
  %49 = call i32 @free(%struct.unimem_debug* %47, i32 %48)
  br label %22

50:                                               ; preds = %22
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %1, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %1, align 8
  br label %3

54:                                               ; preds = %3
  %55 = call i32 @mtx_destroy(i32* @nguni_unilist_mtx)
  ret void
}

declare dso_local %struct.unimem_debug* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.unimem_debug*, i32) #1

declare dso_local i32 @free(%struct.unimem_debug*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
