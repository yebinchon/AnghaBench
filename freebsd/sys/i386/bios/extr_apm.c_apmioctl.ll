; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, i32, i32, %struct.apm_event_info*, %struct.TYPE_5__, i32 }
%struct.apm_event_info = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.apm_bios_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.apm_info = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"APM ioctl: cmd = 0x%lx\0A\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PMST_SUSPEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PMST_STANDBY = common dso_local global i32 0, align 4
@APMDEV_CTL = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@APM_NEVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @apmioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.apm_softc*, align 8
  %13 = alloca %struct.apm_bios_arg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.apm_info, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca %struct.apm_event_info*, align 8
  %20 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %22 = icmp eq %struct.apm_softc* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %25 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %5
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %6, align 4
  br label %337

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @APM_DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %281 [
    i32 128, label %34
    i32 129, label %52
    i32 135, label %70
    i32 136, label %102
    i32 134, label %110
    i32 137, label %118
    i32 139, label %127
    i32 133, label %136
    i32 131, label %145
    i32 138, label %154
    i32 140, label %171
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @FWRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EPERM, align 4
  store i32 %40, i32* %6, align 4
  br label %337

41:                                               ; preds = %34
  %42 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %43 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @PMST_SUSPEND, align 4
  %48 = call i32 @apm_suspend(i32 %47)
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %49, %46
  br label %283

52:                                               ; preds = %30
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @FWRITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EPERM, align 4
  store i32 %58, i32* %6, align 4
  br label %337

59:                                               ; preds = %52
  %60 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %61 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @PMST_STANDBY, align 4
  %66 = call i32 @apm_suspend(i32 %65)
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %67, %64
  br label %283

70:                                               ; preds = %30
  %71 = call i32 @apm_get_info(%struct.apm_info* %17)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i64, i64* %9, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %18, align 8
  %78 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %17, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %17, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %17, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %17, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %17, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %17, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %283

102:                                              ; preds = %30
  %103 = load i64, i64* %9, align 8
  %104 = inttoptr i64 %103 to %struct.apm_info*
  %105 = call i32 @apm_get_info(%struct.apm_info* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @ENXIO, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %107, %102
  br label %283

110:                                              ; preds = %30
  %111 = load i64, i64* %9, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @apm_get_pwstatus(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %115, %110
  br label %283

118:                                              ; preds = %30
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @FWRITE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @EPERM, align 4
  store i32 %124, i32* %6, align 4
  br label %337

125:                                              ; preds = %118
  %126 = call i32 (...) @apm_event_enable()
  br label %283

127:                                              ; preds = %30
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @FWRITE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* @EPERM, align 4
  store i32 %133, i32* %6, align 4
  br label %337

134:                                              ; preds = %127
  %135 = call i32 (...) @apm_event_disable()
  br label %283

136:                                              ; preds = %30
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @FWRITE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* @EPERM, align 4
  store i32 %142, i32* %6, align 4
  br label %337

143:                                              ; preds = %136
  %144 = call i32 (...) @apm_halt_cpu()
  br label %283

145:                                              ; preds = %30
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @FWRITE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* @EPERM, align 4
  store i32 %151, i32* %6, align 4
  br label %337

152:                                              ; preds = %145
  %153 = call i32 (...) @apm_not_halt_cpu()
  br label %283

154:                                              ; preds = %30
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @FWRITE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* @EPERM, align 4
  store i32 %160, i32* %6, align 4
  br label %337

161:                                              ; preds = %154
  %162 = load i64, i64* %9, align 8
  %163 = inttoptr i64 %162 to i32*
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @apm_display(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i32, i32* @ENXIO, align 4
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %168, %161
  br label %283

171:                                              ; preds = %30
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @FWRITE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @EPERM, align 4
  store i32 %177, i32* %6, align 4
  br label %337

178:                                              ; preds = %171
  %179 = load i64, i64* %9, align 8
  %180 = inttoptr i64 %179 to %struct.apm_bios_arg*
  store %struct.apm_bios_arg* %180, %struct.apm_bios_arg** %13, align 8
  %181 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %182 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %185 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 8
  %188 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %189 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %192 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 5
  store i32 %190, i32* %194, align 4
  %195 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %196 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %199 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 4
  store i32 %197, i32* %201, align 8
  %202 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %203 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %206 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  store i32 %204, i32* %208, align 4
  %209 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %210 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %213 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  store i32 %211, i32* %215, align 8
  %216 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %217 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %220 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  store i32 %218, i32* %222, align 4
  %223 = call i32 (...) @apm_bioscall()
  store i32 %223, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %178
  %226 = load i32, i32* %15, align 4
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = load i32, i32* @EINVAL, align 4
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %228, %225
  br label %238

231:                                              ; preds = %178
  %232 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %233 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = and i32 %236, 255
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %231, %230
  %239 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %240 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %245 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %247 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %252 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 4
  %253 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %254 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %259 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 4
  %260 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %261 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %266 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 4
  %267 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %268 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %273 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 4
  %274 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %275 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.apm_bios_arg*, %struct.apm_bios_arg** %13, align 8
  %280 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  br label %283

281:                                              ; preds = %30
  %282 = load i32, i32* @EINVAL, align 4
  store i32 %282, i32* %14, align 4
  br label %283

283:                                              ; preds = %281, %238, %170, %152, %143, %134, %125, %117, %109, %75, %69, %51
  %284 = load %struct.cdev*, %struct.cdev** %7, align 8
  %285 = call i64 @dev2unit(%struct.cdev* %284)
  %286 = load i64, i64* @APMDEV_CTL, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %335

288:                                              ; preds = %283
  store i32 0, i32* %14, align 4
  %289 = load i32, i32* %8, align 4
  switch i32 %289, label %332 [
    i32 132, label %290
    i32 130, label %326
  ]

290:                                              ; preds = %288
  %291 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %292 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* @EAGAIN, align 4
  store i32 %296, i32* %14, align 4
  br label %325

297:                                              ; preds = %290
  %298 = load i64, i64* %9, align 8
  %299 = inttoptr i64 %298 to %struct.apm_event_info*
  store %struct.apm_event_info* %299, %struct.apm_event_info** %19, align 8
  %300 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %301 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @APM_NEVENTS, align 4
  %304 = add nsw i32 %302, %303
  %305 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %306 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = sub nsw i32 %304, %307
  store i32 %308, i32* %20, align 4
  %309 = load i32, i32* @APM_NEVENTS, align 4
  %310 = load i32, i32* %20, align 4
  %311 = srem i32 %310, %309
  store i32 %311, i32* %20, align 4
  %312 = load %struct.apm_event_info*, %struct.apm_event_info** %19, align 8
  %313 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %314 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %313, i32 0, i32 3
  %315 = load %struct.apm_event_info*, %struct.apm_event_info** %314, align 8
  %316 = load i32, i32* %20, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %315, i64 %317
  %319 = bitcast %struct.apm_event_info* %312 to i8*
  %320 = bitcast %struct.apm_event_info* %318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %319, i8* align 4 %320, i64 4, i1 false)
  %321 = load %struct.apm_softc*, %struct.apm_softc** %12, align 8
  %322 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, -1
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %297, %295
  br label %334

326:                                              ; preds = %288
  %327 = call i32 (...) @apm_lastreq_rejected()
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  %330 = load i32, i32* @EINVAL, align 4
  store i32 %330, i32* %14, align 4
  br label %331

331:                                              ; preds = %329, %326
  br label %334

332:                                              ; preds = %288
  %333 = load i32, i32* @EINVAL, align 4
  store i32 %333, i32* %14, align 4
  br label %334

334:                                              ; preds = %332, %331, %325
  br label %335

335:                                              ; preds = %334, %283
  %336 = load i32, i32* %14, align 4
  store i32 %336, i32* %6, align 4
  br label %337

337:                                              ; preds = %335, %176, %159, %150, %141, %132, %123, %57, %39, %28
  %338 = load i32, i32* %6, align 4
  ret i32 %338
}

declare dso_local i32 @APM_DPRINT(i8*, i32) #1

declare dso_local i32 @apm_suspend(i32) #1

declare dso_local i32 @apm_get_info(%struct.apm_info*) #1

declare dso_local i32 @apm_get_pwstatus(i32) #1

declare dso_local i32 @apm_event_enable(...) #1

declare dso_local i32 @apm_event_disable(...) #1

declare dso_local i32 @apm_halt_cpu(...) #1

declare dso_local i32 @apm_not_halt_cpu(...) #1

declare dso_local i32 @apm_display(i32) #1

declare dso_local i32 @apm_bioscall(...) #1

declare dso_local i64 @dev2unit(%struct.cdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @apm_lastreq_rejected(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
