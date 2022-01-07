; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.machfb_softc = type { i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CONFIG_CHIP_ID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@machfb_info = common dso_local global %struct.TYPE_16__* null, align 8
@ATI_RAGE_II = common dso_local global i32 0, align 4
@MACHFB_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/options\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"screen-#rows\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"screen-#columns\00", align 1
@gallant12x22 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@V_INFO_COLOR = common dso_local global i32 0, align 4
@V_INFO_MM_OTHER = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@ATI_MACH64_CT = common dso_local global i32 0, align 4
@ATI_MACH64_VT = common dso_local global i32 0, align 4
@MACHFB_DSP = common dso_local global i32 0, align 4
@CONFIG_STAT0 = common dso_local global i32 0, align 4
@ATI_RAGE_XC_PCI66 = common dso_local global i32 0, align 4
@ATI_RAGE_XL_PCI66 = common dso_local global i32 0, align 4
@ATI_RAGE_XL_PCI = common dso_local global i32 0, align 4
@ATI_RAGE_XC_PCI = common dso_local global i32 0, align 4
@CLOCK_CNTL = common dso_local global i64 0, align 8
@PLL_REF_DIV = common dso_local global i32 0, align 4
@MCLK_FB_DIV = common dso_local global i32 0, align 4
@DAC_RINDEX = common dso_local global i64 0, align 8
@DAC_WINDEX = common dso_local global i64 0, align 8
@DAC_MASK = common dso_local global i64 0, align 8
@MACHFB_CMAP_OFF = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i64 0, align 8
@machfb_default_cmap = common dso_local global %struct.TYPE_17__* null, align 8
@V_DISPLAY_ON = common dso_local global i32 0, align 4
@V_ADP_COLOR = common dso_local global i32 0, align 4
@V_ADP_MODECHANGE = common dso_local global i32 0, align 4
@V_ADP_PALETTE = common dso_local global i32 0, align 4
@V_ADP_BORDER = common dso_local global i32 0, align 4
@V_ADP_INITIALIZED = common dso_local global i32 0, align 4
@V_ADP_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_15__*, i32)* @machfb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_init(i32 %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.machfb_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = bitcast %struct.TYPE_15__* %16 to %struct.machfb_softc*
  store %struct.machfb_softc* %17, %struct.machfb_softc** %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %21 = load i32, i32* @CONFIG_CHIP_ID, align 4
  %22 = call i32 @regr(%struct.machfb_softc* %20, i32 %21)
  %23 = and i32 %22, 65535
  %24 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %25 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %4, align 4
  br label %438

30:                                               ; preds = %3
  %31 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %32 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %59, %30
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** @machfb_info, align 8
  %36 = call i32 @nitems(%struct.TYPE_16__* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %40 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** @machfb_info, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %41, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** @machfb_info, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %57 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %33

62:                                               ; preds = %49, %33
  %63 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %64 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %4, align 4
  br label %438

69:                                               ; preds = %62
  %70 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %71 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATI_RAGE_II, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %77 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 7
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %83 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %82, i32 0, i32 1
  store i32 170000, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %75, %69
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = load i32, i32* @MACHFB_DRIVER_NAME, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @vid_init_struct(%struct.TYPE_15__* %85, i32 %86, i32 -1, i32 %87)
  %89 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %90 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %93 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %92, i32 0, i32 4
  %94 = call i32 @OF_getprop(i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %93, i32 1)
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %4, align 4
  br label %438

98:                                               ; preds = %84
  %99 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %100 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %103 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %102, i32 0, i32 5
  %104 = call i32 @OF_getprop(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %103, i32 1)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %4, align 4
  br label %438

108:                                              ; preds = %98
  %109 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %110 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %113 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %112, i32 0, i32 6
  %114 = call i32 @OF_getprop(i32 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %113, i32 1)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @ENXIO, align 4
  store i32 %117, i32* %4, align 4
  br label %438

118:                                              ; preds = %108
  %119 = call i32 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %119, i32* %9, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %4, align 4
  br label %438

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %126 = call i32 @OF_getprop(i32 %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %125, i32 32)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @ENXIO, align 4
  store i32 %129, i32* %4, align 4
  br label %438

130:                                              ; preds = %123
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %132 = call i8* @strtol(i8* %131, i32* null, i32 10)
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %9, align 4
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %138 = call i32 @OF_getprop(i32 %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %137, i32 32)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %4, align 4
  br label %438

142:                                              ; preds = %130
  %143 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %144 = call i8* @strtol(i8* %143, i32* null, i32 10)
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gallant12x22, i32 0, i32 0), align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gallant12x22, i32 0, i32 1), align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @V_INFO_COLOR, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @V_INFO_MM_OTHER, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gallant12x22, i32 0, i32 2), align 4
  %161 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %162 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %161, i32 0, i32 18
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @NBBY, align 4
  %167 = call i32 @howmany(i32 %165, i32 %166)
  %168 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %169 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %168, i32 0, i32 17
  store i32 %167, i32* %169, align 4
  %170 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %171 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %170, i32 0, i32 5
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %176, %179
  %181 = sub nsw i32 %173, %180
  %182 = sdiv i32 %181, 2
  %183 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %184 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  %185 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %186 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %185, i32 0, i32 4
  %187 = load i8, i8* %186, align 4
  %188 = sext i8 %187 to i32
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = sub nsw i32 %188, %195
  %197 = sdiv i32 %196, 2
  %198 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %199 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 4
  %200 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %201 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @ATI_MACH64_CT, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %229

