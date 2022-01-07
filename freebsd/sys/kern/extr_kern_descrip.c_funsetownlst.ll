; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_funsetownlst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_funsetownlst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigiolst = type { i32 }
%struct.proc = type { i32 }
%struct.pgrp = type { i32 }
%struct.sigio = type { i64, i32, %struct.proc*, %struct.pgrp*, i32** }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Proc sigio in pgrp sigio list\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Bogus pgrp in sigio list\00", align 1
@sio_pgsigio = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Pgrp sigio in proc sigio list\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Bogus proc in sigio list\00", align 1
@M_SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @funsetownlst(%struct.sigiolst* %0) #0 {
  %2 = alloca %struct.sigiolst*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.pgrp*, align 8
  %5 = alloca %struct.sigio*, align 8
  store %struct.sigiolst* %0, %struct.sigiolst** %2, align 8
  %6 = load %struct.sigiolst*, %struct.sigiolst** %2, align 8
  %7 = call %struct.sigio* @SLIST_FIRST(%struct.sigiolst* %6)
  store %struct.sigio* %7, %struct.sigio** %5, align 8
  %8 = load %struct.sigio*, %struct.sigio** %5, align 8
  %9 = icmp eq %struct.sigio* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %102

11:                                               ; preds = %1
  store %struct.proc* null, %struct.proc** %3, align 8
  store %struct.pgrp* null, %struct.pgrp** %4, align 8
  %12 = load %struct.sigio*, %struct.sigio** %5, align 8
  %13 = getelementptr inbounds %struct.sigio, %struct.sigio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.sigio*, %struct.sigio** %5, align 8
  %18 = getelementptr inbounds %struct.sigio, %struct.sigio* %17, i32 0, i32 3
  %19 = load %struct.pgrp*, %struct.pgrp** %18, align 8
  store %struct.pgrp* %19, %struct.pgrp** %4, align 8
  %20 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %21 = load i32, i32* @MA_NOTOWNED, align 4
  %22 = call i32 @PGRP_LOCK_ASSERT(%struct.pgrp* %20, i32 %21)
  br label %30

23:                                               ; preds = %11
  %24 = load %struct.sigio*, %struct.sigio** %5, align 8
  %25 = getelementptr inbounds %struct.sigio, %struct.sigio* %24, i32 0, i32 2
  %26 = load %struct.proc*, %struct.proc** %25, align 8
  store %struct.proc* %26, %struct.proc** %3, align 8
  %27 = load %struct.proc*, %struct.proc** %3, align 8
  %28 = load i32, i32* @MA_NOTOWNED, align 4
  %29 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  %31 = call i32 (...) @SIGIO_LOCK()
  br label %32

32:                                               ; preds = %90, %30
  %33 = load %struct.sigiolst*, %struct.sigiolst** %2, align 8
  %34 = call %struct.sigio* @SLIST_FIRST(%struct.sigiolst* %33)
  store %struct.sigio* %34, %struct.sigio** %5, align 8
  %35 = icmp ne %struct.sigio* %34, null
  br i1 %35, label %36, label %100

36:                                               ; preds = %32
  %37 = load %struct.sigio*, %struct.sigio** %5, align 8
  %38 = getelementptr inbounds %struct.sigio, %struct.sigio* %37, i32 0, i32 4
  %39 = load i32**, i32*** %38, align 8
  store i32* null, i32** %39, align 8
  %40 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %41 = icmp ne %struct.pgrp* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.sigio*, %struct.sigio** %5, align 8
  %44 = getelementptr inbounds %struct.sigio, %struct.sigio* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.sigio*, %struct.sigio** %5, align 8
  %50 = getelementptr inbounds %struct.sigio, %struct.sigio* %49, i32 0, i32 3
  %51 = load %struct.pgrp*, %struct.pgrp** %50, align 8
  %52 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %53 = icmp eq %struct.pgrp* %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %57 = call i32 @PGRP_LOCK(%struct.pgrp* %56)
  %58 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %59 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %58, i32 0, i32 0
  %60 = load %struct.sigio*, %struct.sigio** %5, align 8
  %61 = load %struct.sigio*, %struct.sigio** %5, align 8
  %62 = load i32, i32* @sio_pgsigio, align 4
  %63 = call i32 @SLIST_REMOVE(i32* %59, %struct.sigio* %60, %struct.sigio* %61, i32 %62)
  %64 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %65 = call i32 @PGRP_UNLOCK(%struct.pgrp* %64)
  br label %90

66:                                               ; preds = %36
  %67 = load %struct.sigio*, %struct.sigio** %5, align 8
  %68 = getelementptr inbounds %struct.sigio, %struct.sigio* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @KASSERT(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.sigio*, %struct.sigio** %5, align 8
  %74 = getelementptr inbounds %struct.sigio, %struct.sigio* %73, i32 0, i32 2
  %75 = load %struct.proc*, %struct.proc** %74, align 8
  %76 = load %struct.proc*, %struct.proc** %3, align 8
  %77 = icmp eq %struct.proc* %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @KASSERT(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.proc*, %struct.proc** %3, align 8
  %81 = call i32 @PROC_LOCK(%struct.proc* %80)
  %82 = load %struct.proc*, %struct.proc** %3, align 8
  %83 = getelementptr inbounds %struct.proc, %struct.proc* %82, i32 0, i32 0
  %84 = load %struct.sigio*, %struct.sigio** %5, align 8
  %85 = load %struct.sigio*, %struct.sigio** %5, align 8
  %86 = load i32, i32* @sio_pgsigio, align 4
  %87 = call i32 @SLIST_REMOVE(i32* %83, %struct.sigio* %84, %struct.sigio* %85, i32 %86)
  %88 = load %struct.proc*, %struct.proc** %3, align 8
  %89 = call i32 @PROC_UNLOCK(%struct.proc* %88)
  br label %90

90:                                               ; preds = %66, %42
  %91 = call i32 (...) @SIGIO_UNLOCK()
  %92 = load %struct.sigio*, %struct.sigio** %5, align 8
  %93 = getelementptr inbounds %struct.sigio, %struct.sigio* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @crfree(i32 %94)
  %96 = load %struct.sigio*, %struct.sigio** %5, align 8
  %97 = load i32, i32* @M_SIGIO, align 4
  %98 = call i32 @free(%struct.sigio* %96, i32 %97)
  %99 = call i32 (...) @SIGIO_LOCK()
  br label %32

100:                                              ; preds = %32
  %101 = call i32 (...) @SIGIO_UNLOCK()
  br label %102

102:                                              ; preds = %100, %10
  ret void
}

declare dso_local %struct.sigio* @SLIST_FIRST(%struct.sigiolst*) #1

declare dso_local i32 @PGRP_LOCK_ASSERT(%struct.pgrp*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @SIGIO_LOCK(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.sigio*, %struct.sigio*, i32) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @SIGIO_UNLOCK(...) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @free(%struct.sigio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
