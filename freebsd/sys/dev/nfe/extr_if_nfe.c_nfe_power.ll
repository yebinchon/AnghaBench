; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, i64 }

@NFE_PWR_MGMT = common dso_local global i32 0, align 4
@NFE_RXTX_CTL = common dso_local global i32 0, align 4
@NFE_RXTX_RESET = common dso_local global i32 0, align 4
@NFE_RXTX_BIT2 = common dso_local global i32 0, align 4
@NFE_MAC_RESET = common dso_local global i32 0, align 4
@NFE_MAC_RESET_MAGIC = common dso_local global i32 0, align 4
@NFE_PWR2_CTL = common dso_local global i32 0, align 4
@NFE_PWR2_WAKEUP_MASK = common dso_local global i32 0, align 4
@PCI_PRODUCT_NVIDIA_NFORCE430_LAN1 = common dso_local global i64 0, align 8
@PCI_PRODUCT_NVIDIA_NFORCE430_LAN2 = common dso_local global i64 0, align 8
@NFE_PWR2_REVA3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*)* @nfe_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_power(%struct.nfe_softc* %0) #0 {
  %2 = alloca %struct.nfe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %2, align 8
  %4 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @NFE_PWR_MGMT, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %13 = load i32, i32* @NFE_RXTX_CTL, align 4
  %14 = load i32, i32* @NFE_RXTX_RESET, align 4
  %15 = load i32, i32* @NFE_RXTX_BIT2, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @NFE_WRITE(%struct.nfe_softc* %12, i32 %13, i32 %16)
  %18 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %19 = load i32, i32* @NFE_MAC_RESET, align 4
  %20 = load i32, i32* @NFE_MAC_RESET_MAGIC, align 4
  %21 = call i32 @NFE_WRITE(%struct.nfe_softc* %18, i32 %19, i32 %20)
  %22 = call i32 @DELAY(i32 100)
  %23 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %24 = load i32, i32* @NFE_MAC_RESET, align 4
  %25 = call i32 @NFE_WRITE(%struct.nfe_softc* %23, i32 %24, i32 0)
  %26 = call i32 @DELAY(i32 100)
  %27 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %28 = load i32, i32* @NFE_RXTX_CTL, align 4
  %29 = load i32, i32* @NFE_RXTX_BIT2, align 4
  %30 = call i32 @NFE_WRITE(%struct.nfe_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %32 = load i32, i32* @NFE_PWR2_CTL, align 4
  %33 = call i32 @NFE_READ(%struct.nfe_softc* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @NFE_PWR2_WAKEUP_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %39 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 163
  br i1 %41, label %42, label %58

42:                                               ; preds = %11
  %43 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %44 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCI_PRODUCT_NVIDIA_NFORCE430_LAN1, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %50 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI_PRODUCT_NVIDIA_NFORCE430_LAN2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %42
  %55 = load i32, i32* @NFE_PWR2_REVA3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %48, %11
  %59 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %60 = load i32, i32* @NFE_PWR2_CTL, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @NFE_WRITE(%struct.nfe_softc* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %10
  ret void
}

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