205:                                              ; preds = %142
  %206 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %207 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @ATI_MACH64_VT, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %213 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @ATI_RAGE_II, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %211, %205
  %218 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %219 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 7
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %217, %211
  %224 = load i32, i32* @MACHFB_DSP, align 4
  %225 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %226 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %225, i32 0, i32 16
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %217, %142
  %230 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %231 = call i32 @machfb_get_memsize(%struct.machfb_softc* %230)
  %232 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %233 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %232, i32 0, i32 9
  store i32 %231, i32* %233, align 4
  %234 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %235 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %234, i32 0, i32 9
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 8192
  br i1 %237, label %238, label %243

238:                                              ; preds = %229
  %239 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %240 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %241, 4
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %238, %229
  %244 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %245 = load i32, i32* @CONFIG_STAT0, align 4
  %246 = call i32 @regr(%struct.machfb_softc* %244, i32 %245)
  %247 = and i32 %246, 7
  %248 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %249 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %248, i32 0, i32 10
  store i32 %247, i32* %249, align 4
  %250 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %251 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @ATI_RAGE_XC_PCI66, align 4
  %254 = icmp sge i32 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %243
  %256 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %257 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @ATI_RAGE_XL_PCI66, align 4
  %260 = icmp sle i32 %258, %259
  br i1 %260, label %273, label %261

261:                                              ; preds = %255, %243
  %262 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %263 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @ATI_RAGE_XL_PCI, align 4
  %266 = icmp sge i32 %264, %265
  br i1 %266, label %267, label %276

267:                                              ; preds = %261
  %268 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %269 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @ATI_RAGE_XC_PCI, align 4
  %272 = icmp sle i32 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %267, %255
  %274 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %275 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %274, i32 0, i32 11
  store i32 29498, i32* %275, align 4
  br label %279

276:                                              ; preds = %267, %261
  %277 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %278 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %277, i32 0, i32 11
  store i32 14318, i32* %278, align 4
  br label %279

279:                                              ; preds = %276, %273
  %280 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %281 = load i64, i64* @CLOCK_CNTL, align 8
  %282 = add nsw i64 %281, 1
  %283 = load i32, i32* @PLL_REF_DIV, align 4
  %284 = shl i32 %283, 2
  %285 = call i32 @regwb(%struct.machfb_softc* %280, i64 %282, i32 %284)
  %286 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %287 = load i64, i64* @CLOCK_CNTL, align 8
  %288 = add nsw i64 %287, 2
  %289 = call i8* @regrb(%struct.machfb_softc* %286, i64 %288)
  %290 = ptrtoint i8* %289 to i32
  %291 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %292 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %291, i32 0, i32 12
  store i32 %290, i32* %292, align 4
  %293 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %294 = load i64, i64* @CLOCK_CNTL, align 8
  %295 = add nsw i64 %294, 1
  %296 = load i32, i32* @MCLK_FB_DIV, align 4
  %297 = shl i32 %296, 2
  %298 = call i32 @regwb(%struct.machfb_softc* %293, i64 %295, i32 %297)
  %299 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %300 = load i64, i64* @CLOCK_CNTL, align 8
  %301 = add nsw i64 %300, 2
  %302 = call i8* @regrb(%struct.machfb_softc* %299, i64 %301)
  %303 = ptrtoint i8* %302 to i32
  %304 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %305 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %304, i32 0, i32 13
  store i32 %303, i32* %305, align 4
  %306 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %307 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %306, i32 0, i32 11
  %308 = load i32, i32* %307, align 4
  %309 = mul nsw i32 2, %308
  %310 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %311 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %310, i32 0, i32 13
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %309, %312
  %314 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %315 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %314, i32 0, i32 12
  %316 = load i32, i32* %315, align 4
  %317 = mul nsw i32 %316, 2
  %318 = sdiv i32 %313, %317
  %319 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %320 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %319, i32 0, i32 14
  store i32 %318, i32* %320, align 4
  %321 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %322 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %321, i32 0, i32 13
  %323 = load i32, i32* %322, align 4
  %324 = mul nsw i32 %323, 2
  %325 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %326 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %325, i32 0, i32 11
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 %324, %327
  %329 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %330 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %329, i32 0, i32 14
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %333 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %332, i32 0, i32 12
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 %331, %334
  %336 = sdiv i32 %328, %335
  %337 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %338 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %337, i32 0, i32 15
  store i32 %336, i32* %338, align 4
  %339 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %340 = call i32 @machfb_init_engine(%struct.machfb_softc* %339)
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %342 = call i32 @machfb_set_mode(%struct.TYPE_15__* %341, i32 0)
  %343 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %344 = load i64, i64* @DAC_RINDEX, align 8
  %345 = call i8* @regrb(%struct.machfb_softc* %343, i64 %344)
  %346 = ptrtoint i8* %345 to i32
  store i32 %346, i32* %14, align 4
  %347 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %348 = load i64, i64* @DAC_WINDEX, align 8
  %349 = call i8* @regrb(%struct.machfb_softc* %347, i64 %348)
  %350 = ptrtoint i8* %349 to i32
  store i32 %350, i32* %15, align 4
  %351 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %352 = load i64, i64* @DAC_MASK, align 8
  %353 = call i8* @regrb(%struct.machfb_softc* %351, i64 %352)
  %354 = ptrtoint i8* %353 to i32
  store i32 %354, i32* %13, align 4
  %355 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %356 = load i64, i64* @DAC_MASK, align 8
  %357 = call i32 @regwb(%struct.machfb_softc* %355, i64 %356, i32 255)
  %358 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %359 = load i64, i64* @DAC_WINDEX, align 8
  %360 = load i32, i32* @MACHFB_CMAP_OFF, align 4
  %361 = call i32 @regwb(%struct.machfb_softc* %358, i64 %359, i32 %360)
  store i32 0, i32* %12, align 4
  br label %362

