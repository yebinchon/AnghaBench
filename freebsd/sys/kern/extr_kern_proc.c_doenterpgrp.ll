; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_doenterpgrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_doenterpgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.pgrp*, i32 }
%struct.pgrp = type { i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@p_pglist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, %struct.pgrp*)* @doenterpgrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doenterpgrp(%struct.proc* %0, %struct.pgrp* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.pgrp*, align 8
  %5 = alloca %struct.pgrp*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.pgrp* %1, %struct.pgrp** %4, align 8
  %6 = load i32, i32* @SX_XLOCKED, align 4
  %7 = call i32 @sx_assert(i32* @proctree_lock, i32 %6)
  %8 = load %struct.proc*, %struct.proc** %3, align 8
  %9 = load i32, i32* @MA_NOTOWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %12 = load i32, i32* @MA_NOTOWNED, align 4
  %13 = call i32 @PGRP_LOCK_ASSERT(%struct.pgrp* %11, i32 %12)
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 0
  %16 = load %struct.pgrp*, %struct.pgrp** %15, align 8
  %17 = load i32, i32* @MA_NOTOWNED, align 4
  %18 = call i32 @PGRP_LOCK_ASSERT(%struct.pgrp* %16, i32 %17)
  %19 = load %struct.proc*, %struct.proc** %3, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MA_NOTOWNED, align 4
  %23 = call i32 @SESS_LOCK_ASSERT(i32 %21, i32 %22)
  %24 = load %struct.proc*, %struct.proc** %3, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 0
  %26 = load %struct.pgrp*, %struct.pgrp** %25, align 8
  store %struct.pgrp* %26, %struct.pgrp** %5, align 8
  %27 = load %struct.proc*, %struct.proc** %3, align 8
  %28 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %29 = call i32 @fixjobc(%struct.proc* %27, %struct.pgrp* %28, i32 1)
  %30 = load %struct.proc*, %struct.proc** %3, align 8
  %31 = load %struct.proc*, %struct.proc** %3, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 0
  %33 = load %struct.pgrp*, %struct.pgrp** %32, align 8
  %34 = call i32 @fixjobc(%struct.proc* %30, %struct.pgrp* %33, i32 0)
  %35 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %36 = call i32 @PGRP_LOCK(%struct.pgrp* %35)
  %37 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %38 = call i32 @PGRP_LOCK(%struct.pgrp* %37)
  %39 = load %struct.proc*, %struct.proc** %3, align 8
  %40 = call i32 @PROC_LOCK(%struct.proc* %39)
  %41 = load %struct.proc*, %struct.proc** %3, align 8
  %42 = load i32, i32* @p_pglist, align 4
  %43 = call i32 @LIST_REMOVE(%struct.proc* %41, i32 %42)
  %44 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %45 = load %struct.proc*, %struct.proc** %3, align 8
  %46 = getelementptr inbounds %struct.proc, %struct.proc* %45, i32 0, i32 0
  store %struct.pgrp* %44, %struct.pgrp** %46, align 8
  %47 = load %struct.proc*, %struct.proc** %3, align 8
  %48 = call i32 @PROC_UNLOCK(%struct.proc* %47)
  %49 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %50 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %49, i32 0, i32 0
  %51 = load %struct.proc*, %struct.proc** %3, align 8
  %52 = load i32, i32* @p_pglist, align 4
  %53 = call i32 @LIST_INSERT_HEAD(i32* %50, %struct.proc* %51, i32 %52)
  %54 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %55 = call i32 @PGRP_UNLOCK(%struct.pgrp* %54)
  %56 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %57 = call i32 @PGRP_UNLOCK(%struct.pgrp* %56)
  %58 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %59 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %58, i32 0, i32 0
  %60 = call i64 @LIST_EMPTY(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %2
  %63 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %64 = call i32 @pgdelete(%struct.pgrp* %63)
  br label %65

65:                                               ; preds = %62, %2
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PGRP_LOCK_ASSERT(%struct.pgrp*, i32) #1

declare dso_local i32 @SESS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @fixjobc(%struct.proc*, %struct.pgrp*, i32) #1

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.proc*, i32) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @pgdelete(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
