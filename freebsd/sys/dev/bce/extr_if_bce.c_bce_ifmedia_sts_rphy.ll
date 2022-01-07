; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_ifmedia_sts_rphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_ifmedia_sts_rphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i8* }
%struct.ifmediareq = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@BCE_LINK_STATUS = common dso_local global i32 0, align 4
@BCE_LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@BCE_LINK_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@BCE_PHY_REMOTE_PORT_FIBER_FLAG = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IFM_2500_SX = common dso_local global i32 0, align 4
@BCE_LINK_STATUS_RX_FC_ENABLED = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@BCE_LINK_STATUS_TX_FC_ENABLED = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*, %struct.ifmediareq*)* @bce_ifmedia_sts_rphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_ifmedia_sts_rphy(%struct.bce_softc* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.bce_softc*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %7, i32 0, i32 1
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %5, align 8
  %10 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %11 = call i32 @BCE_LOCK_ASSERT(%struct.bce_softc* %10)
  %12 = load i32, i32* @IFM_AVALID, align 4
  %13 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %14 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IFM_ETHER, align 4
  %16 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %17 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %19 = load i32, i32* @BCE_LINK_STATUS, align 4
  %20 = call i32 @bce_shmem_rd(%struct.bce_softc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BCE_LINK_STATUS_LINK_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @IFM_ACTIVE, align 4
  %27 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %28 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load i32, i32* @IFM_NONE, align 4
  %33 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %34 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  store i8* null, i8** %38, align 8
  br label %219

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BCE_LINK_STATUS_SPEED_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %191 [
    i32 130, label %43
    i32 131, label %54
    i32 132, label %65
    i32 133, label %76
    i32 134, label %87
    i32 135, label %114
    i32 128, label %141
    i32 129, label %166
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @IFM_10_T, align 4
  %45 = load i32, i32* @IFM_HDX, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %48 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = call i8* @IF_Mbps(i64 10)
  %52 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %197

54:                                               ; preds = %39
  %55 = load i32, i32* @IFM_10_T, align 4
  %56 = load i32, i32* @IFM_FDX, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %59 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = call i8* @IF_Mbps(i64 10)
  %63 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %197

65:                                               ; preds = %39
  %66 = load i32, i32* @IFM_100_TX, align 4
  %67 = load i32, i32* @IFM_HDX, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %70 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = call i8* @IF_Mbps(i64 100)
  %74 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %197

76:                                               ; preds = %39
  %77 = load i32, i32* @IFM_100_TX, align 4
  %78 = load i32, i32* @IFM_FDX, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %81 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = call i8* @IF_Mbps(i64 100)
  %85 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %197

87:                                               ; preds = %39
  %88 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %89 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load i32, i32* @IFM_1000_T, align 4
  %96 = load i32, i32* @IFM_HDX, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %99 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %110

102:                                              ; preds = %87
  %103 = load i32, i32* @IFM_1000_SX, align 4
  %104 = load i32, i32* @IFM_HDX, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %107 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102, %94
  %111 = call i8* @IF_Mbps(i64 1000)
  %112 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %113 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  br label %197

114:                                              ; preds = %39
  %115 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %116 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %114
  %122 = load i32, i32* @IFM_1000_T, align 4
  %123 = load i32, i32* @IFM_FDX, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %126 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %137

129:                                              ; preds = %114
  %130 = load i32, i32* @IFM_1000_SX, align 4
  %131 = load i32, i32* @IFM_FDX, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %134 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %129, %121
  %138 = call i8* @IF_Mbps(i64 1000)
  %139 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  br label %197

141:                                              ; preds = %39
  %142 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %143 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32, i32* @IFM_NONE, align 4
  %150 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %151 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %219

154:                                              ; preds = %141
  %155 = load i32, i32* @IFM_2500_SX, align 4
  %156 = load i32, i32* @IFM_HDX, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %159 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %154
  %163 = call i8* @IF_Mbps(i64 2500)
  %164 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  br label %197

166:                                              ; preds = %39
  %167 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %168 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load i32, i32* @IFM_NONE, align 4
  %175 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %176 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %219

179:                                              ; preds = %166
  %180 = load i32, i32* @IFM_2500_SX, align 4
  %181 = load i32, i32* @IFM_FDX, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %184 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %179
  %188 = call i8* @IF_Mbps(i64 2500)
  %189 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %190 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  br label %197

191:                                              ; preds = %39
  %192 = load i32, i32* @IFM_NONE, align 4
  %193 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %194 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %219

197:                                              ; preds = %187, %162, %137, %110, %76, %65, %54, %43
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @BCE_LINK_STATUS_RX_FC_ENABLED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %204 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %205 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %197
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @BCE_LINK_STATUS_TX_FC_ENABLED, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %215 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %216 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %31, %148, %173, %191, %213, %208
  ret void
}

declare dso_local i32 @BCE_LOCK_ASSERT(%struct.bce_softc*) #1

declare dso_local i32 @bce_shmem_rd(%struct.bce_softc*, i32) #1

declare dso_local i8* @IF_Mbps(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
