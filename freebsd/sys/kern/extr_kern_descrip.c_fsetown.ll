; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fsetown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fsetown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sigio = type { i32, %struct.pgrp*, %struct.proc*, %struct.sigio**, i32 }
%struct.pgrp = type { i64, i32 }
%struct.proc = type { i64, i32, i32 }

@M_SIGIO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@proctree_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@sio_pgsigio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsetown(i32 %0, %struct.sigio** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigio**, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.pgrp*, align 8
  %8 = alloca %struct.sigio*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sigio** %1, %struct.sigio*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.sigio**, %struct.sigio*** %5, align 8
  %14 = call i32 @funsetown(%struct.sigio** %13)
  store i32 0, i32* %3, align 4
  br label %137

15:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @M_SIGIO, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call %struct.sigio* @malloc(i32 40, i32 %16, i32 %17)
  store %struct.sigio* %18, %struct.sigio** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sigio*, %struct.sigio** %8, align 8
  %21 = getelementptr inbounds %struct.sigio, %struct.sigio* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @crhold(i32 %24)
  %26 = load %struct.sigio*, %struct.sigio** %8, align 8
  %27 = getelementptr inbounds %struct.sigio, %struct.sigio* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sigio**, %struct.sigio*** %5, align 8
  %29 = load %struct.sigio*, %struct.sigio** %8, align 8
  %30 = getelementptr inbounds %struct.sigio, %struct.sigio* %29, i32 0, i32 3
  store %struct.sigio** %28, %struct.sigio*** %30, align 8
  %31 = call i32 @sx_slock(i32* @proctree_lock)
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %15
  %35 = load i32, i32* %4, align 4
  %36 = call %struct.proc* @pfind(i32 %35)
  store %struct.proc* %36, %struct.proc** %6, align 8
  %37 = load %struct.proc*, %struct.proc** %6, align 8
  %38 = icmp eq %struct.proc* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ESRCH, align 4
  store i32 %40, i32* %9, align 4
  br label %127

41:                                               ; preds = %34
  %42 = load %struct.proc*, %struct.proc** %6, align 8
  %43 = call i32 @PROC_UNLOCK(%struct.proc* %42)
  %44 = load %struct.proc*, %struct.proc** %6, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @EPERM, align 4
  store i32 %54, i32* %9, align 4
  br label %127

55:                                               ; preds = %41
  store %struct.pgrp* null, %struct.pgrp** %7, align 8
  br label %79

56:                                               ; preds = %15
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.pgrp* @pgfind(i32 %58)
  store %struct.pgrp* %59, %struct.pgrp** %7, align 8
  %60 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %61 = icmp eq %struct.pgrp* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @ESRCH, align 4
  store i32 %63, i32* %9, align 4
  br label %127

64:                                               ; preds = %56
  %65 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %66 = call i32 @PGRP_UNLOCK(%struct.pgrp* %65)
  %67 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %68 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %69, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* @EPERM, align 4
  store i32 %77, i32* %9, align 4
  br label %127

78:                                               ; preds = %64
  store %struct.proc* null, %struct.proc** %6, align 8
  br label %79

79:                                               ; preds = %78, %55
  %80 = load %struct.sigio**, %struct.sigio*** %5, align 8
  %81 = call i32 @funsetown(%struct.sigio** %80)
  %82 = load i32, i32* %4, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %79
  %85 = load %struct.proc*, %struct.proc** %6, align 8
  %86 = call i32 @PROC_LOCK(%struct.proc* %85)
  %87 = load %struct.proc*, %struct.proc** %6, align 8
  %88 = getelementptr inbounds %struct.proc, %struct.proc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @P_WEXIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load %struct.proc*, %struct.proc** %6, align 8
  %95 = call i32 @PROC_UNLOCK(%struct.proc* %94)
  %96 = load i32, i32* @ESRCH, align 4
  store i32 %96, i32* %9, align 4
  br label %127

97:                                               ; preds = %84
  %98 = load %struct.proc*, %struct.proc** %6, align 8
  %99 = getelementptr inbounds %struct.proc, %struct.proc* %98, i32 0, i32 2
  %100 = load %struct.sigio*, %struct.sigio** %8, align 8
  %101 = load i32, i32* @sio_pgsigio, align 4
  %102 = call i32 @SLIST_INSERT_HEAD(i32* %99, %struct.sigio* %100, i32 %101)
  %103 = load %struct.proc*, %struct.proc** %6, align 8
  %104 = load %struct.sigio*, %struct.sigio** %8, align 8
  %105 = getelementptr inbounds %struct.sigio, %struct.sigio* %104, i32 0, i32 2
  store %struct.proc* %103, %struct.proc** %105, align 8
  %106 = load %struct.proc*, %struct.proc** %6, align 8
  %107 = call i32 @PROC_UNLOCK(%struct.proc* %106)
  br label %121

108:                                              ; preds = %79
  %109 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %110 = call i32 @PGRP_LOCK(%struct.pgrp* %109)
  %111 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %112 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %111, i32 0, i32 1
  %113 = load %struct.sigio*, %struct.sigio** %8, align 8
  %114 = load i32, i32* @sio_pgsigio, align 4
  %115 = call i32 @SLIST_INSERT_HEAD(i32* %112, %struct.sigio* %113, i32 %114)
  %116 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %117 = load %struct.sigio*, %struct.sigio** %8, align 8
  %118 = getelementptr inbounds %struct.sigio, %struct.sigio* %117, i32 0, i32 1
  store %struct.pgrp* %116, %struct.pgrp** %118, align 8
  %119 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %120 = call i32 @PGRP_UNLOCK(%struct.pgrp* %119)
  br label %121

121:                                              ; preds = %108, %97
  %122 = call i32 @sx_sunlock(i32* @proctree_lock)
  %123 = call i32 (...) @SIGIO_LOCK()
  %124 = load %struct.sigio*, %struct.sigio** %8, align 8
  %125 = load %struct.sigio**, %struct.sigio*** %5, align 8
  store %struct.sigio* %124, %struct.sigio** %125, align 8
  %126 = call i32 (...) @SIGIO_UNLOCK()
  store i32 0, i32* %3, align 4
  br label %137

127:                                              ; preds = %93, %76, %62, %53, %39
  %128 = call i32 @sx_sunlock(i32* @proctree_lock)
  %129 = load %struct.sigio*, %struct.sigio** %8, align 8
  %130 = getelementptr inbounds %struct.sigio, %struct.sigio* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @crfree(i32 %131)
  %133 = load %struct.sigio*, %struct.sigio** %8, align 8
  %134 = load i32, i32* @M_SIGIO, align 4
  %135 = call i32 @free(%struct.sigio* %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %127, %121, %12
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @funsetown(%struct.sigio**) #1

declare dso_local %struct.sigio* @malloc(i32, i32, i32) #1

declare dso_local i32 @crhold(i32) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.proc* @pfind(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.pgrp* @pgfind(i32) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.sigio*, i32) #1

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @SIGIO_LOCK(...) #1

declare dso_local i32 @SIGIO_UNLOCK(...) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @free(%struct.sigio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
