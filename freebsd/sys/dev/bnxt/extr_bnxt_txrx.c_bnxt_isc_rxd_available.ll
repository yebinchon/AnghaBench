; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_rxd_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_rxd_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.bnxt_cp_ring* }
%struct.bnxt_cp_ring = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rx_pkt_cmpl = type { i32 }
%struct.rx_tpa_end_cmpl = type { i32 }
%struct.cmpl_base = type { i32 }

@CMPL_BASE_TYPE_MASK = common dso_local global i64 0, align 8
@RX_PKT_CMPL_AGG_BUFS_MASK = common dso_local global i32 0, align 4
@RX_PKT_CMPL_AGG_BUFS_SFT = common dso_local global i32 0, align 4
@RX_TPA_END_CMPL_AGG_BUFS_MASK = common dso_local global i32 0, align 4
@RX_TPA_END_CMPL_AGG_BUFS_SFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unhandled completion type %d on RXQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32)* @bnxt_isc_rxd_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_isc_rxd_available(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_softc*, align 8
  %10 = alloca %struct.bnxt_cp_ring*, align 8
  %11 = alloca %struct.rx_pkt_cmpl*, align 8
  %12 = alloca %struct.rx_tpa_end_cmpl*, align 8
  %13 = alloca %struct.cmpl_base*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.bnxt_softc*
  store %struct.bnxt_softc* %21, %struct.bnxt_softc** %9, align 8
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %9, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 1
  %24 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %24, i64 %25
  store %struct.bnxt_cp_ring* %26, %struct.bnxt_cp_ring** %10, align 8
  %27 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %28 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.cmpl_base*
  store %struct.cmpl_base* %31, %struct.cmpl_base** %13, align 8
  store i32 0, i32* %14, align 4
  %32 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %33 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %36 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %227, %4
  %39 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %40 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %39, i32 0, i32 2
  %41 = load i64, i64* %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_2__* %40, i64 %41, i32 %42)
  %44 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %44, i64 %45)
  %47 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %47, i64 %48
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @CMP_VALID(%struct.cmpl_base* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  br label %229

54:                                               ; preds = %38
  %55 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %55, i64 %56
  %58 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le16toh(i32 %59)
  %61 = load i64, i64* @CMPL_BASE_TYPE_MASK, align 8
  %62 = and i64 %60, %61
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %19, align 8
  switch i64 %63, label %194 [
    i64 130, label %64
    i64 129, label %120
    i64 128, label %176
    i64 131, label %193
  ]

64:                                               ; preds = %54
  %65 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %65, i64 %66
  %68 = bitcast %struct.cmpl_base* %67 to i8*
  %69 = bitcast i8* %68 to %struct.rx_pkt_cmpl*
  store %struct.rx_pkt_cmpl* %69, %struct.rx_pkt_cmpl** %11, align 8
  %70 = load %struct.rx_pkt_cmpl*, %struct.rx_pkt_cmpl** %11, align 8
  %71 = getelementptr inbounds %struct.rx_pkt_cmpl, %struct.rx_pkt_cmpl* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RX_PKT_CMPL_AGG_BUFS_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @RX_PKT_CMPL_AGG_BUFS_SFT, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %17, align 4
  %77 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %78 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %77, i32 0, i32 2
  %79 = load i64, i64* %15, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_2__* %78, i64 %79, i32 %80)
  %82 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %82, i64 %83)
  %85 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %86 = load i64, i64* %15, align 8
  %87 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %85, i64 %86
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @CMP_VALID(%struct.cmpl_base* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %64
  br label %229

92:                                               ; preds = %64
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %114, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %99 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %98, i32 0, i32 2
  %100 = load i64, i64* %15, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_2__* %99, i64 %100, i32 %101)
  %103 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %103, i64 %104)
  %106 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %106, i64 %107
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @CMP_VALID(%struct.cmpl_base* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %97
  br label %229

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %93

117:                                              ; preds = %93
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %222

120:                                              ; preds = %54
  %121 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %122 = load i64, i64* %15, align 8
  %123 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %121, i64 %122
  %124 = bitcast %struct.cmpl_base* %123 to i8*
  %125 = bitcast i8* %124 to %struct.rx_tpa_end_cmpl*
  store %struct.rx_tpa_end_cmpl* %125, %struct.rx_tpa_end_cmpl** %12, align 8
  %126 = load %struct.rx_tpa_end_cmpl*, %struct.rx_tpa_end_cmpl** %12, align 8
  %127 = getelementptr inbounds %struct.rx_tpa_end_cmpl, %struct.rx_tpa_end_cmpl* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @RX_TPA_END_CMPL_AGG_BUFS_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @RX_TPA_END_CMPL_AGG_BUFS_SFT, align 4
  %132 = ashr i32 %130, %131
  store i32 %132, i32* %17, align 4
  %133 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %134 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %133, i32 0, i32 2
  %135 = load i64, i64* %15, align 8
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_2__* %134, i64 %135, i32 %136)
  %138 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %139 = load i64, i64* %15, align 8
  %140 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %138, i64 %139)
  %141 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %142 = load i64, i64* %15, align 8
  %143 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %141, i64 %142
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @CMP_VALID(%struct.cmpl_base* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %120
  br label %229

148:                                              ; preds = %120
  store i32 0, i32* %18, align 4
  br label %149

149:                                              ; preds = %170, %148
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %149
  %154 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %155 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %154, i32 0, i32 2
  %156 = load i64, i64* %15, align 8
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_2__* %155, i64 %156, i32 %157)
  %159 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %160 = load i64, i64* %15, align 8
  %161 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %159, i64 %160)
  %162 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %163 = load i64, i64* %15, align 8
  %164 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %162, i64 %163
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @CMP_VALID(%struct.cmpl_base* %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %153
  br label %229

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  br label %149

173:                                              ; preds = %149
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %222

176:                                              ; preds = %54
  %177 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %178 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %177, i32 0, i32 2
  %179 = load i64, i64* %15, align 8
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_2__* %178, i64 %179, i32 %180)
  %182 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %183 = load i64, i64* %15, align 8
  %184 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %182, i64 %183)
  %185 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %186 = load i64, i64* %15, align 8
  %187 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %185, i64 %186
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @CMP_VALID(%struct.cmpl_base* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %176
  br label %229

192:                                              ; preds = %176
  br label %222

193:                                              ; preds = %54
  br label %222

194:                                              ; preds = %54
  %195 = load %struct.bnxt_softc*, %struct.bnxt_softc** %9, align 8
  %196 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* %19, align 8
  %199 = load i64, i64* %6, align 8
  %200 = call i32 @device_printf(i32 %197, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %198, i64 %199)
  %201 = load i64, i64* %19, align 8
  %202 = and i64 %201, 1
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %194
  %205 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %206 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %205, i32 0, i32 2
  %207 = load i64, i64* %15, align 8
  %208 = load i32, i32* %16, align 4
  %209 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_2__* %206, i64 %207, i32 %208)
  %210 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %10, align 8
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %210, i64 %211)
  %213 = load %struct.cmpl_base*, %struct.cmpl_base** %13, align 8
  %214 = load i64, i64* %15, align 8
  %215 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %213, i64 %214
  %216 = load i32, i32* %16, align 4
  %217 = call i32 @CMP_VALID(%struct.cmpl_base* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %204
  br label %229

220:                                              ; preds = %204
  br label %221

221:                                              ; preds = %220, %194
  br label %222

222:                                              ; preds = %221, %193, %192, %173, %117
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %228

227:                                              ; preds = %222
  br label %38

228:                                              ; preds = %226
  br label %229

229:                                              ; preds = %228, %219, %191, %168, %147, %112, %91, %53
  %230 = load i32, i32* %14, align 4
  ret i32 %230
}

declare dso_local i32 @NEXT_CP_CONS_V(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring*, i64) #1

declare dso_local i32 @CMP_VALID(%struct.cmpl_base*, i32) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
