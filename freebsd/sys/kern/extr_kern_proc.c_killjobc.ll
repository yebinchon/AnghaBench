; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_killjobc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_killjobc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i64, %struct.session*, i32, %struct.TYPE_2__* }
%struct.session = type { i32*, i32*, %struct.vnode*, %struct.tty* }
%struct.vnode = type { i32 }
%struct.tty = type { %struct.session* }
%struct.TYPE_2__ = type { i64 }

@curproc = common dso_local global %struct.proc* null, align 8
@P_WEXIT = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@REVOKEALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @killjobc() #0 {
  %1 = alloca %struct.session*, align 8
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %5, %struct.proc** %3, align 8
  %6 = load %struct.proc*, %struct.proc** %3, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @P_WEXIT, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @MPASS(i32 %10)
  %12 = load %struct.proc*, %struct.proc** %3, align 8
  %13 = call i32 @PROC_LOCK(%struct.proc* %12)
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = call i64 @SESS_LEADER(%struct.proc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %0
  %18 = load %struct.proc*, %struct.proc** %3, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.proc*, %struct.proc** %3, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.proc*, %struct.proc** %3, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 3
  %30 = call i64 @LIST_EMPTY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.proc*, %struct.proc** %3, align 8
  %34 = call i32 @PROC_UNLOCK(%struct.proc* %33)
  br label %106

35:                                               ; preds = %27, %17, %0
  %36 = load %struct.proc*, %struct.proc** %3, align 8
  %37 = call i32 @PROC_UNLOCK(%struct.proc* %36)
  %38 = call i32 @sx_xlock(i32* @proctree_lock)
  %39 = load %struct.proc*, %struct.proc** %3, align 8
  %40 = call i64 @SESS_LEADER(%struct.proc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %35
  %43 = load %struct.proc*, %struct.proc** %3, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 2
  %45 = load %struct.session*, %struct.session** %44, align 8
  store %struct.session* %45, %struct.session** %1, align 8
  %46 = load %struct.session*, %struct.session** %1, align 8
  %47 = call i32 @SESS_LOCK(%struct.session* %46)
  %48 = load %struct.session*, %struct.session** %1, align 8
  %49 = getelementptr inbounds %struct.session, %struct.session* %48, i32 0, i32 2
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  store %struct.vnode* %50, %struct.vnode** %4, align 8
  %51 = load %struct.session*, %struct.session** %1, align 8
  %52 = getelementptr inbounds %struct.session, %struct.session* %51, i32 0, i32 3
  %53 = load %struct.tty*, %struct.tty** %52, align 8
  store %struct.tty* %53, %struct.tty** %2, align 8
  %54 = load %struct.session*, %struct.session** %1, align 8
  %55 = getelementptr inbounds %struct.session, %struct.session* %54, i32 0, i32 2
  store %struct.vnode* null, %struct.vnode** %55, align 8
  %56 = load %struct.session*, %struct.session** %1, align 8
  %57 = getelementptr inbounds %struct.session, %struct.session* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.session*, %struct.session** %1, align 8
  %59 = getelementptr inbounds %struct.session, %struct.session* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.session*, %struct.session** %1, align 8
  %61 = call i32 @SESS_UNLOCK(%struct.session* %60)
  %62 = load %struct.tty*, %struct.tty** %2, align 8
  %63 = icmp ne %struct.tty* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %42
  %65 = load %struct.tty*, %struct.tty** %2, align 8
  %66 = call i32 @tty_lock(%struct.tty* %65)
  %67 = load %struct.tty*, %struct.tty** %2, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 0
  %69 = load %struct.session*, %struct.session** %68, align 8
  %70 = load %struct.session*, %struct.session** %1, align 8
  %71 = icmp eq %struct.session* %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.tty*, %struct.tty** %2, align 8
  %74 = load i32, i32* @SIGHUP, align 4
  %75 = call i32 @tty_signal_pgrp(%struct.tty* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.tty*, %struct.tty** %2, align 8
  %78 = call i32 @tty_unlock(%struct.tty* %77)
  br label %79

79:                                               ; preds = %76, %42
  %80 = load %struct.vnode*, %struct.vnode** %4, align 8
  %81 = icmp ne %struct.vnode* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = call i32 @sx_xunlock(i32* @proctree_lock)
  %84 = load %struct.vnode*, %struct.vnode** %4, align 8
  %85 = load i32, i32* @LK_EXCLUSIVE, align 4
  %86 = call i64 @vn_lock(%struct.vnode* %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.vnode*, %struct.vnode** %4, align 8
  %90 = load i32, i32* @REVOKEALL, align 4
  %91 = call i32 @VOP_REVOKE(%struct.vnode* %89, i32 %90)
  %92 = load %struct.vnode*, %struct.vnode** %4, align 8
  %93 = call i32 @VOP_UNLOCK(%struct.vnode* %92, i32 0)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.vnode*, %struct.vnode** %4, align 8
  %96 = call i32 @vrele(%struct.vnode* %95)
  %97 = call i32 @sx_xlock(i32* @proctree_lock)
  br label %98

98:                                               ; preds = %94, %79
  br label %99

99:                                               ; preds = %98, %35
  %100 = load %struct.proc*, %struct.proc** %3, align 8
  %101 = load %struct.proc*, %struct.proc** %3, align 8
  %102 = getelementptr inbounds %struct.proc, %struct.proc* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @fixjobc(%struct.proc* %100, i64 %103, i32 0)
  %105 = call i32 @sx_xunlock(i32* @proctree_lock)
  br label %106

106:                                              ; preds = %99, %32
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @SESS_LEADER(%struct.proc*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @SESS_LOCK(%struct.session*) #1

declare dso_local i32 @SESS_UNLOCK(%struct.session*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_signal_pgrp(%struct.tty*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i64 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_REVOKE(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @fixjobc(%struct.proc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
