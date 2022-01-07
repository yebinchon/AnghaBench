; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_notifier_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_notifier_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.mqueue = type { %struct.mqueue_notifier*, i32 }
%struct.mqueue_notifier = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, %struct.mqueue*, i32)* @notifier_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notifier_remove(%struct.proc* %0, %struct.mqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.mqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mqueue_notifier*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.mqueue* %1, %struct.mqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %9 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %8, i32 0, i32 1
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.proc*, %struct.proc** %4, align 8
  %13 = call i32 @PROC_LOCK(%struct.proc* %12)
  %14 = load %struct.proc*, %struct.proc** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.mqueue_notifier* @notifier_search(%struct.proc* %14, i32 %15)
  store %struct.mqueue_notifier* %16, %struct.mqueue_notifier** %7, align 8
  %17 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %7, align 8
  %18 = icmp ne %struct.mqueue_notifier* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %21 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %20, i32 0, i32 0
  %22 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %21, align 8
  %23 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %7, align 8
  %24 = icmp eq %struct.mqueue_notifier* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.mqueue*, %struct.mqueue** %5, align 8
  %27 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %26, i32 0, i32 0
  store %struct.mqueue_notifier* null, %struct.mqueue_notifier** %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %7, align 8
  %30 = getelementptr inbounds %struct.mqueue_notifier, %struct.mqueue_notifier* %29, i32 0, i32 0
  %31 = call i32 @sigqueue_take(i32* %30)
  %32 = load %struct.proc*, %struct.proc** %4, align 8
  %33 = load %struct.mqueue_notifier*, %struct.mqueue_notifier** %7, align 8
  %34 = call i32 @notifier_delete(%struct.proc* %32, %struct.mqueue_notifier* %33)
  br label %35

35:                                               ; preds = %28, %3
  %36 = load %struct.proc*, %struct.proc** %4, align 8
  %37 = call i32 @PROC_UNLOCK(%struct.proc* %36)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.mqueue_notifier* @notifier_search(%struct.proc*, i32) #1

declare dso_local i32 @sigqueue_take(i32*) #1

declare dso_local i32 @notifier_delete(%struct.proc*, %struct.mqueue_notifier*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
