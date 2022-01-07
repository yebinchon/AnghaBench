; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i64, %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)*, i32 }
%struct.mbuf = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RL_CURRXADDR = common dso_local global i32 0, align 4
@RL_RXBUFLEN = common dso_local global i32 0, align 4
@RL_CURRXBUF = common dso_local global i32 0, align 4
@RL_COMMAND = common dso_local global i32 0, align 4
@RL_CMD_EMPTY_RXBUF = common dso_local global i32 0, align 4
@RL_RXSTAT_UNFINISHED = common dso_local global i32 0, align 4
@RL_RXSTAT_RXOK = common dso_local global i32 0, align 4
@ETHER_MIN_LEN = common dso_local global i32 0, align 4
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@RL_ETHER_ALIGN = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rl_softc*)* @rl_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_rxeof(%struct.rl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %3, align 8
  %15 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %16 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %15, i32 0, i32 2
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %19 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %18)
  %20 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %21 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %30)
  %32 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %33 = load i32, i32* @RL_CURRXADDR, align 4
  %34 = call i32 @CSR_READ_2(%struct.rl_softc* %32, i32 %33)
  %35 = add nsw i32 %34, 16
  %36 = load i32, i32* @RL_RXBUFLEN, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %39 = load i32, i32* @RL_CURRXBUF, align 4
  %40 = call i32 @CSR_READ_2(%struct.rl_softc* %38, i32 %39)
  %41 = load i32, i32* @RL_RXBUFLEN, align 4
  %42 = srem i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load i32, i32* @RL_RXBUFLEN, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %13, align 4
  br label %56

52:                                               ; preds = %1
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %216, %212, %56
  %58 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %59 = load i32, i32* @RL_COMMAND, align 4
  %60 = call i32 @CSR_READ_1(%struct.rl_softc* %58, i32 %59)
  %61 = load i32, i32* @RL_CMD_EMPTY_RXBUF, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %232

64:                                               ; preds = %57
  %65 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %66 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32toh(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 16
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @RL_RXSTAT_UNFINISHED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %232

81:                                               ; preds = %64
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @RL_RXSTAT_RXOK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @ETHER_MIN_LEN, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ETHER_MAX_LEN, align 4
  %93 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %94 = add nsw i32 %92, %93
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90, %86, %81
  %97 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %98 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %99 = call i32 @if_inc_counter(%struct.ifnet* %97, i32 %98, i32 1)
  %100 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %107 = call i32 @rl_init_locked(%struct.rl_softc* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %2, align 4
  br label %234

109:                                              ; preds = %90
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* @ETHER_CRC_LEN, align 4
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %232

121:                                              ; preds = %109
  %122 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %123 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %127, 4
  %129 = load i32, i32* @RL_RXBUFLEN, align 4
  %130 = sext i32 %129 to i64
  %131 = urem i64 %128, %130
  %132 = getelementptr inbounds i32, i32* %125, i64 %131
  store i32* %132, i32** %6, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %135 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @RL_RXBUFLEN, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = icmp eq i32* %133, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %121
  %143 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %144 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  store i32* %146, i32** %6, align 8
  br label %147

147:                                              ; preds = %142, %121
  %148 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %149 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* @RL_RXBUFLEN, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32*, i32** %6, align 8
  %156 = ptrtoint i32* %154 to i64
  %157 = ptrtoint i32* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 4
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %189

164:                                              ; preds = %147
  %165 = load i32*, i32** %6, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @RL_ETHER_ALIGN, align 4
  %168 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %169 = call %struct.mbuf* @m_devget(i32* %165, i32 %166, i32 %167, %struct.ifnet* %168, i32* null)
  store %struct.mbuf* %169, %struct.mbuf** %4, align 8
  %170 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %171 = icmp ne %struct.mbuf* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %164
  %173 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %179 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @m_copyback(%struct.mbuf* %173, i32 %174, i32 %177, i32* %181)
  br label %183

183:                                              ; preds = %172, %164
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %8, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* @ETHER_CRC_LEN, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %11, align 4
  br label %201

189:                                              ; preds = %147
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @RL_ETHER_ALIGN, align 4
  %193 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %194 = call %struct.mbuf* @m_devget(i32* %190, i32 %191, i32 %192, %struct.ifnet* %193, i32* null)
  store %struct.mbuf* %194, %struct.mbuf** %4, align 8
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 4
  %197 = load i32, i32* @ETHER_CRC_LEN, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %11, align 4
  br label %201

201:                                              ; preds = %189, %183
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 3
  %204 = and i32 %203, -4
  store i32 %204, i32* %11, align 4
  %205 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %206 = load i32, i32* @RL_CURRXADDR, align 4
  %207 = load i32, i32* %11, align 4
  %208 = sub nsw i32 %207, 16
  %209 = call i32 @CSR_WRITE_2(%struct.rl_softc* %205, i32 %206, i32 %208)
  %210 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %211 = icmp eq %struct.mbuf* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %201
  %213 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %214 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %215 = call i32 @if_inc_counter(%struct.ifnet* %213, i32 %214, i32 1)
  br label %57

216:                                              ; preds = %201
  %217 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %218 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %219 = call i32 @if_inc_counter(%struct.ifnet* %217, i32 %218, i32 1)
  %220 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %221 = call i32 @RL_UNLOCK(%struct.rl_softc* %220)
  %222 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %223 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %222, i32 0, i32 1
  %224 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %223, align 8
  %225 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %226 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %227 = call i32 %224(%struct.ifnet* %225, %struct.mbuf* %226)
  %228 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %229 = call i32 @RL_LOCK(%struct.rl_softc* %228)
  %230 = load i32, i32* %9, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %9, align 4
  br label %57

232:                                              ; preds = %120, %80, %57
  %233 = load i32, i32* %9, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %96
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.rl_softc*, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @rl_init_locked(%struct.rl_softc*) #1

declare dso_local %struct.mbuf* @m_devget(i32*, i32, i32, %struct.ifnet*, i32*) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
