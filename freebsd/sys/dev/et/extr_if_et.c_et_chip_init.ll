; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_chip_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@ET_MEM_RXSIZE_DEFAULT = common dso_local global i32 0, align 4
@ET_RXMAC_CUT_THRU_FRMLEN = common dso_local global i32 0, align 4
@ET_MEM_SIZE = common dso_local global i32 0, align 4
@ET_MEM_TXSIZE_EX = common dso_local global i64 0, align 8
@ET_MEM_UNIT = common dso_local global i32 0, align 4
@ET_RXQUEUE_START = common dso_local global i32 0, align 4
@ET_QUEUE_ADDR_START = common dso_local global i64 0, align 8
@ET_RXQUEUE_END = common dso_local global i32 0, align 4
@ET_TXQUEUE_START = common dso_local global i32 0, align 4
@ET_TXQUEUE_END = common dso_local global i32 0, align 4
@ET_QUEUE_ADDR_END = common dso_local global i64 0, align 8
@ET_LOOPBACK = common dso_local global i32 0, align 4
@ET_FLAG_MSI = common dso_local global i32 0, align 4
@ET_MSI_CFG = common dso_local global i32 0, align 4
@ET_TIMER = common dso_local global i32 0, align 4
@ET_MMC_CTRL = common dso_local global i32 0, align 4
@ET_MMC_CTRL_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*)* @et_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_chip_init(%struct.et_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %3, align 8
  %9 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %10 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ET_FRAMELEN(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 2048
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ET_MEM_RXSIZE_DEFAULT, align 4
  store i32 %19, i32* %8, align 4
  br label %37

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ET_RXMAC_CUT_THRU_FRMLEN, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ET_MEM_SIZE, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %8, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load i32, i32* @ET_MEM_SIZE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @ET_MEM_TXSIZE_EX, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* @ET_MEM_UNIT, align 4
  %34 = call i32 @roundup(i64 %32, i32 %33)
  %35 = sub nsw i32 %28, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %27, %24
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @ET_QUEUE_ADDR(i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %41 = load i32, i32* @ET_RXQUEUE_START, align 4
  %42 = load i64, i64* @ET_QUEUE_ADDR_START, align 8
  %43 = call i32 @CSR_WRITE_4(%struct.et_softc* %40, i32 %41, i64 %42)
  %44 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %45 = load i32, i32* @ET_RXQUEUE_END, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @CSR_WRITE_4(%struct.et_softc* %44, i32 %45, i64 %46)
  %48 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %49 = load i32, i32* @ET_TXQUEUE_START, align 4
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @CSR_WRITE_4(%struct.et_softc* %48, i32 %49, i64 %51)
  %53 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %54 = load i32, i32* @ET_TXQUEUE_END, align 4
  %55 = load i64, i64* @ET_QUEUE_ADDR_END, align 8
  %56 = call i32 @CSR_WRITE_4(%struct.et_softc* %53, i32 %54, i64 %55)
  %57 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %58 = load i32, i32* @ET_LOOPBACK, align 4
  %59 = call i32 @CSR_WRITE_4(%struct.et_softc* %57, i32 %58, i64 0)
  %60 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %61 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ET_FLAG_MSI, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %37
  %67 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %68 = load i32, i32* @ET_MSI_CFG, align 4
  %69 = call i32 @CSR_WRITE_4(%struct.et_softc* %67, i32 %68, i64 0)
  br label %70

70:                                               ; preds = %66, %37
  %71 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %72 = load i32, i32* @ET_TIMER, align 4
  %73 = call i32 @CSR_WRITE_4(%struct.et_softc* %71, i32 %72, i64 0)
  %74 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %75 = call i32 @et_init_mac(%struct.et_softc* %74)
  %76 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %77 = load i32, i32* @ET_MMC_CTRL, align 4
  %78 = load i64, i64* @ET_MMC_CTRL_ENABLE, align 8
  %79 = call i32 @CSR_WRITE_4(%struct.et_softc* %76, i32 %77, i64 %78)
  %80 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %81 = call i32 @et_init_rxmac(%struct.et_softc* %80)
  %82 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %83 = call i32 @et_init_txmac(%struct.et_softc* %82)
  %84 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %85 = call i32 @et_init_rxdma(%struct.et_softc* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %70
  %91 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %92 = call i32 @et_init_txdma(%struct.et_softc* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %95, %88
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ET_FRAMELEN(i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i64 @ET_QUEUE_ADDR(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i64) #1

declare dso_local i32 @et_init_mac(%struct.et_softc*) #1

declare dso_local i32 @et_init_rxmac(%struct.et_softc*) #1

declare dso_local i32 @et_init_txmac(%struct.et_softc*) #1

declare dso_local i32 @et_init_rxdma(%struct.et_softc*) #1

declare dso_local i32 @et_init_txdma(%struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
