; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_sethwcsum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_sethwcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i32, i32 }
%struct.ifnet = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@ETH_RFE_CTL_IGMP_COE_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_ICMP_COE_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_TCPUDP_COE_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_IP_COE_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_VLAN_FILTER_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to write ETH_RFE_CTL (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.muge_softc*)* @muge_sethwcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @muge_sethwcsum(%struct.muge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.muge_softc* %0, %struct.muge_softc** %3, align 8
  %6 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %6, i32 0, i32 1
  %8 = call %struct.ifnet* @uether_getifp(i32* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = icmp ne %struct.ifnet* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @MUGE_LOCK_ASSERT(%struct.muge_softc* %15, i32 %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFCAP_RXCSUM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = load i32, i32* @ETH_RFE_CTL_IGMP_COE_, align 4
  %26 = load i32, i32* @ETH_RFE_CTL_ICMP_COE_, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %29 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @ETH_RFE_CTL_TCPUDP_COE_, align 4
  %33 = load i32, i32* @ETH_RFE_CTL_IP_COE_, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %56

39:                                               ; preds = %14
  %40 = load i32, i32* @ETH_RFE_CTL_IGMP_COE_, align 4
  %41 = load i32, i32* @ETH_RFE_CTL_ICMP_COE_, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @ETH_RFE_CTL_TCPUDP_COE_, align 4
  %49 = load i32, i32* @ETH_RFE_CTL_IP_COE_, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %53 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %39, %24
  %57 = load i32, i32* @ETH_RFE_CTL_VLAN_FILTER_, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %60 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %64 = load i32, i32* @ETH_RFE_CTL, align 4
  %65 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %66 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @lan78xx_write_reg(%struct.muge_softc* %63, i32 %64, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @muge_warn_printf(%struct.muge_softc* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %71, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @MUGE_LOCK_ASSERT(%struct.muge_softc*, i32) #1

declare dso_local i32 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

declare dso_local i32 @muge_warn_printf(%struct.muge_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
