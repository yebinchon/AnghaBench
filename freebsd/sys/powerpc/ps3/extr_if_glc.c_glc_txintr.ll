; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_txintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_txintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glc_softc = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32, i32 }
%struct.glc_txsoft = type { i64, i32, i32*, i64, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@GELIC_DESCR_OWNED = common dso_local global i32 0, align 4
@txs_q = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@GELIC_CMDSTAT_CHAIN_END = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lv1_net_start_tx_dma error: %d\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glc_softc*)* @glc_txintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glc_txintr(%struct.glc_softc* %0) #0 {
  %2 = alloca %struct.glc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.glc_txsoft*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.glc_softc* %0, %struct.glc_softc** %2, align 8
  %8 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %8, i32 0, i32 13
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %18 = call i32 @bus_dmamap_sync(i32 %13, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %107, %1
  %20 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %20, i32 0, i32 2
  %22 = call %struct.glc_txsoft* @STAILQ_FIRST(i32* %21)
  store %struct.glc_txsoft* %22, %struct.glc_txsoft** %4, align 8
  %23 = icmp ne %struct.glc_txsoft* %22, null
  br i1 %23, label %24, label %116

24:                                               ; preds = %19
  %25 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %26 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %25, i32 0, i32 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %29 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GELIC_DESCR_OWNED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %116

38:                                               ; preds = %24
  %39 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %40 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %39, i32 0, i32 2
  %41 = load i32, i32* @txs_q, align 4
  %42 = call i32 @STAILQ_REMOVE_HEAD(i32* %40, i32 %41)
  %43 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %44 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %47 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bus_dmamap_unload(i32 %45, i32 %48)
  %50 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %51 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %54 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 8
  %59 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %60 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %38
  %64 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %65 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @m_freem(i32* %66)
  %68 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %69 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %68, i32 0, i32 2
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %38
  %71 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %72 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %71, i32 0, i32 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %75 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, -268435456
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %70
  %83 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %84 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %87 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @lv1_net_stop_tx_dma(i32 %85, i32 %88, i32 0)
  store i32 1, i32* %6, align 4
  %90 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %91 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %92 = call i32 @if_inc_counter(%struct.ifnet* %90, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %82, %70
  %94 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %95 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %94, i32 0, i32 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %98 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @GELIC_CMDSTAT_CHAIN_END, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  store i32 1, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %93
  %108 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %109 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %108, i32 0, i32 7
  %110 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %111 = load i32, i32* @txs_q, align 4
  %112 = call i32 @STAILQ_INSERT_TAIL(i32* %109, %struct.glc_txsoft* %110, i32 %111)
  %113 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %114 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %115 = call i32 @if_inc_counter(%struct.ifnet* %113, i32 %114, i32 1)
  store i32 1, i32* %5, align 4
  br label %19

116:                                              ; preds = %37, %19
  %117 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %118 = icmp ne %struct.glc_txsoft* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %121 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %124 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %128

125:                                              ; preds = %116
  %126 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %127 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %126, i32 0, i32 0
  store i32 -1, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %133 = icmp ne %struct.glc_txsoft* %132, null
  br i1 %133, label %134, label %166

134:                                              ; preds = %131, %128
  %135 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %136 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %139 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %142 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %145 = icmp eq %struct.glc_txsoft* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %151

147:                                              ; preds = %134
  %148 = load %struct.glc_txsoft*, %struct.glc_txsoft** %4, align 8
  %149 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  br label %151

151:                                              ; preds = %147, %146
  %152 = phi i32 [ 0, %146 ], [ %150, %147 ]
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = add i64 %143, %154
  %156 = call i32 @lv1_net_start_tx_dma(i32 %137, i32 %140, i64 %155, i32 0)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %161 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @device_printf(i32 %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %159, %151
  br label %166

166:                                              ; preds = %165, %131
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %199

169:                                              ; preds = %166
  %170 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %177 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %176, i32 0, i32 2
  %178 = call i64 @STAILQ_EMPTY(i32* %177)
  %179 = icmp ne i64 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 0, i32 5
  %182 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %183 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %185 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %169
  %191 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %192 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %191, i32 0, i32 1
  %193 = call i32 @IFQ_DRV_IS_EMPTY(i32* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %197 = call i32 @glc_start_locked(%struct.ifnet* %196)
  br label %198

198:                                              ; preds = %195, %190, %169
  br label %199

199:                                              ; preds = %198, %166
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local %struct.glc_txsoft* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @lv1_net_stop_tx_dma(i32, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.glc_txsoft*, i32) #1

declare dso_local i32 @lv1_net_start_tx_dma(i32, i32, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @glc_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
