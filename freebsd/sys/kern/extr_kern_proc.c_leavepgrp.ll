; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_leavepgrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_leavepgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.pgrp* }
%struct.pgrp = type { i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@p_pglist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leavepgrp(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.pgrp*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load i32, i32* @SX_XLOCKED, align 4
  %5 = call i32 @sx_assert(i32* @proctree_lock, i32 %4)
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  store %struct.pgrp* %8, %struct.pgrp** %3, align 8
  %9 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %10 = call i32 @PGRP_LOCK(%struct.pgrp* %9)
  %11 = load %struct.proc*, %struct.proc** %2, align 8
  %12 = call i32 @PROC_LOCK(%struct.proc* %11)
  %13 = load %struct.proc*, %struct.proc** %2, align 8
  %14 = load i32, i32* @p_pglist, align 4
  %15 = call i32 @LIST_REMOVE(%struct.proc* %13, i32 %14)
  %16 = load %struct.proc*, %struct.proc** %2, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  store %struct.pgrp* null, %struct.pgrp** %17, align 8
  %18 = load %struct.proc*, %struct.proc** %2, align 8
  %19 = call i32 @PROC_UNLOCK(%struct.proc* %18)
  %20 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %21 = call i32 @PGRP_UNLOCK(%struct.pgrp* %20)
  %22 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %23 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %22, i32 0, i32 0
  %24 = call i64 @LIST_EMPTY(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %28 = call i32 @pgdelete(%struct.pgrp* %27)
  br label %29

29:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @pgdelete(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
