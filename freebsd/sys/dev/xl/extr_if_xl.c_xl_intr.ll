; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@XL_STATUS = common dso_local global i32 0, align 4
@XL_INTRS = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_INTR_ACK = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@XL_STAT_UP_COMPLETE = common dso_local global i32 0, align 4
@XL_STAT_DOWN_COMPLETE = common dso_local global i32 0, align 4
@XL_TYPE_905B = common dso_local global i64 0, align 8
@XL_STAT_TX_COMPLETE = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@XL_STAT_ADFAIL = common dso_local global i32 0, align 4
@XL_STAT_STATSOFLOW = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xl_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.xl_softc*
  store %struct.xl_softc* %7, %struct.xl_softc** %3, align 8
  %8 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %9 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %12 = call i32 @XL_LOCK(%struct.xl_softc* %11)
  br label %13

13:                                               ; preds = %111, %1
  %14 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %15 = load i32, i32* @XL_STATUS, align 4
  %16 = call i32 @CSR_READ_2(%struct.xl_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @XL_INTRS, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %13
  br label %112

25:                                               ; preds = %21
  %26 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %27 = load i32, i32* @XL_COMMAND, align 4
  %28 = load i32, i32* @XL_CMD_INTR_ACK, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @XL_INTRS, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  %33 = call i32 @CSR_WRITE_2(%struct.xl_softc* %26, i32 %27, i32 %32)
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %112

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @XL_STAT_UP_COMPLETE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %48 = call i64 @xl_rxeof(%struct.xl_softc* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %55, %50
  %52 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %53 = call i64 @xl_rx_resync(%struct.xl_softc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %57 = call i64 @xl_rxeof(%struct.xl_softc* %56)
  br label %51

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @XL_STAT_DOWN_COMPLETE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %67 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @XL_TYPE_905B, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %73 = call i32 @xl_txeof_90xB(%struct.xl_softc* %72)
  br label %77

74:                                               ; preds = %65
  %75 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %76 = call i32 @xl_txeof(%struct.xl_softc* %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @XL_STAT_TX_COMPLETE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %86 = call i32 @if_inc_counter(%struct.ifnet* %84, i32 %85, i32 1)
  %87 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %88 = call i32 @xl_txeoc(%struct.xl_softc* %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @XL_STAT_ADFAIL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %102 = call i32 @xl_init_locked(%struct.xl_softc* %101)
  br label %112

103:                                              ; preds = %89
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @XL_STAT_STATSOFLOW, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %110 = call i32 @xl_stats_update(%struct.xl_softc* %109)
  br label %111

111:                                              ; preds = %108, %103
  br label %13

112:                                              ; preds = %94, %40, %24
  %113 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %114 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %113, i32 0, i32 2
  %115 = call i32 @IFQ_DRV_IS_EMPTY(i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %112
  %118 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %126 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @XL_TYPE_905B, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %132 = call i32 @xl_start_90xB_locked(%struct.ifnet* %131)
  br label %136

133:                                              ; preds = %124
  %134 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %135 = call i32 @xl_start_locked(%struct.ifnet* %134)
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136, %117, %112
  %138 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %139 = call i32 @XL_UNLOCK(%struct.xl_softc* %138)
  ret void
}

declare dso_local i32 @XL_LOCK(%struct.xl_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.xl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

declare dso_local i64 @xl_rxeof(%struct.xl_softc*) #1

declare dso_local i64 @xl_rx_resync(%struct.xl_softc*) #1

declare dso_local i32 @xl_txeof_90xB(%struct.xl_softc*) #1

declare dso_local i32 @xl_txeof(%struct.xl_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @xl_txeoc(%struct.xl_softc*) #1

declare dso_local i32 @xl_init_locked(%struct.xl_softc*) #1

declare dso_local i32 @xl_stats_update(%struct.xl_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @xl_start_90xB_locked(%struct.ifnet*) #1

declare dso_local i32 @xl_start_locked(%struct.ifnet*) #1

declare dso_local i32 @XL_UNLOCK(%struct.xl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
