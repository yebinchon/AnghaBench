; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mmc_data*, i32 }
%struct.mmc_data = type { i32 }

@JZ_MSC_IFLG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Spurious interrupt - no active request, rint: 0x%08X\0A\00", align 1
@JZ_MSC_INT_ERR_BITS = common dso_local global i32 0, align 4
@JZ_INT_TIMEOUT_RES = common dso_local global i32 0, align 4
@JZ_INT_TIMEOUT_READ = common dso_local global i32 0, align 4
@MMC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@MMC_ERR_FAILED = common dso_local global i32 0, align 4
@JZ_INT_END_CMD_RES = common dso_local global i32 0, align 4
@JZ_INT_DMAEND = common dso_local global i32 0, align 4
@JZ_INT_TXFIFO_WR_REQ = common dso_local global i32 0, align 4
@JZ_INT_RXFIFO_RD_REQ = common dso_local global i32 0, align 4
@JZ_MSC_DMAC = common dso_local global i32 0, align 4
@JZ_MSC_DMACMD = common dso_local global i32 0, align 4
@JZ_MSC_DMADA = common dso_local global i32 0, align 4
@JZ_MSC_DMALEN = common dso_local global i32 0, align 4
@JZ_MSC_DMANDA = common dso_local global i32 0, align 4
@JZ_MSC_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @jz4780_mmc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_mmc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jz4780_mmc_softc*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.jz4780_mmc_softc*
  store %struct.jz4780_mmc_softc* %7, %struct.jz4780_mmc_softc** %3, align 8
  %8 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %9 = call i32 @JZ_MMC_LOCK(%struct.jz4780_mmc_softc* %8)
  %10 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %11 = load i32, i32* @JZ_MSC_IFLG, align 4
  %12 = call i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %136

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @JZ_MSC_INT_ERR_BITS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @JZ_INT_TIMEOUT_RES, align 4
  %31 = load i32, i32* @JZ_INT_TIMEOUT_READ, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @MMC_ERR_TIMEOUT, align 4
  %37 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %36, i32* %42, align 8
  br label %51

43:                                               ; preds = %28
  %44 = load i32, i32* @MMC_ERR_FAILED, align 4
  %45 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 8
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %53 = call i32 @jz4780_mmc_req_done(%struct.jz4780_mmc_softc* %52)
  br label %136

54:                                               ; preds = %23
  %55 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %56 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.mmc_data*, %struct.mmc_data** %60, align 8
  store %struct.mmc_data* %61, %struct.mmc_data** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @JZ_INT_END_CMD_RES, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %54
  %67 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %68 = call i32 @jz4780_mmc_read_response(%struct.jz4780_mmc_softc* %67)
  %69 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %75 = call i32 @jz4780_mmc_start_dma(%struct.jz4780_mmc_softc* %74)
  br label %76

76:                                               ; preds = %73, %66
  br label %77

77:                                               ; preds = %76, %54
  %78 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %79 = icmp ne %struct.mmc_data* %78, null
  br i1 %79, label %80, label %115

80:                                               ; preds = %77
  %81 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %82 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @JZ_INT_DMAEND, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %92 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 2
  %95 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %96 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %114

97:                                               ; preds = %85, %80
  %98 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %99 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @JZ_INT_TXFIFO_WR_REQ, align 4
  %105 = load i32, i32* @JZ_INT_RXFIFO_RD_REQ, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %111 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %112 = call i32 @jz4780_mmc_pio_transfer(%struct.jz4780_mmc_softc* %110, %struct.mmc_data* %111)
  br label %113

113:                                              ; preds = %109, %102, %97
  br label %114

114:                                              ; preds = %113, %90
  br label %115

115:                                              ; preds = %114, %77
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %118 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %122 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %125 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %123, %126
  %128 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %129 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %115
  %133 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %134 = call i32 @jz4780_mmc_req_ok(%struct.jz4780_mmc_softc* %133)
  br label %135

135:                                              ; preds = %132, %115
  br label %136

136:                                              ; preds = %135, %51, %17
  %137 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %138 = load i32, i32* @JZ_MSC_IFLG, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %137, i32 %138, i32 %139)
  %141 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %142 = call i32 @JZ_MMC_UNLOCK(%struct.jz4780_mmc_softc* %141)
  ret void
}

declare dso_local i32 @JZ_MMC_LOCK(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @jz4780_mmc_req_done(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @jz4780_mmc_read_response(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @jz4780_mmc_start_dma(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @jz4780_mmc_pio_transfer(%struct.jz4780_mmc_softc*, %struct.mmc_data*) #1

declare dso_local i32 @jz4780_mmc_req_ok(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc*, i32, i32) #1

declare dso_local i32 @JZ_MMC_UNLOCK(%struct.jz4780_mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
