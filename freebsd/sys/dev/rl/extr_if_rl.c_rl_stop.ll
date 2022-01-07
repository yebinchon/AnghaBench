; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { %struct.TYPE_2__, i32, i32, i32, i64, %struct.ifnet* }
%struct.TYPE_2__ = type { i32**, i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@RL_FLAG_LINK = common dso_local global i32 0, align 4
@RL_COMMAND = common dso_local global i32 0, align 4
@RL_IMR = common dso_local global i32 0, align 4
@RL_TIMEOUT = common dso_local global i32 0, align 4
@RL_CMD_RX_ENB = common dso_local global i32 0, align 4
@RL_CMD_TX_ENB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to stop Tx/Rx MAC\0A\00", align 1
@RL_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RL_TXADDR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @rl_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_stop(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %5 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %5, i32 0, i32 5
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %4, align 8
  %8 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %9 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %8)
  %10 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %13 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %12, i32 0, i32 3
  %14 = call i32 @callout_stop(i32* %13)
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @RL_FLAG_LINK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %30 = load i32, i32* @RL_COMMAND, align 4
  %31 = call i32 @CSR_WRITE_1(%struct.rl_softc* %29, i32 %30, i32 0)
  %32 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %33 = load i32, i32* @RL_IMR, align 4
  %34 = call i32 @CSR_WRITE_2(%struct.rl_softc* %32, i32 %33, i32 0)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %51, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @RL_TIMEOUT, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = call i32 @DELAY(i32 10)
  %41 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %42 = load i32, i32* @RL_COMMAND, align 4
  %43 = call i32 @CSR_READ_1(%struct.rl_softc* %41, i32 %42)
  %44 = load i32, i32* @RL_CMD_RX_ENB, align 4
  %45 = load i32, i32* @RL_CMD_TX_ENB, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %35

54:                                               ; preds = %49, %35
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @RL_TIMEOUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %60 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %54
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %130, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @RL_TX_LIST_CNT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %64
  %69 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %70 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %129

78:                                               ; preds = %68
  %79 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %80 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %84 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %92 = call i32 @bus_dmamap_sync(i32 %82, i32 %90, i32 %91)
  %93 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %94 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %98 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bus_dmamap_unload(i32 %96, i32 %104)
  %106 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %107 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @m_freem(i32* %113)
  %115 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %116 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* null, i32** %121, align 8
  %122 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %123 = load i64, i64* @RL_TXADDR0, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = add i64 %123, %126
  %128 = call i32 @CSR_WRITE_4(%struct.rl_softc* %122, i64 %127, i32 0)
  br label %129

129:                                              ; preds = %78, %68
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %64

133:                                              ; preds = %64
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
