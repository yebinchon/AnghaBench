; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_drain_wrq_wr_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_drain_wrq_wr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_wrq = type { i64, i32, i32, i32, i32, %struct.sge_eq }
%struct.sge_eq = type { i64, i64, i64, i32, i32, %struct.fw_eth_tx_pkt_wr* }
%struct.fw_eth_tx_pkt_wr = type { i32 }
%struct.wrqe = type { i32, i32*, %struct.sge_wrq* }

@EQ_ESIZE = common dso_local global i32 0, align 4
@F_FW_WR_EQUIQ = common dso_local global i32 0, align 4
@F_FW_WR_EQUEQ = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_wrq*)* @drain_wrq_wr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_wrq_wr_list(%struct.adapter* %0, %struct.sge_wrq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_wrq*, align 8
  %5 = alloca %struct.sge_eq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wrqe*, align 8
  %10 = alloca %struct.fw_eth_tx_pkt_wr*, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_wrq* %1, %struct.sge_wrq** %4, align 8
  %12 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %13 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %12, i32 0, i32 5
  store %struct.sge_eq* %13, %struct.sge_eq** %5, align 8
  %14 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %15 = call i32 @EQ_LOCK_ASSERT_OWNED(%struct.sge_eq* %14)
  %16 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %17 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %16, i32 0, i32 4
  %18 = call i32 @TAILQ_EMPTY(i32* %17)
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %21 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %20, i32 0, i32 2
  %22 = call %struct.wrqe* @STAILQ_FIRST(i32* %21)
  store %struct.wrqe* %22, %struct.wrqe** %9, align 8
  %23 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %24 = icmp ne %struct.wrqe* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @MPASS(i32 %25)
  %27 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %28 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %31 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @MPASS(i32 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %243, %2
  %37 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %38 = call i64 @read_hw_cidx(%struct.sge_eq* %37)
  %39 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %40 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %42 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %45 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %50 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %65

53:                                               ; preds = %36
  %54 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %55 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %58 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %61 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @IDXDIFF(i64 %56, i64 %59, i32 %62)
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %53, %48
  %66 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %67 = getelementptr inbounds %struct.wrqe, %struct.wrqe* %66, i32 0, i32 2
  %68 = load %struct.sge_wrq*, %struct.sge_wrq** %67, align 8
  %69 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %70 = icmp eq %struct.sge_wrq* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @MPASS(i32 %71)
  %73 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %74 = getelementptr inbounds %struct.wrqe, %struct.wrqe* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EQ_ESIZE, align 4
  %77 = call i32 @howmany(i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %248

82:                                               ; preds = %65
  %83 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %84 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %83, i32 0, i32 5
  %85 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %84, align 8
  %86 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %87 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, %struct.fw_eth_tx_pkt_wr* %85, i64 %88
  %90 = bitcast %struct.fw_eth_tx_pkt_wr* %89 to i8*
  %91 = bitcast i8* %90 to %struct.fw_eth_tx_pkt_wr*
  store %struct.fw_eth_tx_pkt_wr* %91, %struct.fw_eth_tx_pkt_wr** %10, align 8
  %92 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %93 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %97 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %95, %98
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ugt i64 %99, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @__predict_true(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %82
  %107 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %108 = getelementptr inbounds %struct.wrqe, %struct.wrqe* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %10, align 8
  %112 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %113 = getelementptr inbounds %struct.wrqe, %struct.wrqe* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @bcopy(i32* %110, %struct.fw_eth_tx_pkt_wr* %111, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %119 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %178

122:                                              ; preds = %82
  %123 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %124 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %128 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %126, %129
  %131 = load i32, i32* @EQ_ESIZE, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %130, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %136 = getelementptr inbounds %struct.wrqe, %struct.wrqe* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %10, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @bcopy(i32* %138, %struct.fw_eth_tx_pkt_wr* %139, i32 %140)
  %142 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %143 = getelementptr inbounds %struct.wrqe, %struct.wrqe* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %164

147:                                              ; preds = %122
  %148 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %149 = getelementptr inbounds %struct.wrqe, %struct.wrqe* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %155 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %154, i32 0, i32 5
  %156 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %155, align 8
  %157 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, %struct.fw_eth_tx_pkt_wr* %156, i64 0
  %158 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %159 = getelementptr inbounds %struct.wrqe, %struct.wrqe* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %160, %161
  %163 = call i32 @bcopy(i32* %153, %struct.fw_eth_tx_pkt_wr* %157, i32 %162)
  br label %164

164:                                              ; preds = %147, %122
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %168 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %172 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sub i64 %170, %173
  %175 = sub i64 %166, %174
  %176 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %177 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %164, %106
  %179 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %180 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %185 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = sdiv i32 %186, 4
  %188 = icmp slt i32 %183, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %178
  %190 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %191 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %190, i32 0, i32 4
  %192 = call i64 @atomic_cmpset_int(i32* %191, i32 0, i32 1)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load i32, i32* @F_FW_WR_EQUIQ, align 4
  %196 = load i32, i32* @F_FW_WR_EQUEQ, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @htobe32(i32 %197)
  %199 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %10, align 8
  %200 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, %struct.fw_eth_tx_pkt_wr* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %194, %189, %178
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp sge i32 %207, 16
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load %struct.adapter*, %struct.adapter** %3, align 8
  %211 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @ring_eq_db(%struct.adapter* %210, %struct.sge_eq* %211, i32 %212)
  store i32 0, i32* %7, align 4
  br label %214

214:                                              ; preds = %209, %203
  %215 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %216 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %215, i32 0, i32 2
  %217 = load i32, i32* @link, align 4
  %218 = call i32 @STAILQ_REMOVE_HEAD(i32* %216, i32 %217)
  %219 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %220 = call i32 @free_wrqe(%struct.wrqe* %219)
  %221 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %222 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp sgt i64 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i32 @MPASS(i32 %225)
  %227 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %228 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, -1
  store i64 %230, i64* %228, align 8
  %231 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %232 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = icmp sge i32 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @MPASS(i32 %236)
  %238 = load i32, i32* %8, align 4
  %239 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %240 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %214
  %244 = load %struct.sge_wrq*, %struct.sge_wrq** %4, align 8
  %245 = getelementptr inbounds %struct.sge_wrq, %struct.sge_wrq* %244, i32 0, i32 2
  %246 = call %struct.wrqe* @STAILQ_FIRST(i32* %245)
  store %struct.wrqe* %246, %struct.wrqe** %9, align 8
  %247 = icmp ne %struct.wrqe* %246, null
  br i1 %247, label %36, label %248

248:                                              ; preds = %243, %81
  %249 = load i32, i32* %7, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load %struct.adapter*, %struct.adapter** %3, align 8
  %253 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %254 = load i32, i32* %7, align 4
  %255 = call i32 @ring_eq_db(%struct.adapter* %252, %struct.sge_eq* %253, i32 %254)
  br label %256

256:                                              ; preds = %251, %248
  ret void
}

declare dso_local i32 @EQ_LOCK_ASSERT_OWNED(%struct.sge_eq*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.wrqe* @STAILQ_FIRST(i32*) #1

declare dso_local i64 @read_hw_cidx(%struct.sge_eq*) #1

declare dso_local i32 @IDXDIFF(i64, i64, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @bcopy(i32*, %struct.fw_eth_tx_pkt_wr*, i32) #1

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @ring_eq_db(%struct.adapter*, %struct.sge_eq*, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free_wrqe(%struct.wrqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
