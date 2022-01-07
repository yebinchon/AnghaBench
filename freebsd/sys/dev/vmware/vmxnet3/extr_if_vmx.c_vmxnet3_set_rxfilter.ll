; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_set_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_set_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.vmxnet3_driver_shared*, %struct.ifnet* }
%struct.vmxnet3_driver_shared = type { i32, i32 }
%struct.ifnet = type { i32 }

@VMXNET3_RXMODE_UCAST = common dso_local global i32 0, align 4
@VMXNET3_RXMODE_BCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@VMXNET3_RXMODE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@VMXNET3_RXMODE_ALLMULTI = common dso_local global i32 0, align 4
@vmxnet3_hash_maddr = common dso_local global i32 0, align 4
@VMXNET3_MULTICAST_MAX = common dso_local global i32 0, align 4
@VMXNET3_RXMODE_MCAST = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@VMXNET3_CMD_SET_FILTER = common dso_local global i32 0, align 4
@VMXNET3_CMD_SET_RXMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*, i32)* @vmxnet3_set_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_set_rxfilter(%struct.vmxnet3_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.vmxnet3_driver_shared*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %5, align 8
  %12 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %12, i32 0, i32 0
  %14 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %13, align 8
  store %struct.vmxnet3_driver_shared* %14, %struct.vmxnet3_driver_shared** %6, align 8
  %15 = load i32, i32* @VMXNET3_RXMODE_UCAST, align 4
  %16 = load i32, i32* @VMXNET3_RXMODE_BCAST, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IFF_PROMISC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @VMXNET3_RXMODE_PROMISC, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IFF_ALLMULTI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @VMXNET3_RXMODE_ALLMULTI, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %61

35:                                               ; preds = %26
  %36 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %37 = load i32, i32* @vmxnet3_hash_maddr, align 4
  %38 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %39 = call i32 @if_foreach_llmaddr(%struct.ifnet* %36, i32 %37, %struct.vmxnet3_softc* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @VMXNET3_MULTICAST_MAX, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  %44 = load i32, i32* @VMXNET3_RXMODE_ALLMULTI, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %55

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @VMXNET3_RXMODE_MCAST, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %6, align 8
  %60 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %31
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.vmxnet3_driver_shared*, %struct.vmxnet3_driver_shared** %6, align 8
  %64 = getelementptr inbounds %struct.vmxnet3_driver_shared, %struct.vmxnet3_driver_shared* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %66 = load i32, i32* @VMXNET3_CMD_SET_FILTER, align 4
  %67 = call i32 @vmxnet3_write_cmd(%struct.vmxnet3_softc* %65, i32 %66)
  %68 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %69 = load i32, i32* @VMXNET3_CMD_SET_RXMODE, align 4
  %70 = call i32 @vmxnet3_write_cmd(%struct.vmxnet3_softc* %68, i32 %69)
  ret void
}

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_write_cmd(%struct.vmxnet3_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
