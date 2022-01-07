; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_client_recover_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_client_recover_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.flock = type { i32 }
%struct.nlm_recovery_context = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@ERESTART = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@F_REMOTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.flock*, i8*)* @nlm_client_recover_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_client_recover_lock(%struct.vnode* %0, %struct.flock* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.flock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nlm_recovery_context*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.flock* %1, %struct.flock** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.nlm_recovery_context*
  store %struct.nlm_recovery_context* %14, %struct.nlm_recovery_context** %8, align 8
  %15 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %15, %struct.thread** %9, align 8
  %16 = load %struct.nlm_recovery_context*, %struct.nlm_recovery_context** %8, align 8
  %17 = getelementptr inbounds %struct.nlm_recovery_context, %struct.nlm_recovery_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nlm_host_get_state(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.nlm_recovery_context*, %struct.nlm_recovery_context** %8, align 8
  %21 = getelementptr inbounds %struct.nlm_recovery_context, %struct.nlm_recovery_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ERESTART, align 4
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %3
  %28 = load %struct.vnode*, %struct.vnode** %5, align 8
  %29 = load i32, i32* @LK_SHARED, align 4
  %30 = call i32 @vn_lock(%struct.vnode* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load %struct.thread*, %struct.thread** %9, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load %struct.ucred*, %struct.ucred** %37, align 8
  store %struct.ucred* %38, %struct.ucred** %10, align 8
  %39 = load %struct.thread*, %struct.thread** %9, align 8
  %40 = load %struct.flock*, %struct.flock** %6, align 8
  %41 = call i32 @nlm_set_creds_for_lock(%struct.thread* %39, %struct.flock* %40)
  %42 = load %struct.vnode*, %struct.vnode** %5, align 8
  %43 = load i32, i32* @F_SETLK, align 4
  %44 = load %struct.flock*, %struct.flock** %6, align 8
  %45 = load i32, i32* @F_REMOTE, align 4
  %46 = load i32, i32* @TRUE, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @nlm_advlock_internal(%struct.vnode* %42, i32* null, i32 %43, %struct.flock* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.thread*, %struct.thread** %9, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load %struct.ucred*, %struct.ucred** %50, align 8
  %52 = call i32 @crfree(%struct.ucred* %51)
  %53 = load %struct.ucred*, %struct.ucred** %10, align 8
  %54 = load %struct.thread*, %struct.thread** %9, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  store %struct.ucred* %53, %struct.ucred** %55, align 8
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %35, %33, %25
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @nlm_host_get_state(i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @nlm_set_creds_for_lock(%struct.thread*, %struct.flock*) #1

declare dso_local i32 @nlm_advlock_internal(%struct.vnode*, i32*, i32, %struct.flock*, i32, i32, i32) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
