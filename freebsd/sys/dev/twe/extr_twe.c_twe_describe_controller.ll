; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_describe_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_describe_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }
%struct.TYPE_4__ = type { i64* }

@TWE_PARAM_CONTROLLER = common dso_local global i32 0, align 4
@TWE_PARAM_CONTROLLER_PortCount = common dso_local global i32 0, align 4
@TWE_PARAM_VERSION = common dso_local global i64 0, align 8
@TWE_PARAM_VERSION_FW = common dso_local global i32 0, align 4
@TWE_PARAM_VERSION_BIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%d ports, Firmware %.16s, BIOS %.16s\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@TWE_PARAM_VERSION_Mon = common dso_local global i32 0, align 4
@TWE_PARAM_VERSION_PCB = common dso_local global i32 0, align 4
@TWE_PARAM_VERSION_ATA = common dso_local global i32 0, align 4
@TWE_PARAM_VERSION_PCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Monitor %.16s, PCB %.8s, Achip %.8s, Pchip %.8s\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@TWE_PARAM_DRIVESUMMARY = common dso_local global i64 0, align 8
@TWE_PARAM_DRIVESUMMARY_Status = common dso_local global i32 0, align 4
@TWE_PARAM_DRIVESTATUS_Present = common dso_local global i64 0, align 8
@TWE_PARAM_DRIVEINFO = common dso_local global i64 0, align 8
@TWE_PARAM_DRIVEINFO_Size = common dso_local global i32 0, align 4
@TWE_PARAM_DRIVEINFO_Model = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"port %d: %.40s %dMB\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"port %d, drive status unavailable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twe_describe_controller(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  %3 = alloca [6 x %struct.TYPE_4__*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %7 = call i32 @debug_called(i32 2)
  %8 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %9 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %8)
  %10 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %11 = load i32, i32* @TWE_PARAM_CONTROLLER, align 4
  %12 = load i32, i32* @TWE_PARAM_CONTROLLER_PortCount, align 4
  %13 = call i32 @twe_get_param_1(%struct.twe_softc* %10, i32 %11, i32 %12, i32* %4)
  %14 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %15 = load i64, i64* @TWE_PARAM_VERSION, align 8
  %16 = load i32, i32* @TWE_PARAM_VERSION_FW, align 4
  %17 = call %struct.TYPE_4__* @twe_get_param(%struct.twe_softc* %14, i64 %15, i32 %16, i32 16, i32* null)
  %18 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %18, align 16
  %19 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %20 = load i64, i64* @TWE_PARAM_VERSION, align 8
  %21 = load i32, i32* @TWE_PARAM_VERSION_BIOS, align 4
  %22 = call %struct.TYPE_4__* @twe_get_param(%struct.twe_softc* %19, i64 %20, i32 %21, i32 16, i32* null)
  %23 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %23, align 8
  %24 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 16
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %1
  %28 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 16
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33, i64* %37, i64* %41)
  br label %43

43:                                               ; preds = %31, %27, %1
  %44 = load i64, i64* @bootverbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %138

46:                                               ; preds = %43
  %47 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %48 = load i64, i64* @TWE_PARAM_VERSION, align 8
  %49 = load i32, i32* @TWE_PARAM_VERSION_Mon, align 4
  %50 = call %struct.TYPE_4__* @twe_get_param(%struct.twe_softc* %47, i64 %48, i32 %49, i32 16, i32* null)
  %51 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 2
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %51, align 16
  %52 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %53 = load i64, i64* @TWE_PARAM_VERSION, align 8
  %54 = load i32, i32* @TWE_PARAM_VERSION_PCB, align 4
  %55 = call %struct.TYPE_4__* @twe_get_param(%struct.twe_softc* %52, i64 %53, i32 %54, i32 8, i32* null)
  %56 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 3
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %58 = load i64, i64* @TWE_PARAM_VERSION, align 8
  %59 = load i32, i32* @TWE_PARAM_VERSION_ATA, align 4
  %60 = call %struct.TYPE_4__* @twe_get_param(%struct.twe_softc* %57, i64 %58, i32 %59, i32 8, i32* null)
  %61 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 4
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %61, align 16
  %62 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %63 = load i64, i64* @TWE_PARAM_VERSION, align 8
  %64 = load i32, i32* @TWE_PARAM_VERSION_PCI, align 4
  %65 = call %struct.TYPE_4__* @twe_get_param(%struct.twe_softc* %62, i64 %63, i32 %64, i32 8, i32* null)
  %66 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 5
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %66, align 8
  %67 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 16
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %101

