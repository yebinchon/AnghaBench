; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c__ipoib_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c__ipoib_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ipoib_dev_priv*)* @_ipoib_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ipoib_start(%struct.ifnet* %0, %struct.ipoib_dev_priv* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ipoib_dev_priv* %1, %struct.ipoib_dev_priv** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %9 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %21 = call i32 @ipoib_start_locked(%struct.ifnet* %19, %struct.ipoib_dev_priv* %20)
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  br label %25

25:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ipoib_start_locked(%struct.ifnet*, %struct.ipoib_dev_priv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
