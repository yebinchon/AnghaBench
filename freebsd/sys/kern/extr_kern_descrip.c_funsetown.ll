; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_funsetown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_funsetown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigio = type { i64, i32, %struct.proc*, %struct.pgrp*, i32** }
%struct.proc = type { i32 }
%struct.pgrp = type { i32 }

@sio_pgsigio = common dso_local global i32 0, align 4
@M_SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @funsetown(%struct.sigio** %0) #0 {
  %2 = alloca %struct.sigio**, align 8
  %3 = alloca %struct.sigio*, align 8
  %4 = alloca %struct.pgrp*, align 8
  %5 = alloca %struct.proc*, align 8
  store %struct.sigio** %0, %struct.sigio*** %2, align 8
  %6 = load %struct.sigio**, %struct.sigio*** %2, align 8
  %7 = load %struct.sigio*, %struct.sigio** %6, align 8
  %8 = icmp eq %struct.sigio* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  %11 = call i32 (...) @SIGIO_LOCK()
  %12 = load %struct.sigio**, %struct.sigio*** %2, align 8
  %13 = load %struct.sigio*, %struct.sigio** %12, align 8
  store %struct.sigio* %13, %struct.sigio** %3, align 8
  %14 = load %struct.sigio*, %struct.sigio** %3, align 8
  %15 = icmp eq %struct.sigio* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 (...) @SIGIO_UNLOCK()
  br label %67

18:                                               ; preds = %10
  %19 = load %struct.sigio*, %struct.sigio** %3, align 8
  %20 = getelementptr inbounds %struct.sigio, %struct.sigio* %19, i32 0, i32 4
  %21 = load i32**, i32*** %20, align 8
  store i32* null, i32** %21, align 8
  %22 = load %struct.sigio*, %struct.sigio** %3, align 8
  %23 = getelementptr inbounds %struct.sigio, %struct.sigio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load %struct.sigio*, %struct.sigio** %3, align 8
  %28 = getelementptr inbounds %struct.sigio, %struct.sigio* %27, i32 0, i32 3
  %29 = load %struct.pgrp*, %struct.pgrp** %28, align 8
  store %struct.pgrp* %29, %struct.pgrp** %4, align 8
  %30 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %31 = call i32 @PGRP_LOCK(%struct.pgrp* %30)
  %32 = load %struct.sigio*, %struct.sigio** %3, align 8
  %33 = getelementptr inbounds %struct.sigio, %struct.sigio* %32, i32 0, i32 3
  %34 = load %struct.pgrp*, %struct.pgrp** %33, align 8
  %35 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %34, i32 0, i32 0
  %36 = load %struct.sigio*, %struct.sigio** %3, align 8
  %37 = load %struct.sigio*, %struct.sigio** %3, align 8
  %38 = load i32, i32* @sio_pgsigio, align 4
  %39 = call i32 @SLIST_REMOVE(i32* %35, %struct.sigio* %36, %struct.sigio* %37, i32 %38)
  %40 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %41 = call i32 @PGRP_UNLOCK(%struct.pgrp* %40)
  br label %58

42:                                               ; preds = %18
  %43 = load %struct.sigio*, %struct.sigio** %3, align 8
  %44 = getelementptr inbounds %struct.sigio, %struct.sigio* %43, i32 0, i32 2
  %45 = load %struct.proc*, %struct.proc** %44, align 8
  store %struct.proc* %45, %struct.proc** %5, align 8
  %46 = load %struct.proc*, %struct.proc** %5, align 8
  %47 = call i32 @PROC_LOCK(%struct.proc* %46)
  %48 = load %struct.sigio*, %struct.sigio** %3, align 8
  %49 = getelementptr inbounds %struct.sigio, %struct.sigio* %48, i32 0, i32 2
  %50 = load %struct.proc*, %struct.proc** %49, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 0
  %52 = load %struct.sigio*, %struct.sigio** %3, align 8
  %53 = load %struct.sigio*, %struct.sigio** %3, align 8
  %54 = load i32, i32* @sio_pgsigio, align 4
  %55 = call i32 @SLIST_REMOVE(i32* %51, %struct.sigio* %52, %struct.sigio* %53, i32 %54)
  %56 = load %struct.proc*, %struct.proc** %5, align 8
  %57 = call i32 @PROC_UNLOCK(%struct.proc* %56)
  br label %58

58:                                               ; preds = %42, %26
  %59 = call i32 (...) @SIGIO_UNLOCK()
  %60 = load %struct.sigio*, %struct.sigio** %3, align 8
  %61 = getelementptr inbounds %struct.sigio, %struct.sigio* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @crfree(i32 %62)
  %64 = load %struct.sigio*, %struct.sigio** %3, align 8
  %65 = load i32, i32* @M_SIGIO, align 4
  %66 = call i32 @free(%struct.sigio* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %16, %9
  ret void
}

declare dso_local i32 @SIGIO_LOCK(...) #1

declare dso_local i32 @SIGIO_UNLOCK(...) #1

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.sigio*, %struct.sigio*, i32) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @free(%struct.sigio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
