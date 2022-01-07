; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_stop_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_stop_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"stopping multicast thread\0A\00", align 1
@mcast_mutex = common dso_local global i32 0, align 4
@IPOIB_MCAST_RUN = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_mcast_stop_thread(%struct.ipoib_dev_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %6 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @mutex_lock(i32* @mcast_mutex)
  %8 = load i32, i32* @IPOIB_MCAST_RUN, align 4
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 0
  %14 = call i32 @cancel_delayed_work(i32* %13)
  %15 = call i32 @mutex_unlock(i32* @mcast_mutex)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ipoib_workqueue, align 4
  %20 = call i32 @flush_workqueue(i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  ret i32 0
}

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
