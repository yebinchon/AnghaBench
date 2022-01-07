; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_set_dev_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_set_dev_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ib_device = type { %struct.ib_device_attr }
%struct.ib_device_attr = type { i32 }

@IB_DEVICE_UD_IP_CSUM = common dso_local global i32 0, align 4
@IPOIB_FLAG_CSUM = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IB_DEVICE_UD_TSO = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_set_dev_features(%struct.ipoib_dev_priv* %0, %struct.ib_device* %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_device_attr*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store %struct.ib_device* %1, %struct.ib_device** %4, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %7 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %6, i32 0, i32 0
  store %struct.ib_device_attr* %7, %struct.ib_device_attr** %5, align 8
  %8 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %9 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IB_DEVICE_UD_IP_CSUM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %2
  %28 = load i32, i32* @IPOIB_FLAG_CSUM, align 4
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %29, i32 0, i32 2
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load i32, i32* @CSUM_IP, align 4
  %33 = load i32, i32* @CSUM_TCP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CSUM_UDP, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @IFCAP_HWCSUM, align 4
  %42 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %27, %2
  %49 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %50 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %66 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 %64, i32* %68, align 4
  ret i32 0
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
