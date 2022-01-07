; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_drain_tx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_drain_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*)* @drain_tx_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_tx_cq(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  %4 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %4, i32 0, i32 2
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  br label %10

10:                                               ; preds = %14, %1
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %12 = call i64 @ipoib_poll_tx(%struct.ipoib_dev_priv* %11, i32 1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %10

15:                                               ; preds = %10
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %23, i32 0, i32 1
  %25 = load i64, i64* @jiffies, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @mod_timer(i32* %24, i64 %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ipoib_poll_tx(%struct.ipoib_dev_priv*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
