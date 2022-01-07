; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_pgdelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_pgdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32, i32, %struct.session*, i32 }
%struct.session = type { %struct.tty* }
%struct.tty = type { i32 }

@proctree_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@pg_hash = common dso_local global i32 0, align 4
@PROC_ID_GROUP = common dso_local global i32 0, align 4
@M_PGRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pgrp*)* @pgdelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgdelete(%struct.pgrp* %0) #0 {
  %2 = alloca %struct.pgrp*, align 8
  %3 = alloca %struct.session*, align 8
  %4 = alloca %struct.tty*, align 8
  store %struct.pgrp* %0, %struct.pgrp** %2, align 8
  %5 = load i32, i32* @SX_XLOCKED, align 4
  %6 = call i32 @sx_assert(i32* @proctree_lock, i32 %5)
  %7 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %8 = load i32, i32* @MA_NOTOWNED, align 4
  %9 = call i32 @PGRP_LOCK_ASSERT(%struct.pgrp* %7, i32 %8)
  %10 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %11 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %10, i32 0, i32 2
  %12 = load %struct.session*, %struct.session** %11, align 8
  %13 = load i32, i32* @MA_NOTOWNED, align 4
  %14 = call i32 @SESS_LOCK_ASSERT(%struct.session* %12, i32 %13)
  %15 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %16 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %15, i32 0, i32 3
  %17 = call i32 @funsetownlst(i32* %16)
  %18 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %19 = call i32 @PGRP_LOCK(%struct.pgrp* %18)
  %20 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %21 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %20, i32 0, i32 2
  %22 = load %struct.session*, %struct.session** %21, align 8
  %23 = getelementptr inbounds %struct.session, %struct.session* %22, i32 0, i32 0
  %24 = load %struct.tty*, %struct.tty** %23, align 8
  store %struct.tty* %24, %struct.tty** %4, align 8
  %25 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %26 = load i32, i32* @pg_hash, align 4
  %27 = call i32 @LIST_REMOVE(%struct.pgrp* %25, i32 %26)
  %28 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %29 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %28, i32 0, i32 2
  %30 = load %struct.session*, %struct.session** %29, align 8
  store %struct.session* %30, %struct.session** %3, align 8
  %31 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %32 = call i32 @PGRP_UNLOCK(%struct.pgrp* %31)
  %33 = load %struct.tty*, %struct.tty** %4, align 8
  %34 = icmp ne %struct.tty* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.tty*, %struct.tty** %4, align 8
  %37 = call i32 @tty_lock(%struct.tty* %36)
  %38 = load %struct.tty*, %struct.tty** %4, align 8
  %39 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %40 = call i32 @tty_rel_pgrp(%struct.tty* %38, %struct.pgrp* %39)
  br label %41

41:                                               ; preds = %35, %1
  %42 = load i32, i32* @PROC_ID_GROUP, align 4
  %43 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %44 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @proc_id_clear(i32 %42, i32 %45)
  %47 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %48 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %47, i32 0, i32 0
  %49 = call i32 @mtx_destroy(i32* %48)
  %50 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %51 = load i32, i32* @M_PGRP, align 4
  %52 = call i32 @free(%struct.pgrp* %50, i32 %51)
  %53 = load %struct.session*, %struct.session** %3, align 8
  %54 = call i32 @sess_release(%struct.session* %53)
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PGRP_LOCK_ASSERT(%struct.pgrp*, i32) #1

declare dso_local i32 @SESS_LOCK_ASSERT(%struct.session*, i32) #1

declare dso_local i32 @funsetownlst(i32*) #1

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @LIST_REMOVE(%struct.pgrp*, i32) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_rel_pgrp(%struct.tty*, %struct.pgrp*) #1

declare dso_local i32 @proc_id_clear(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.pgrp*, i32) #1

declare dso_local i32 @sess_release(%struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
