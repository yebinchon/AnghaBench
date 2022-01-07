; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_init_rxdesc_ring32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_init_rxdesc_ring32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }

@BWI_TXRX32_RINGINFO_ADDR_MASK = common dso_local global i32 0, align 4
@BWI_TXRX32_RINGINFO_FUNC_MASK = common dso_local global i32 0, align 4
@BWI_TXRX32_RINGINFO_FUNC_TXRX = common dso_local global i32 0, align 4
@BWI_RX32_RINGINFO = common dso_local global i32 0, align 4
@BWI_RX32_CTRL_HDRSZ_MASK = common dso_local global i32 0, align 4
@BWI_TXRX32_CTRL_ADDRHI_MASK = common dso_local global i32 0, align 4
@BWI_TXRX32_CTRL_ENABLE = common dso_local global i32 0, align 4
@BWI_RX32_CTRL = common dso_local global i32 0, align 4
@BWI_RX32_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32, i32, i32, i32)* @bwi_init_rxdesc_ring32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_init_rxdesc_ring32(%struct.bwi_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bwi_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BWI_TXRX32_RINGINFO_ADDR_MASK, align 4
  %16 = call i32 @__SHIFTOUT(i32 %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BWI_TXRX32_RINGINFO_FUNC_MASK, align 4
  %19 = call i32 @__SHIFTOUT(i32 %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @BWI_TXRX32_RINGINFO_ADDR_MASK, align 4
  %22 = call i32 @__SHIFTIN(i32 %20, i32 %21)
  %23 = load i32, i32* @BWI_TXRX32_RINGINFO_FUNC_TXRX, align 4
  %24 = load i32, i32* @BWI_TXRX32_RINGINFO_FUNC_MASK, align 4
  %25 = call i32 @__SHIFTIN(i32 %23, i32 %24)
  %26 = or i32 %22, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BWI_RX32_RINGINFO, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %27, i32 %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @BWI_RX32_CTRL_HDRSZ_MASK, align 4
  %35 = call i32 @__SHIFTIN(i32 %33, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @BWI_TXRX32_CTRL_ADDRHI_MASK, align 4
  %38 = call i32 @__SHIFTIN(i32 %36, i32 %37)
  %39 = or i32 %35, %38
  %40 = load i32, i32* @BWI_TXRX32_CTRL_ENABLE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @BWI_RX32_CTRL, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %42, i32 %45, i32 %46)
  %48 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BWI_RX32_INDEX, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %48, i32 %51, i32 %56)
  ret void
}

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
