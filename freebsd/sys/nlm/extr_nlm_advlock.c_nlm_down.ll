; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_feedback_arg = type { i32, %struct.nfsmount* }
%struct.nfsmount = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.thread = type { i32 }

@NFSSTA_LOCKTIMEO = common dso_local global i32 0, align 4
@VQ_NOTRESPLOCK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_feedback_arg*, %struct.thread*, i8*, i32)* @nlm_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_down(%struct.nlm_feedback_arg* %0, %struct.thread* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nlm_feedback_arg*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsmount*, align 8
  store %struct.nlm_feedback_arg* %0, %struct.nlm_feedback_arg** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nlm_feedback_arg*, %struct.nlm_feedback_arg** %5, align 8
  %11 = getelementptr inbounds %struct.nlm_feedback_arg, %struct.nlm_feedback_arg* %10, i32 0, i32 1
  %12 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  store %struct.nfsmount* %12, %struct.nfsmount** %9, align 8
  %13 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %14 = icmp eq %struct.nfsmount* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %60

16:                                               ; preds = %4
  %17 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %18 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %17, i32 0, i32 2
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %21 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NFSSTA_LOCKTIMEO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @NFSSTA_LOCKTIMEO, align 4
  %28 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %29 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %33 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %32, i32 0, i32 2
  %34 = call i32 @mtx_unlock(i32* %33)
  %35 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* @VQ_NOTRESPLOCK, align 4
  %41 = call i32 @vfs_event_signal(i32* %39, i32 %40, i32 0)
  br label %46

42:                                               ; preds = %16
  %43 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %44 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %43, i32 0, i32 2
  %45 = call i32 @mtx_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %26
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.nlm_feedback_arg*, %struct.nlm_feedback_arg** %5, align 8
  %49 = getelementptr inbounds %struct.nlm_feedback_arg, %struct.nlm_feedback_arg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.thread*, %struct.thread** %6, align 8
  %51 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %52 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @nlm_msg(%struct.thread* %50, i32 %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vfs_event_signal(i32*, i32, i32) #1

declare dso_local i32 @nlm_msg(%struct.thread*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
