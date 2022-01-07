; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_config_egress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_config_egress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpnae_softc = type { i64*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NAE_TX_IF_BURSTMAX_CMD = common dso_local global i32 0, align 4
@NAE_TX_DDR_ACTVLIST_CMD = common dso_local global i32 0, align 4
@NAE_DMA_TX_CREDIT_TH = common dso_local global i32 0, align 4
@NAE_TX_SCHED_MAP_CMD1 = common dso_local global i32 0, align 4
@NAE_DRR_QUANTA = common dso_local global i32 0, align 4
@ILC = common dso_local global i64 0, align 8
@NAE_TX_SCHED_MAP_CMD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_xlpnae_softc*, i32, i32, i32, i32)* @nlm_config_egress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_config_egress(%struct.nlm_xlpnae_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nlm_xlpnae_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nlm_xlpnae_softc* %0, %struct.nlm_xlpnae_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %15 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 4
  %24 = or i32 8388608, %23
  %25 = or i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %27 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NAE_TX_IF_BURSTMAX_CMD, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @nlm_write_nae_reg(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 %35, 22
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 12
  %39 = or i32 %36, %38
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, 4
  %42 = or i32 %39, %41
  %43 = or i32 %42, 1
  store i32 %43, i32* %13, align 4
  %44 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %45 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NAE_TX_DDR_ACTVLIST_CMD, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @nlm_write_nae_reg(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %51 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %58 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @config_egress_fifo_carvings(i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, %struct.TYPE_3__* %59)
  %61 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %62 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %69 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = call i32 @config_egress_fifo_credits(i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, %struct.TYPE_3__* %70)
  %72 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %73 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NAE_DMA_TX_CREDIT_TH, align 4
  %76 = call i32 @nlm_read_nae_reg(i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, 50331648
  store i32 %78, i32* %13, align 4
  %79 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %80 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NAE_DMA_TX_CREDIT_TH, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @nlm_write_nae_reg(i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %131, %5
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %134

89:                                               ; preds = %85
  %90 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %91 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @NAE_TX_SCHED_MAP_CMD1, align 4
  %94 = load i32, i32* @NAE_DRR_QUANTA, align 4
  %95 = call i32 @nlm_write_nae_reg(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = shl i32 %96, 15
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %98, %99
  %101 = shl i32 %100, 5
  %102 = or i32 %97, %101
  store i32 %102, i32* %13, align 4
  %103 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %104 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ILC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %89
  %113 = load i32, i32* %11, align 4
  %114 = shl i32 %113, 20
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %112, %89
  %118 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %119 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NAE_TX_SCHED_MAP_CMD0, align 4
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, 1
  %124 = call i32 @nlm_write_nae_reg(i32 %120, i32 %121, i32 %123)
  %125 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %6, align 8
  %126 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @NAE_TX_SCHED_MAP_CMD0, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @nlm_write_nae_reg(i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %85

134:                                              ; preds = %85
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @config_egress_fifo_carvings(i32, i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @config_egress_fifo_credits(i32, i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
