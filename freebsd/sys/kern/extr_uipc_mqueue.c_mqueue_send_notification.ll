; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_send_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_send_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue = type { %struct.mqueue_notifier*, i32 }
%struct.mqueue_notifier = type { %struct.TYPE_6__, %struct.TYPE_7__, %struct.proc* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.proc = type { i32 }
%struct.thread = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIGEV_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqueue*)* @mqueue_send_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqueue_send_notification(%struct.mqueue* %0) #0 {
  %2 = alloca %struct.mqueue*, align 8
  %3 = alloca %struct.mqueue_notifier*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store %struct.mqueue* %0, %struct.mqueue** %2, align 8
  %7 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %8 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %7, i32 0, i32 1
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %12 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %11, i32 0, i32 0
  %13 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %12, align 8
  store %struct.mqueue_notifier* %13, %struct.mqueue_notifier** %3, align 8
  %14 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %3, align 8
  %15 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SIGEV_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %1
  %21 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %3, align 8
  %22 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %21, i32 0, i32 2
  %23 = load %struct.proc*, %struct.proc** %22, align 8
  store %struct.proc* %23, %struct.proc** %5, align 8
  %24 = load %struct.proc*, %struct.proc** %5, align 8
  %25 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %3, align 8
  %26 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %25, i32 0, i32 1
  %27 = call i32 @sigev_findtd(%struct.proc* %24, %struct.TYPE_7__* %26, %struct.thread** %4)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %32 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %31, i32 0, i32 0
  store %struct.mqueue_notifier* null, %struct.mqueue_notifier** %32, align 8
  br label %59

33:                                               ; preds = %20
  %34 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %3, align 8
  %35 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %34, i32 0, i32 0
  %36 = call i32 @KSI_ONQ(%struct.TYPE_6__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %3, align 8
  %40 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %39, i32 0, i32 0
  %41 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %3, align 8
  %42 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %41, i32 0, i32 1
  %43 = call i32 @ksiginfo_set_sigev(%struct.TYPE_6__* %40, %struct.TYPE_7__* %42)
  %44 = load %struct.proc*, %struct.proc** %5, align 8
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %3, align 8
  %47 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %3, align 8
  %51 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %50, i32 0, i32 0
  %52 = call i32 @tdsendsignal(%struct.proc* %44, %struct.thread* %45, i32 %49, %struct.TYPE_6__* %51)
  br label %53

53:                                               ; preds = %38, %33
  %54 = load %struct.proc*, %struct.proc** %5, align 8
  %55 = call i32 @PROC_UNLOCK(%struct.proc* %54)
  br label %56

56:                                               ; preds = %53, %1
  %57 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %58 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %57, i32 0, i32 0
  store %struct.mqueue_notifier* null, %struct.mqueue_notifier** %58, align 8
  br label %59

59:                                               ; preds = %56, %30
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @sigev_findtd(%struct.proc*, %struct.TYPE_7__*, %struct.thread**) #1

declare dso_local i32 @KSI_ONQ(%struct.TYPE_6__*) #1

declare dso_local i32 @ksiginfo_set_sigev(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @tdsendsignal(%struct.proc*, %struct.thread*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
