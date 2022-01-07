; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_elantech.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_elantech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@enable_elantech.ic2hw = internal constant [16 x i32] [i32 0, i32 0, i32 2, i32 0, i32 2, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@enable_elantech.fw_sizes = internal constant [6 x [3 x i32]] [[3 x i32] [i32 131120, i32 1152, i32 768], [3 x i32] [i32 133120, i32 1152, i32 768], [3 x i32] [i32 133888, i32 1152, i32 768], [3 x i32] [i32 262677, i32 900, i32 500], [3 x i32] [i32 262678, i32 819, i32 405], [3 x i32] [i32 262681, i32 900, i32 500]], align 16
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"elantech: BEGIN init\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ELANTECH_FW_VERSION = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Elantech touchpad hardware v.%d firmware v.0x%06x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"  Unsupported touchpad hardware (v1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"  Unknown touchpad hardware (firmware v.0x%06x)\0A\00", align 1
@ELANTECH_CAPABILITIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"  Failed to read capability bits\0A\00", align 1
@ELANTECH_RESOLUTION = common dso_local global i32 0, align 4
@elantech_support = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"couldn't initialize elantech touchpad\0A\00", align 1
@ELANTECH_FW_ID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"  Failed to read touchpad size\0A\00", align 1
@ELANTECH_SAMPLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"  Model information:\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"   MaxX:       %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"   MaxY:       %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"   DpmmX:      %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"   DpmmY:      %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"   TracesX:    %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"   TracesY:    %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"   DptraceX:   %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"   DptraceY:   %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"   SemiMT:     %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"   Clickpad:   %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"   Trackpoint: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"   CRC:        %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"   Pressure:   %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"elantech: END init\0A\00", align 1
@PROBE = common dso_local global i32 0, align 4
@ELANTECH_MAX_FINGERS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @enable_elantech to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_elantech(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %17 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @LOG_DEBUG, align 4
  %20 = call i32 @VLOG(i32 3, i32 ptrtoint ([22 x i8]* @.str to i32))
  %21 = load i32, i32* %15, align 4
  %22 = call i32 @set_mouse_scaling(i32 %21, i32 1)
  %23 = load i32, i32* %15, align 4
  %24 = call i32 @set_mouse_scaling(i32 %23, i32 1)
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @set_mouse_scaling(i32 %25, i32 1)
  %27 = load i32, i32* %15, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %29 = call i32 @get_mouse_status(i32 %27, i32* %28, i32 0, i32 3)
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %406

33:                                               ; preds = %2
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %35 = call i32 @ELANTECH_MAGIC(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %406

39:                                               ; preds = %33
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @ELANTECH_FW_VERSION, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %43 = call i64 @elantech_cmd(i32 %40, i32 2, i32 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %406

47:                                               ; preds = %39
  %48 = call i32 @bzero(%struct.TYPE_8__* %6, i32 60)
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %51, %54
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %55, %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* @enable_elantech.ic2hw, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @verbose, align 4
  %68 = icmp sge i32 %67, 2
  br i1 %68, label %69, label %74

69:                                               ; preds = %47
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %69, %47
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ELANTECH_HW_IS_V1(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %406

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %406

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 16
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 64
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 133120
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @ELANTECH_CAPABILITIES, align 4
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %118 = call i64 @elantech_cmd(i32 %114, i32 %115, i32 %116, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %90
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %3, align 4
  br label %406

123:                                              ; preds = %90
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @imax(i32 %125, i32 3)
  %127 = ptrtoint i8* %126 to i32
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  store i32 %127, i32* %128, align 4
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @imax(i32 %130, i32 3)
  %132 = ptrtoint i8* %131 to i32
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 128
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %8, align 4
  switch i32 %140, label %174 [
    i32 4, label %141
    i32 2, label %171
    i32 3, label %171
  ]

141:                                              ; preds = %123
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @ELANTECH_RESOLUTION, align 4
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %146 = call i64 @elantech_cmd(i32 %142, i32 %143, i32 %144, i32* %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %141
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 15
  %152 = mul nsw i32 %151, 10
  %153 = add nsw i32 %152, 790
  store i32 %153, i32* %13, align 4
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 240
  %157 = ashr i32 %156, 4
  %158 = mul nsw i32 %157, 10
  %159 = add nsw i32 %158, 790
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = mul nsw i32 %160, 10
  %162 = add nsw i32 %161, 5
  %163 = sdiv i32 %162, 254
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %14, align 4
  %166 = mul nsw i32 %165, 10
  %167 = add nsw i32 %166, 5
  %168 = sdiv i32 %167, 254
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  store i32 %168, i32* %169, align 4
  br label %174

170:                                              ; preds = %141
  br label %171

171:                                              ; preds = %123, %123, %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  store i32 32, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  store i32 32, i32* %173, align 4
  br label %174

174:                                              ; preds = %123, %171, %148
  %175 = load i32, i32* @elantech_support, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @FALSE, align 4
  store i32 %178, i32* %3, align 4
  br label %406

179:                                              ; preds = %174
  %180 = load i32, i32* %15, align 4
  %181 = call i64 @elantech_init(i32 %180, %struct.TYPE_8__* %6)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %3, align 4
  br label %406

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  store i32 64, i32* %187, align 4
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  store i32 64, i32* %188, align 4
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %216, %186
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @nitems(i32** bitcast ([6 x [3 x i32]]* @enable_elantech.fw_sizes to i32**))
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %219

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* @enable_elantech.fw_sizes, i64 0, i64 %197
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %198, i64 0, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %195, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %193
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* @enable_elantech.fw_sizes, i64 0, i64 %204
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %205, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* @enable_elantech.fw_sizes, i64 0, i64 %210
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %211, i64 0, i64 2
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 14
  store i32 %213, i32* %214, align 4
  br label %326

215:                                              ; preds = %193
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %189

219:                                              ; preds = %189
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @ELANTECH_FW_ID, align 4
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %224 = call i64 @elantech_cmd(i32 %220, i32 %221, i32 %222, i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  store i32 10000, i32* %228, align 4
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 14
  store i32 10000, i32* %229, align 4
  br label %325

230:                                              ; preds = %219
  %231 = load i32, i32* %8, align 4
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %282

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = ashr i32 %235, 16
  %237 = icmp eq i32 %236, 20
  br i1 %237, label %238, label %259

238:                                              ; preds = %233
  %239 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 16
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %238
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @ELANTECH_SAMPLE, align 4
  %247 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %248 = call i64 @elantech_cmd(i32 %244, i32 %245, i32 %246, i32* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %259, label %250

250:                                              ; preds = %243
  %251 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = sdiv i32 %252, 2
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  store i32 %253, i32* %254, align 4
  %255 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = sdiv i32 %256, 2
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  store i32 %257, i32* %258, align 4
  br label %259

259:                                              ; preds = %250, %243, %238, %233
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = ashr i32 %261, 8
  %263 = icmp eq i32 %262, 520
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 1, i32 2
  store i32 %265, i32* %9, align 4
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %9, align 4
  %269 = sub nsw i32 %267, %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 %269, %271
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  store i32 %272, i32* %273, align 4
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %9, align 4
  %277 = sub nsw i32 %275, %276
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %277, %279
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 14
  store i32 %280, i32* %281, align 4
  br label %324

282:                                              ; preds = %230
  %283 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 15
  %286 = shl i32 %285, 8
  %287 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %286, %288
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  store i32 %289, i32* %290, align 4
  %291 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 240
  %294 = shl i32 %293, 4
  %295 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %294, %296
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 14
  store i32 %297, i32* %298, align 4
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  %300 = load i32, i32* %299, align 4
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %302, 2
  %304 = srem i32 %300, %303
  %305 = icmp eq i32 %304, 0
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i32 2, i32 1
  store i32 %307, i32* %9, align 4
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %9, align 4
  %313 = sub nsw i32 %311, %312
  %314 = sdiv i32 %309, %313
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  store i32 %314, i32* %315, align 4
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 14
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %9, align 4
  %321 = sub nsw i32 %319, %320
  %322 = sdiv i32 %317, %321
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  store i32 %322, i32* %323, align 4
  br label %324

324:                                              ; preds = %282, %259
  br label %325

325:                                              ; preds = %324, %226
  br label %326

326:                                              ; preds = %325, %202
  %327 = load i32, i32* @verbose, align 4
  %328 = icmp sge i32 %327, 2
  br i1 %328, label %329, label %370

329:                                              ; preds = %326
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %332)
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 14
  %335 = load i32, i32* %334, align 4
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %335)
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  %338 = load i32, i32* %337, align 4
  %339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %338)
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %341)
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %344 = load i32, i32* %343, align 4
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %344)
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %347 = load i32, i32* %346, align 4
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %347)
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %350)
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  %353 = load i32, i32* %352, align 4
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %353)
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %356)
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %359)
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %362)
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %365 = load i32, i32* %364, align 4
  %366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 %365)
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %368 = load i32, i32* %367, align 4
  %369 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 %368)
  br label %370

