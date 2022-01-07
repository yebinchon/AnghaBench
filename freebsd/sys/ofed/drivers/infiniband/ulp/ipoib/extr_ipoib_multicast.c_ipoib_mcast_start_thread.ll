; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_start_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"starting multicast thread flags 0x%lX\0A\00", align 1
@mcast_mutex = common dso_local global i32 0, align 4
@IPOIB_MCAST_RUN = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_mcast_start_thread(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  %3 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %4 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @mutex_lock(i32* @mcast_mutex)
  %9 = load i32, i32* @IPOIB_MCAST_RUN, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 1
  %12 = call i32 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ipoib_workqueue, align 4
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 0
  %18 = call i32 @queue_delayed_work(i32 %15, i32* %17, i32 0)
  br label %19

19:                                               ; preds = %14, %1
  %20 = call i32 @mutex_unlock(i32* @mcast_mutex)
  ret i32 0
}

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