70:                                               ; preds = %46
  %71 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %70
  %75 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 16
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 5
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = icmp ne %struct.TYPE_4__* %80, null
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %84 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 16
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 16
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 5
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %83, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64* %87, i64* %91, i64* %95, i64* %99)
  br label %101

101:                                              ; preds = %82, %78, %74, %70, %46
  %102 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 16
  %104 = icmp ne %struct.TYPE_4__* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 16
  %108 = load i32, i32* @M_DEVBUF, align 4
  %109 = call i32 @free(%struct.TYPE_4__* %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %101
  %111 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = icmp ne %struct.TYPE_4__* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* @M_DEVBUF, align 4
  %118 = call i32 @free(%struct.TYPE_4__* %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %110
  %120 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 16
  %122 = icmp ne %struct.TYPE_4__* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 16
  %126 = load i32, i32* @M_DEVBUF, align 4
  %127 = call i32 @free(%struct.TYPE_4__* %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %119
  %129 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 5
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = icmp ne %struct.TYPE_4__* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 5
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* @M_DEVBUF, align 4
  %136 = call i32 @free(%struct.TYPE_4__* %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %128
  br label %138

138:                                              ; preds = %137, %43
  %139 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 16
  %141 = icmp ne %struct.TYPE_4__* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 16
  %145 = load i32, i32* @M_DEVBUF, align 4
  %146 = call i32 @free(%struct.TYPE_4__* %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %138
  %148 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = icmp ne %struct.TYPE_4__* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* @M_DEVBUF, align 4
  %155 = call i32 @free(%struct.TYPE_4__* %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %147
  %157 = load i64, i64* @bootverbose, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %232

159:                                              ; preds = %156
  %160 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %161 = load i64, i64* @TWE_PARAM_DRIVESUMMARY, align 8
  %162 = load i32, i32* @TWE_PARAM_DRIVESUMMARY_Status, align 4
  %163 = call %struct.TYPE_4__* @twe_get_param(%struct.twe_softc* %160, i64 %161, i32 %162, i32 16, i32* null)
  %164 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  store %struct.TYPE_4__* %163, %struct.TYPE_4__** %164, align 16
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %219, %159
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %222

169:                                              ; preds = %165
  %170 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 16
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TWE_PARAM_DRIVESTATUS_Present, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %219

181:                                              ; preds = %169
  %182 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %183 = load i64, i64* @TWE_PARAM_DRIVEINFO, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %183, %185
  %187 = load i32, i32* @TWE_PARAM_DRIVEINFO_Size, align 4
  %188 = call i32 @twe_get_param_4(%struct.twe_softc* %182, i64 %186, i32 %187, i32* %5)
  %189 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %190 = load i64, i64* @TWE_PARAM_DRIVEINFO, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %190, %192
  %194 = load i32, i32* @TWE_PARAM_DRIVEINFO_Model, align 4
  %195 = call %struct.TYPE_4__* @twe_get_param(%struct.twe_softc* %189, i64 %193, i32 %194, i32 40, i32* null)
  %196 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  store %struct.TYPE_4__* %195, %struct.TYPE_4__** %196, align 8
  %197 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = icmp ne %struct.TYPE_4__* %198, null
  br i1 %199, label %200, label %214

200:                                              ; preds = %181
  %201 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %202 = load i32, i32* %6, align 4
  %203 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sdiv i32 %207, 2048
  %209 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %202, i64* %206, i32 %208)
  %210 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 1
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = load i32, i32* @M_DEVBUF, align 4
  %213 = call i32 @free(%struct.TYPE_4__* %211, i32 %212)
  br label %218

214:                                              ; preds = %181
  %215 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %216 = load i32, i32* %6, align 4
  %217 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %214, %200
  br label %219

219:                                              ; preds = %218, %180
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  br label %165

222:                                              ; preds = %165
  %223 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 16
  %225 = icmp ne %struct.TYPE_4__* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  %227 = getelementptr inbounds [6 x %struct.TYPE_4__*], [6 x %struct.TYPE_4__*]* %3, i64 0, i64 0
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 16
  %229 = load i32, i32* @M_DEVBUF, align 4
  %230 = call i32 @free(%struct.TYPE_4__* %228, i32 %229)
  br label %231

231:                                              ; preds = %226, %222
  br label %232

232:                                              ; preds = %231, %156
  %233 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %234 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %233)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_LOCK(%struct.twe_softc*) #1

declare dso_local i32 @twe_get_param_1(%struct.twe_softc*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @twe_get_param(%struct.twe_softc*, i64, i32, i32, i32*) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @twe_get_param_4(%struct.twe_softc*, i64, i32, i32*) #1

declare dso_local i32 @TWE_IO_UNLOCK(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
