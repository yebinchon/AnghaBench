; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_fc_enable_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_fc_enable_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i64*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ixgbe_fc_enable_82598\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid water mark configuration\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i64 0, align 8
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RFCE = common dso_local global i64 0, align 8
@IXGBE_FCTRL_RPFCE = common dso_local global i64 0, align 8
@IXGBE_RMCS = common dso_local global i32 0, align 4
@IXGBE_RMCS_TFCE_PRIORITY = common dso_local global i64 0, align 8
@IXGBE_RMCS_TFCE_802_3X = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_FCTRL_DPF = common dso_local global i64 0, align 8
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fc_enable_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %12 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %12, i32* %3, align 4
  store i64 0, i64* %9, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %20, i32* %3, align 4
  br label %270

21:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %76, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %26
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %33
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %61, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %53, %43
  %72 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %73, i32* %3, align 4
  br label %270

74:                                               ; preds = %53
  br label %75

75:                                               ; preds = %74, %33, %26
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %22

79:                                               ; preds = %22
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32 (%struct.ixgbe_hw.0*, i64*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i64*, i32*, i32)** %83, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %86 = bitcast %struct.ixgbe_hw* %85 to %struct.ixgbe_hw.0*
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 %84(%struct.ixgbe_hw.0* %86, i64* %9, i32* %11, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %79
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @IXGBE_LINK_SPEED_1GB_FULL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %108 [
    i32 131, label %100
    i32 129, label %104
  ]

100:                                              ; preds = %95
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  store i32 128, i32* %103, align 8
  br label %109

104:                                              ; preds = %95
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  store i32 130, i32* %107, align 8
  br label %109

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %104, %100
  br label %110

110:                                              ; preds = %109, %91, %79
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %112 = call i32 @ixgbe_fc_autoneg(%struct.ixgbe_hw* %111)
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %114 = load i32, i32* @IXGBE_FCTRL, align 4
  %115 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %113, i32 %114)
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %117 = load i64, i64* @IXGBE_FCTRL_RPFCE, align 8
  %118 = or i64 %116, %117
  %119 = xor i64 %118, -1
  %120 = load i64, i64* %4, align 8
  %121 = and i64 %120, %119
  store i64 %121, i64* %4, align 8
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %123 = load i32, i32* @IXGBE_RMCS, align 4
  %124 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %122, i32 %123)
  store i64 %124, i64* %5, align 8
  %125 = load i64, i64* @IXGBE_RMCS_TFCE_PRIORITY, align 8
  %126 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %127 = or i64 %125, %126
  %128 = xor i64 %127, -1
  %129 = load i64, i64* %5, align 8
  %130 = and i64 %129, %128
  store i64 %130, i64* %5, align 8
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %132 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %151 [
    i32 130, label %135
    i32 129, label %136
    i32 128, label %140
    i32 131, label %144
  ]

135:                                              ; preds = %110
  br label %154

136:                                              ; preds = %110
  %137 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %138 = load i64, i64* %4, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %4, align 8
  br label %154

140:                                              ; preds = %110
  %141 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %142 = load i64, i64* %5, align 8
  %143 = or i64 %142, %141
  store i64 %143, i64* %5, align 8
  br label %154

144:                                              ; preds = %110
  %145 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %146 = load i64, i64* %4, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %4, align 8
  %148 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %149 = load i64, i64* %5, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %5, align 8
  br label %154

151:                                              ; preds = %110
  %152 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %153, i32* %3, align 4
  br label %270

154:                                              ; preds = %144, %140, %136, %135
  %155 = load i64, i64* @IXGBE_FCTRL_DPF, align 8
  %156 = load i64, i64* %4, align 8
  %157 = or i64 %156, %155
  store i64 %157, i64* %4, align 8
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %159 = load i32, i32* @IXGBE_FCTRL, align 4
  %160 = load i64, i64* %4, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %158, i32 %159, i32 %161)
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %164 = load i32, i32* @IXGBE_RMCS, align 4
  %165 = load i64, i64* %5, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %163, i32 %164, i32 %166)
  store i32 0, i32* %10, align 4
  br label %168

168:                                              ; preds = %236, %154
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %239

172:                                              ; preds = %168
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %174 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 128
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %226

179:                                              ; preds = %172
  %180 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %181 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %226

189:                                              ; preds = %179
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %191 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, 10
  %199 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %200 = or i32 %198, %199
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %7, align 8
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %203 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %209, 10
  %211 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %212 = or i32 %210, %211
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %8, align 8
  %214 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @IXGBE_FCRTL(i32 %215)
  %217 = load i64, i64* %7, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %214, i32 %216, i32 %218)
  %220 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @IXGBE_FCRTH(i32 %221)
  %223 = load i64, i64* %8, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %220, i32 %222, i32 %224)
  br label %235

226:                                              ; preds = %179, %172
  %227 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @IXGBE_FCRTL(i32 %228)
  %230 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %227, i32 %229, i32 0)
  %231 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @IXGBE_FCRTH(i32 %232)
  %234 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %231, i32 %233, i32 0)
  br label %235

235:                                              ; preds = %226, %189
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %168

239:                                              ; preds = %168
  %240 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %241 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = mul nsw i32 %243, 65537
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %6, align 8
  store i32 0, i32* %10, align 4
  br label %246

246:                                              ; preds = %258, %239
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %249 = sdiv i32 %248, 2
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %246
  %252 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @IXGBE_FCTTV(i32 %253)
  %255 = load i64, i64* %6, align 8
  %256 = trunc i64 %255 to i32
  %257 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %252, i32 %254, i32 %256)
  br label %258

258:                                              ; preds = %251
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %246

261:                                              ; preds = %246
  %262 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %263 = load i32, i32* @IXGBE_FCRTV, align 4
  %264 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %265 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sdiv i32 %267, 2
  %269 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %262, i32 %263, i32 %268)
  br label %270

270:                                              ; preds = %261, %151, %71, %19
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @ixgbe_fc_autoneg(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_FCRTL(i32) #1

declare dso_local i32 @IXGBE_FCRTH(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
