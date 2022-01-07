; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_mark_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_mark_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32 }
%struct.bxe_prev_list_node = type { i32, i64, i32, i32, i32 }

@bxe_prev_mtx = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Re-marking AER in path %d/%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Removing AER indication from path %d/%d/%d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to allocate 'bxe_prev_list_node'\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Marked path %d/%d/%d - finished previous unload\0A\00", align 1
@bxe_prev_list = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i64)* @bxe_prev_mark_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_prev_mark_path(%struct.bxe_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bxe_prev_list_node*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 @mtx_lock(i32* @bxe_prev_mtx)
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %9 = call %struct.bxe_prev_list_node* @bxe_prev_path_get_entry(%struct.bxe_softc* %8)
  store %struct.bxe_prev_list_node* %9, %struct.bxe_prev_list_node** %6, align 8
  %10 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %11 = icmp ne %struct.bxe_prev_list_node* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %14 = getelementptr inbounds %struct.bxe_prev_list_node, %struct.bxe_prev_list_node* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = load i32, i32* @DBG_LOAD, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %27 = call i32 @SC_PATH(%struct.bxe_softc* %26)
  %28 = call i32 @BLOGD(%struct.bxe_softc* %18, i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %27)
  br label %43

29:                                               ; preds = %12
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %31 = load i32, i32* @DBG_LOAD, align 4
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %36 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %39 = call i32 @SC_PATH(%struct.bxe_softc* %38)
  %40 = call i32 @BLOGD(%struct.bxe_softc* %30, i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %39)
  %41 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %42 = getelementptr inbounds %struct.bxe_prev_list_node, %struct.bxe_prev_list_node* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %29, %17
  %44 = call i32 @mtx_unlock(i32* @bxe_prev_mtx)
  store i32 0, i32* %3, align 4
  br label %101

45:                                               ; preds = %2
  %46 = call i32 @mtx_unlock(i32* @bxe_prev_mtx)
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = load i32, i32* @M_NOWAIT, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.bxe_prev_list_node* @malloc(i32 32, i32 %47, i32 %50)
  store %struct.bxe_prev_list_node* %51, %struct.bxe_prev_list_node** %6, align 8
  %52 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %53 = icmp ne %struct.bxe_prev_list_node* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %56 = call i32 @BLOGE(%struct.bxe_softc* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %101

57:                                               ; preds = %45
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %59 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %62 = getelementptr inbounds %struct.bxe_prev_list_node, %struct.bxe_prev_list_node* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %64 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %67 = getelementptr inbounds %struct.bxe_prev_list_node, %struct.bxe_prev_list_node* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %69 = call i32 @SC_PATH(%struct.bxe_softc* %68)
  %70 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %71 = getelementptr inbounds %struct.bxe_prev_list_node, %struct.bxe_prev_list_node* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %73 = getelementptr inbounds %struct.bxe_prev_list_node, %struct.bxe_prev_list_node* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %57
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %78 = call i32 @SC_PORT(%struct.bxe_softc* %77)
  %79 = shl i32 1, %78
  br label %81

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i32 [ %79, %76 ], [ 0, %80 ]
  %83 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %84 = getelementptr inbounds %struct.bxe_prev_list_node, %struct.bxe_prev_list_node* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = call i32 @mtx_lock(i32* @bxe_prev_mtx)
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %87 = load i32, i32* @DBG_LOAD, align 4
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %89 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %92 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %95 = call i32 @SC_PATH(%struct.bxe_softc* %94)
  %96 = call i32 @BLOGD(%struct.bxe_softc* %86, i32 %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %93, i32 %95)
  %97 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %6, align 8
  %98 = load i32, i32* @node, align 4
  %99 = call i32 @LIST_INSERT_HEAD(i32* @bxe_prev_list, %struct.bxe_prev_list_node* %97, i32 %98)
  %100 = call i32 @mtx_unlock(i32* @bxe_prev_mtx)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %81, %54, %43
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bxe_prev_list_node* @bxe_prev_path_get_entry(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.bxe_prev_list_node* @malloc(i32, i32, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.bxe_prev_list_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
