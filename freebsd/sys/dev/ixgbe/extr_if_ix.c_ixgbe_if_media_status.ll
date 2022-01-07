; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }
%struct.adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"ixgbe_if_media_status: begin\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_T = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_100BASE_TX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10BASE_T = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA = common dso_local global i32 0, align 4
@IFM_10G_TWINAX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_LR = common dso_local global i32 0, align 4
@IFM_10G_LR = common dso_local global i32 0, align 4
@IFM_1000_LX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_LRM = common dso_local global i32 0, align 4
@IFM_10G_LRM = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_SR = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_SX = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_CX4 = common dso_local global i32 0, align 4
@IFM_10G_CX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KR = common dso_local global i32 0, align 4
@IFM_2500_SX = common dso_local global i32 0, align 4
@IFM_1000_CX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_2500BASE_KX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_KX = common dso_local global i32 0, align 4
@IFM_UNKNOWN = common dso_local global i32 0, align 4
@ixgbe_fc_rx_pause = common dso_local global i64 0, align 8
@ixgbe_fc_full = common dso_local global i64 0, align 8
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@ixgbe_fc_tx_pause = common dso_local global i64 0, align 8
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@IFM_1000_KX = common dso_local global i32 0, align 4
@IFM_10G_KR = common dso_local global i32 0, align 4
@IFM_10G_KX4 = common dso_local global i32 0, align 4
@IFM_2500_KX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifmediareq*)* @ixgbe_if_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_if_media_status(i32 %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 3
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %6, align 8
  %12 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @IFM_AVALID, align 4
  %14 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %15 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IFM_ETHER, align 4
  %17 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %18 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %344

24:                                               ; preds = %2
  %25 = load i32, i32* @IFM_ACTIVE, align 4
  %26 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %27 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.adapter*, %struct.adapter** %5, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_T, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @IXGBE_PHYSICAL_LAYER_100BASE_TX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10BASE_T, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %47, %42, %37, %24
  %53 = load %struct.adapter*, %struct.adapter** %5, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %88 [
    i32 131, label %56
    i32 129, label %64
    i32 132, label %72
    i32 130, label %80
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* @IFM_10G_T, align 4
  %58 = load i32, i32* @IFM_FDX, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %61 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %88

64:                                               ; preds = %52
  %65 = load i32, i32* @IFM_1000_T, align 4
  %66 = load i32, i32* @IFM_FDX, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %69 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %88

72:                                               ; preds = %52
  %73 = load i32, i32* @IFM_100_TX, align 4
  %74 = load i32, i32* @IFM_FDX, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %77 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %88

80:                                               ; preds = %52
  %81 = load i32, i32* @IFM_10_T, align 4
  %82 = load i32, i32* @IFM_FDX, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %85 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %52, %80, %72, %64, %56
  br label %89

89:                                               ; preds = %88, %47
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94, %89
  %100 = load %struct.adapter*, %struct.adapter** %5, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %111 [
    i32 131, label %103
  ]

103:                                              ; preds = %99
  %104 = load i32, i32* @IFM_10G_TWINAX, align 4
  %105 = load i32, i32* @IFM_FDX, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %108 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %99, %103
  br label %112

112:                                              ; preds = %111, %94
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load %struct.adapter*, %struct.adapter** %5, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %137 [
    i32 131, label %121
    i32 129, label %129
  ]

121:                                              ; preds = %117
  %122 = load i32, i32* @IFM_10G_LR, align 4
  %123 = load i32, i32* @IFM_FDX, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %126 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %137

129:                                              ; preds = %117
  %130 = load i32, i32* @IFM_1000_LX, align 4
  %131 = load i32, i32* @IFM_FDX, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %134 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %117, %129, %121
  br label %138

138:                                              ; preds = %137, %112
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LRM, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %138
  %144 = load %struct.adapter*, %struct.adapter** %5, align 8
  %145 = getelementptr inbounds %struct.adapter, %struct.adapter* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  switch i32 %146, label %163 [
    i32 131, label %147
    i32 129, label %155
  ]

147:                                              ; preds = %143
  %148 = load i32, i32* @IFM_10G_LRM, align 4
  %149 = load i32, i32* @IFM_FDX, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %152 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %163

155:                                              ; preds = %143
  %156 = load i32, i32* @IFM_1000_LX, align 4
  %157 = load i32, i32* @IFM_FDX, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %160 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %143, %155, %147
  br label %164

164:                                              ; preds = %163, %138
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_SX, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %169, %164
  %175 = load %struct.adapter*, %struct.adapter** %5, align 8
  %176 = getelementptr inbounds %struct.adapter, %struct.adapter* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %194 [
    i32 131, label %178
    i32 129, label %186
  ]

178:                                              ; preds = %174
  %179 = load i32, i32* @IFM_10G_SR, align 4
  %180 = load i32, i32* @IFM_FDX, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %183 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %194

186:                                              ; preds = %174
  %187 = load i32, i32* @IFM_1000_SX, align 4
  %188 = load i32, i32* @IFM_FDX, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %191 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %174, %186, %178
  br label %195

195:                                              ; preds = %194, %169
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_CX4, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %195
  %201 = load %struct.adapter*, %struct.adapter** %5, align 8
  %202 = getelementptr inbounds %struct.adapter, %struct.adapter* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %212 [
    i32 131, label %204
  ]

204:                                              ; preds = %200
  %205 = load i32, i32* @IFM_10G_CX4, align 4
  %206 = load i32, i32* @IFM_FDX, align 4
  %207 = or i32 %205, %206
  %208 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %209 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %200, %204
  br label %213

213:                                              ; preds = %212, %195
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KR, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %247

218:                                              ; preds = %213
  %219 = load %struct.adapter*, %struct.adapter** %5, align 8
  %220 = getelementptr inbounds %struct.adapter, %struct.adapter* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  switch i32 %221, label %246 [
    i32 131, label %222
    i32 128, label %230
    i32 129, label %238
  ]

222:                                              ; preds = %218
  %223 = load i32, i32* @IFM_10G_SR, align 4
  %224 = load i32, i32* @IFM_FDX, align 4
  %225 = or i32 %223, %224
  %226 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %227 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %246

230:                                              ; preds = %218
  %231 = load i32, i32* @IFM_2500_SX, align 4
  %232 = load i32, i32* @IFM_FDX, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %235 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  br label %246

238:                                              ; preds = %218
  %239 = load i32, i32* @IFM_1000_CX, align 4
  %240 = load i32, i32* @IFM_FDX, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %243 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %218, %238, %230, %222
  br label %292

247:                                              ; preds = %213
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %262, label %252

252:                                              ; preds = %247
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @IXGBE_PHYSICAL_LAYER_2500BASE_KX, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %252
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %291

262:                                              ; preds = %257, %252, %247
  %263 = load %struct.adapter*, %struct.adapter** %5, align 8
  %264 = getelementptr inbounds %struct.adapter, %struct.adapter* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  switch i32 %265, label %290 [
    i32 131, label %266
    i32 128, label %274
    i32 129, label %282
  ]

266:                                              ; preds = %262
  %267 = load i32, i32* @IFM_10G_CX4, align 4
  %268 = load i32, i32* @IFM_FDX, align 4
  %269 = or i32 %267, %268
  %270 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %271 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 4
  br label %290

274:                                              ; preds = %262
  %275 = load i32, i32* @IFM_2500_SX, align 4
  %276 = load i32, i32* @IFM_FDX, align 4
  %277 = or i32 %275, %276
  %278 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %279 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  br label %290

282:                                              ; preds = %262
  %283 = load i32, i32* @IFM_1000_CX, align 4
  %284 = load i32, i32* @IFM_FDX, align 4
  %285 = or i32 %283, %284
  %286 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %287 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %262, %282, %274, %266
  br label %291

291:                                              ; preds = %290, %257
  br label %292

292:                                              ; preds = %291, %246
  %293 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %294 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i64 @IFM_SUBTYPE(i32 %295)
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %292
  %299 = load i32, i32* @IFM_UNKNOWN, align 4
  %300 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %301 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %298, %292
  %305 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %306 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @ixgbe_fc_rx_pause, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %318, label %311

311:                                              ; preds = %304
  %312 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %313 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @ixgbe_fc_full, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %311, %304
  %319 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %320 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %321 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %318, %311
  %325 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %326 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @ixgbe_fc_tx_pause, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %338, label %331

331:                                              ; preds = %324
  %332 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %333 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @ixgbe_fc_full, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %331, %324
  %339 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %340 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %341 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 4
  br label %344

344:                                              ; preds = %23, %338, %331
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
