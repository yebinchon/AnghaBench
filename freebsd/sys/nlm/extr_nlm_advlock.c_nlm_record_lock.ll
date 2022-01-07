; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_record_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_record_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.vnode = type { i32 }
%struct.flock = type { i32, i32, i32, i32, i32, i32 }
%struct.vop_advlockasync_args = type { i32, i32, i32*, i32*, %struct.flock*, i32*, %struct.vnode* }

@F_REMOTE = common dso_local global i32 0, align 4
@F_WAIT = common dso_local global i32 0, align 4
@F_NOINTR = common dso_local global i32 0, align 4
@NLM_SYSID_CLIENT = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nlmdlk\00", align 1
@curproc = common dso_local global %struct.proc* null, align 8
@SIGDEFERSTOP_OFF = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to register NFS lock locally - error=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, i32, %struct.flock*, i32, i32, i32)* @nlm_record_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_record_lock(%struct.vnode* %0, i32 %1, %struct.flock* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vop_advlockasync_args, align 8
  %14 = alloca %struct.flock, align 4
  %15 = alloca %struct.proc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.flock* %2, %struct.flock** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = getelementptr inbounds %struct.vop_advlockasync_args, %struct.vop_advlockasync_args* %13, i32 0, i32 6
  store %struct.vnode* %18, %struct.vnode** %19, align 8
  %20 = getelementptr inbounds %struct.vop_advlockasync_args, %struct.vop_advlockasync_args* %13, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.vop_advlockasync_args, %struct.vop_advlockasync_args* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.vop_advlockasync_args, %struct.vop_advlockasync_args* %13, i32 0, i32 4
  store %struct.flock* %14, %struct.flock** %23, align 8
  %24 = load i32, i32* @F_REMOTE, align 4
  %25 = load i32, i32* @F_WAIT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @F_NOINTR, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.vop_advlockasync_args, %struct.vop_advlockasync_args* %13, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.vop_advlockasync_args, %struct.vop_advlockasync_args* %13, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.vop_advlockasync_args, %struct.vop_advlockasync_args* %13, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.flock*, %struct.flock** %9, align 8
  %33 = getelementptr inbounds %struct.flock, %struct.flock* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = load %struct.flock*, %struct.flock** %9, align 8
  %37 = getelementptr inbounds %struct.flock, %struct.flock* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load %struct.flock*, %struct.flock** %9, align 8
  %41 = getelementptr inbounds %struct.flock, %struct.flock* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.flock*, %struct.flock** %9, align 8
  %45 = getelementptr inbounds %struct.flock, %struct.flock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @NLM_SYSID_CLIENT, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %50, %51
  %53 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %80, %6
  %55 = load %struct.vnode*, %struct.vnode** %7, align 8
  %56 = getelementptr inbounds %struct.vnode, %struct.vnode* %55, i32 0, i32 0
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @lf_advlockasync(%struct.vop_advlockasync_args* %13, i32* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @EDEADLK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  %64 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %64, %struct.proc** %15, align 8
  %65 = load i32, i32* @SIGDEFERSTOP_OFF, align 4
  %66 = call i32 @sigdeferstop(i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load %struct.proc*, %struct.proc** %15, align 8
  %68 = call i32 @PROC_LOCK(%struct.proc* %67)
  %69 = call i32 @thread_suspend_check(i32 0)
  %70 = load %struct.proc*, %struct.proc** %15, align 8
  %71 = call i32 @PROC_UNLOCK(%struct.proc* %70)
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @sigallowstop(i32 %72)
  br label %80

74:                                               ; preds = %54
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @EINTR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  br label %81

79:                                               ; preds = %74
  br label %81

80:                                               ; preds = %62
  br label %54

81:                                               ; preds = %79, %78
  %82 = load i32, i32* %16, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @ENOENT, align 4
  %87 = icmp eq i32 %85, %86
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ true, %81 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @KASSERT(i32 %90, i8* %93)
  ret void
}

declare dso_local i32 @lf_advlockasync(%struct.vop_advlockasync_args*, i32*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @sigdeferstop(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @thread_suspend_check(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @sigallowstop(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