362:                                              ; preds = %393, %279
  %363 = load i32, i32* %12, align 4
  %364 = icmp slt i32 %363, 16
  br i1 %364, label %365, label %396

365:                                              ; preds = %362
  %366 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %367 = load i64, i64* @DAC_DATA, align 8
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** @machfb_default_cmap, align 8
  %369 = load i32, i32* %12, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @regwb(%struct.machfb_softc* %366, i64 %367, i32 %373)
  %375 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %376 = load i64, i64* @DAC_DATA, align 8
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** @machfb_default_cmap, align 8
  %378 = load i32, i32* %12, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @regwb(%struct.machfb_softc* %375, i64 %376, i32 %382)
  %384 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %385 = load i64, i64* @DAC_DATA, align 8
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** @machfb_default_cmap, align 8
  %387 = load i32, i32* %12, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @regwb(%struct.machfb_softc* %384, i64 %385, i32 %391)
  br label %393

393:                                              ; preds = %365
  %394 = load i32, i32* %12, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %12, align 4
  br label %362

396:                                              ; preds = %362
  %397 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %398 = load i64, i64* @DAC_MASK, align 8
  %399 = load i32, i32* %13, align 4
  %400 = call i32 @regwb(%struct.machfb_softc* %397, i64 %398, i32 %399)
  %401 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %402 = load i64, i64* @DAC_RINDEX, align 8
  %403 = load i32, i32* %14, align 4
  %404 = call i32 @regwb(%struct.machfb_softc* %401, i64 %402, i32 %403)
  %405 = load %struct.machfb_softc*, %struct.machfb_softc** %8, align 8
  %406 = load i64, i64* @DAC_WINDEX, align 8
  %407 = load i32, i32* %15, align 4
  %408 = call i32 @regwb(%struct.machfb_softc* %405, i64 %406, i32 %407)
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %410 = load i32, i32* @V_DISPLAY_ON, align 4
  %411 = call i32 @machfb_blank_display(%struct.TYPE_15__* %409, i32 %410)
  %412 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %413 = call i32 @machfb_clear(%struct.TYPE_15__* %412)
  %414 = load i32, i32* @V_ADP_COLOR, align 4
  %415 = load i32, i32* @V_ADP_MODECHANGE, align 4
  %416 = or i32 %414, %415
  %417 = load i32, i32* @V_ADP_PALETTE, align 4
  %418 = or i32 %416, %417
  %419 = load i32, i32* @V_ADP_BORDER, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* @V_ADP_INITIALIZED, align 4
  %422 = or i32 %420, %421
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = or i32 %425, %422
  store i32 %426, i32* %424, align 4
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %428 = call i64 @vid_register(%struct.TYPE_15__* %427)
  %429 = icmp slt i64 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %396
  %431 = load i32, i32* @ENXIO, align 4
  store i32 %431, i32* %4, align 4
  br label %438

432:                                              ; preds = %396
  %433 = load i32, i32* @V_ADP_REGISTERED, align 4
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = or i32 %436, %433
  store i32 %437, i32* %435, align 4
  store i32 0, i32* %4, align 4
  br label %438

438:                                              ; preds = %432, %430, %140, %128, %121, %116, %106, %96, %67, %28
  %439 = load i32, i32* %4, align 4
  ret i32 %439
}

declare dso_local i32 @regr(%struct.machfb_softc*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_16__*) #1

declare dso_local i32 @vid_init_struct(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @machfb_get_memsize(%struct.machfb_softc*) #1

declare dso_local i32 @regwb(%struct.machfb_softc*, i64, i32) #1

declare dso_local i8* @regrb(%struct.machfb_softc*, i64) #1

declare dso_local i32 @machfb_init_engine(%struct.machfb_softc*) #1

declare dso_local i32 @machfb_set_mode(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @machfb_blank_display(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @machfb_clear(%struct.TYPE_15__*) #1

declare dso_local i64 @vid_register(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