370:                                              ; preds = %329, %326
  %371 = load i32, i32* @LOG_DEBUG, align 4
  %372 = call i32 @VLOG(i32 3, i32 ptrtoint ([20 x i8]* @.str.21 to i32))
  %373 = load i32, i32* %5, align 4
  %374 = load i32, i32* @PROBE, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %404

376:                                              ; preds = %370
  %377 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %378 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %377, i32 0, i32 2
  %379 = bitcast %struct.TYPE_8__* %378 to i8*
  %380 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %379, i8* align 4 %380, i64 60, i1 false)
  %381 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %382 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 0
  store i32 3, i32* %383, align 8
  %384 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %385 = call i32 @elantech_init_synaptics(%struct.psm_softc* %384)
  store i32 0, i32* %11, align 4
  br label %386

386:                                              ; preds = %400, %376
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* @ELANTECH_MAX_FINGERS, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %390, label %403

390:                                              ; preds = %386
  %391 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %392 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %11, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @PSM_FINGER_RESET(i32 %398)
  br label %400

400:                                              ; preds = %390
  %401 = load i32, i32* %11, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %11, align 4
  br label %386

403:                                              ; preds = %386
  br label %404

404:                                              ; preds = %403, %370
  %405 = load i32, i32* @TRUE, align 4
  store i32 %405, i32* %3, align 4
  br label %406

406:                                              ; preds = %404, %183, %177, %120, %85, %79, %45, %37, %31
  %407 = load i32, i32* %3, align 4
  ret i32 %407
}

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @set_mouse_scaling(i32, i32) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

declare dso_local i32 @ELANTECH_MAGIC(i32*) #1

declare dso_local i64 @elantech_cmd(i32, i32, i32, i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ELANTECH_HW_IS_V1(i32) #1

declare dso_local i8* @imax(i32, i32) #1

declare dso_local i64 @elantech_init(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @nitems(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @elantech_init_synaptics(%struct.psm_softc*) #1

declare dso_local i32 @PSM_FINGER_RESET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
