; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_multicast_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_multicast_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i32**, i32 }

@ETH_DP_SEL_RSEL_VLAN_DA_ = common dso_local global i32 0, align 4
@ETH_DP_SEL_VHF_VLAN_LEN = common dso_local global i32 0, align 4
@ETH_DP_SEL_VHF_HASH_LEN = common dso_local global i32 0, align 4
@MUGE_NUM_PFILTER_ADDRS_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.muge_softc*)* @muge_multicast_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @muge_multicast_write(%struct.muge_softc* %0) #0 {
  %2 = alloca %struct.muge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.muge_softc* %0, %struct.muge_softc** %2, align 8
  %5 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %6 = load i32, i32* @ETH_DP_SEL_RSEL_VLAN_DA_, align 4
  %7 = load i32, i32* @ETH_DP_SEL_VHF_VLAN_LEN, align 4
  %8 = load i32, i32* @ETH_DP_SEL_VHF_HASH_LEN, align 4
  %9 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @lan78xx_dataport_write(%struct.muge_softc* %5, i32 %6, i32 %7, i32 %8, i32 %11)
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %48, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MUGE_NUM_PFILTER_ADDRS_, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @PFILTER_HI(i32 %19)
  %21 = call i32 @lan78xx_write_reg(%struct.muge_softc* %18, i32 %20, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @PFILTER_LO(i32 %23)
  %25 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %26 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lan78xx_write_reg(%struct.muge_softc* %22, i32 %24, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @PFILTER_HI(i32 %36)
  %38 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lan78xx_write_reg(%struct.muge_softc* %35, i32 %37, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %17
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %13

51:                                               ; preds = %13
  ret void
}

declare dso_local i32 @lan78xx_dataport_write(%struct.muge_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

declare dso_local i32 @PFILTER_HI(i32) #1

declare dso_local i32 @PFILTER_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
