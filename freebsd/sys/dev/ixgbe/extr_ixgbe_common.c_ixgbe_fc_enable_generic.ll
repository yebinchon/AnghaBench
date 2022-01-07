; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_fc_enable_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_fc_enable_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ixgbe_fc_enable_generic\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i32 0, align 4
@IXGBE_DCB_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid water mark configuration\0A\00", align 1
@IXGBE_MFLCN = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RPFCE_MASK = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RFCE = common dso_local global i32 0, align 4
@IXGBE_FCCFG = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_802_3X = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_PRIORITY = common dso_local global i32 0, align 4
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_MFLCN_DPF = common dso_local global i32 0, align 4
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fc_enable_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %10 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %10, i32* %3, align 4
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %18, i32* %3, align 4
  br label %237

19:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %20
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %24
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %31
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %41
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %59, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %51, %41
  %70 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %71, i32* %3, align 4
  br label %237

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %31, %24
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %20

77:                                               ; preds = %20
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %81, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %84 = bitcast %struct.ixgbe_hw* %83 to %struct.ixgbe_hw.0*
  %85 = call i32 %82(%struct.ixgbe_hw.0* %84)
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = load i32, i32* @IXGBE_MFLCN, align 4
  %88 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @IXGBE_MFLCN_RPFCE_MASK, align 4
  %90 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %96 = load i32, i32* @IXGBE_FCCFG, align 4
  %97 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %99 = load i32, i32* @IXGBE_FCCFG_TFCE_PRIORITY, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %105 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %124 [
    i32 130, label %108
    i32 129, label %109
    i32 128, label %113
    i32 131, label %117
  ]

108:                                              ; preds = %77
  br label %128

109:                                              ; preds = %77
  %110 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %128

113:                                              ; preds = %77
  %114 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %128

117:                                              ; preds = %77
  %118 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %119 = load i32, i32* %4, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %128

124:                                              ; preds = %77
  %125 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %126 = call i32 @ERROR_REPORT1(i32 %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %127, i32* %3, align 4
  br label %237

128:                                              ; preds = %117, %113, %109, %108
  %129 = load i32, i32* @IXGBE_MFLCN_DPF, align 4
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %133 = load i32, i32* @IXGBE_MFLCN, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %132, i32 %133, i32 %134)
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %137 = load i32, i32* @IXGBE_FCCFG, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %136, i32 %137, i32 %138)
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %205, %128
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %208

144:                                              ; preds = %140
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %146 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 128
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %189

151:                                              ; preds = %144
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %153 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %189

161:                                              ; preds = %151
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %163 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 10
  %171 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %172 = or i32 %170, %171
  store i32 %172, i32* %7, align 4
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @IXGBE_FCRTL_82599(i32 %174)
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %173, i32 %175, i32 %176)
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %185, 10
  %187 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %8, align 4
  br label %199

189:                                              ; preds = %151, %144
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @IXGBE_FCRTL_82599(i32 %191)
  %193 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %190, i32 %192, i32 0)
  %194 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @IXGBE_RXPBSIZE(i32 %195)
  %197 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %194, i32 %196)
  %198 = sub nsw i32 %197, 24576
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %189, %161
  %200 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @IXGBE_FCRTH_82599(i32 %201)
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %200, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %140

208:                                              ; preds = %140
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = mul nsw i32 %212, 65537
  store i32 %213, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %214

214:                                              ; preds = %225, %208
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @IXGBE_DCB_MAX_TRAFFIC_CLASS, align 4
  %217 = sdiv i32 %216, 2
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %219, label %228

219:                                              ; preds = %214
  %220 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @IXGBE_FCTTV(i32 %221)
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %220, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %219
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %214

228:                                              ; preds = %214
  %229 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %230 = load i32, i32* @IXGBE_FCRTV, align 4
  %231 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %232 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sdiv i32 %234, 2
  %236 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %229, i32 %230, i32 %235)
  br label %237

237:                                              ; preds = %228, %124, %69, %17
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_FCRTL_82599(i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i32 @IXGBE_FCRTH_82599(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
