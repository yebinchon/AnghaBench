; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.creator_softc = type { i32, i8, i8, i32, i32, i32, i32 }

@CREATOR_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"height\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/options\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"screen-#rows\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"screen-#columns\00", align 1
@gallant12x22 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@V_INFO_COLOR = common dso_local global i32 0, align 4
@V_INFO_MM_OTHER = common dso_local global i32 0, align 4
@CREATOR_AFB = common dso_local global i32 0, align 4
@FFB_DAC = common dso_local global i32 0, align 4
@FFB_DAC_TYPE = common dso_local global i32 0, align 4
@FFB_DAC_CFG_DID = common dso_local global i32 0, align 4
@FFB_DAC_VALUE = common dso_local global i32 0, align 4
@FFB_DAC_CFG_DID_PNUM = common dso_local global i32 0, align 4
@CREATOR_PAC1 = common dso_local global i32 0, align 4
@FFB_DAC_CFG_UCTRL = common dso_local global i32 0, align 4
@FFB_DAC_UCTRL_MANREV = common dso_local global i32 0, align 4
@CREATOR_CURINV = common dso_local global i32 0, align 4
@V_DISPLAY_ON = common dso_local global i32 0, align 4
@V_ADP_COLOR = common dso_local global i32 0, align 4
@V_ADP_MODECHANGE = common dso_local global i32 0, align 4
@V_ADP_BORDER = common dso_local global i32 0, align 4
@V_ADP_INITIALIZED = common dso_local global i32 0, align 4
@V_ADP_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*, i32)* @creator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_init(i32 %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.creator_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca [16 x i8], align 16
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = bitcast %struct.TYPE_11__* %12 to %struct.creator_softc*
  store %struct.creator_softc* %13, %struct.creator_softc** %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = load i32, i32* @CREATOR_DRIVER_NAME, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @vid_init_struct(%struct.TYPE_11__* %16, i32 %17, i32 -1, i32 %18)
  %20 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %21 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %24 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %23, i32 0, i32 1
  %25 = call i32 @OF_getprop(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %24, i32 1)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %4, align 4
  br label %191

29:                                               ; preds = %3
  %30 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %31 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %34 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %33, i32 0, i32 2
  %35 = call i32 @OF_getprop(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 1)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %4, align 4
  br label %191

39:                                               ; preds = %29
  %40 = call i32 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %9, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %4, align 4
  br label %191

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %47 = call i32 @OF_getprop(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 16)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %4, align 4
  br label %191

51:                                               ; preds = %44
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %53 = call i8* @strtol(i8* %52, i32* null, i32 10)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %59 = call i32 @OF_getprop(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %58, i32 16)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %4, align 4
  br label %191

63:                                               ; preds = %51
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %65 = call i8* @strtol(i8* %64, i32* null, i32 10)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gallant12x22, i32 0, i32 0), align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gallant12x22, i32 0, i32 1), align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @V_INFO_COLOR, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @V_INFO_MM_OTHER, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gallant12x22, i32 0, i32 2), align 4
  %82 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %83 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %85 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %84, i32 0, i32 2
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = sub nsw i32 %87, %94
  %96 = sdiv i32 %95, 2
  %97 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %98 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %100 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %99, i32 0, i32 1
  %101 = load i8, i8* %100, align 4
  %102 = sext i8 %101 to i32
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %105, %108
  %110 = sub nsw i32 %102, %109
  %111 = sdiv i32 %110, 2
  %112 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %113 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = call i32 @creator_set_mode(%struct.TYPE_11__* %114, i32 0)
  %116 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %117 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CREATOR_AFB, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %163, label %122

122:                                              ; preds = %63
  %123 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %124 = load i32, i32* @FFB_DAC, align 4
  %125 = load i32, i32* @FFB_DAC_TYPE, align 4
  %126 = load i32, i32* @FFB_DAC_CFG_DID, align 4
  %127 = call i32 @FFB_WRITE(%struct.creator_softc* %123, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %129 = load i32, i32* @FFB_DAC, align 4
  %130 = load i32, i32* @FFB_DAC_VALUE, align 4
  %131 = call i32 @FFB_READ(%struct.creator_softc* %128, i32 %129, i32 %130)
  %132 = load i32, i32* @FFB_DAC_CFG_DID_PNUM, align 4
  %133 = and i32 %131, %132
  %134 = ashr i32 %133, 12
  %135 = icmp ne i32 %134, 9070
  br i1 %135, label %136, label %162

136:                                              ; preds = %122
  %137 = load i32, i32* @CREATOR_PAC1, align 4
  %138 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %139 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %143 = load i32, i32* @FFB_DAC, align 4
  %144 = load i32, i32* @FFB_DAC_TYPE, align 4
  %145 = load i32, i32* @FFB_DAC_CFG_UCTRL, align 4
  %146 = call i32 @FFB_WRITE(%struct.creator_softc* %142, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %148 = load i32, i32* @FFB_DAC, align 4
  %149 = load i32, i32* @FFB_DAC_VALUE, align 4
  %150 = call i32 @FFB_READ(%struct.creator_softc* %147, i32 %148, i32 %149)
  %151 = load i32, i32* @FFB_DAC_UCTRL_MANREV, align 4
  %152 = and i32 %150, %151
  %153 = ashr i32 %152, 8
  %154 = icmp sle i32 %153, 2
  br i1 %154, label %155, label %161

155:                                              ; preds = %136
  %156 = load i32, i32* @CREATOR_CURINV, align 4
  %157 = load %struct.creator_softc*, %struct.creator_softc** %8, align 8
  %158 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %136
  br label %162

162:                                              ; preds = %161, %122
  br label %163

163:                                              ; preds = %162, %63
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %165 = load i32, i32* @V_DISPLAY_ON, align 4
  %166 = call i32 @creator_blank_display(%struct.TYPE_11__* %164, i32 %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = call i32 @creator_clear(%struct.TYPE_11__* %167)
  %169 = load i32, i32* @V_ADP_COLOR, align 4
  %170 = load i32, i32* @V_ADP_MODECHANGE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @V_ADP_BORDER, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @V_ADP_INITIALIZED, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = call i64 @vid_register(%struct.TYPE_11__* %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %163
  %184 = load i32, i32* @ENXIO, align 4
  store i32 %184, i32* %4, align 4
  br label %191

185:                                              ; preds = %163
  %186 = load i32, i32* @V_ADP_REGISTERED, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %185, %183, %61, %49, %42, %37, %27
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @vid_init_struct(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @creator_set_mode(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

declare dso_local i32 @FFB_READ(%struct.creator_softc*, i32, i32) #1

declare dso_local i32 @creator_blank_display(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @creator_clear(%struct.TYPE_11__*) #1

declare dso_local i64 @vid_register(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
