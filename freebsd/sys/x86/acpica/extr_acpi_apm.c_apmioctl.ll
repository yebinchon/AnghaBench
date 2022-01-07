; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.apm_clone_data = type { i32, %struct.acpi_softc* }
%struct.acpi_softc = type { i32, i32, i32 }
%struct.apm_info = type { i32, i32, i32, i32, i32, i32 }
%struct.apm_event_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@FWRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ACPI_STATE_S5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"power off via apm suspend not supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"power off via apm standby not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"apm nextevent start\0A\00", align 1
@acpi = common dso_local global i32 0, align 4
@APM_EV_NONE = common dso_local global i32 0, align 4
@ACPI_STATE_S3 = common dso_local global i32 0, align 4
@PMEV_STANDBYREQ = common dso_local global i32 0, align 4
@PMEV_SUSPENDREQ = common dso_local global i32 0, align 4
@APM_EV_NOTIFIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"apm event returning %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@apm_active = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @apmioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.apm_clone_data*, align 8
  %14 = alloca %struct.acpi_softc*, align 8
  %15 = alloca %struct.apm_info, align 4
  %16 = alloca %struct.apm_event_info*, align 8
  %17 = alloca %struct.TYPE_2__*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = bitcast %struct.apm_clone_data** %13 to i8**
  %19 = call i32 @devfs_get_cdevpriv(i8** %18)
  %20 = load %struct.apm_clone_data*, %struct.apm_clone_data** %13, align 8
  %21 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %20, i32 0, i32 1
  %22 = load %struct.acpi_softc*, %struct.acpi_softc** %21, align 8
  store %struct.acpi_softc* %22, %struct.acpi_softc** %14, align 8
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %217 [
    i32 128, label %24
    i32 129, label %56
    i32 131, label %88
    i32 134, label %133
    i32 135, label %165
    i32 133, label %173
    i32 136, label %181
    i32 138, label %189
    i32 132, label %197
    i32 130, label %198
    i32 137, label %199
    i32 139, label %207
  ]

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @FWRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EPERM, align 4
  store i32 %30, i32* %6, align 4
  br label %221

31:                                               ; preds = %24
  %32 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %33 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %38 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ACPI_STATE_S5, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %44 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %45 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @acpi_ReqSleepState(%struct.acpi_softc* %43, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %51

48:                                               ; preds = %36
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %42
  br label %55

52:                                               ; preds = %31
  %53 = load %struct.apm_clone_data*, %struct.apm_clone_data** %13, align 8
  %54 = call i32 @acpi_AckSleepState(%struct.apm_clone_data* %53, i32 0)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %52, %51
  br label %219

56:                                               ; preds = %5
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @FWRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @EPERM, align 4
  store i32 %62, i32* %6, align 4
  br label %221

63:                                               ; preds = %56
  %64 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %65 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %70 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ACPI_STATE_S5, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %76 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %77 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @acpi_ReqSleepState(%struct.acpi_softc* %75, i32 %78)
  store i32 %79, i32* %12, align 4
  br label %83

80:                                               ; preds = %68
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %74
  br label %87

84:                                               ; preds = %63
  %85 = load %struct.apm_clone_data*, %struct.apm_clone_data** %13, align 8
  %86 = call i32 @acpi_AckSleepState(%struct.apm_clone_data* %85, i32 0)
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %83
  br label %219

88:                                               ; preds = %5
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @acpi, align 4
  %91 = call i32 @ACPI_LOCK(i32 %90)
  %92 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %93 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %88
  %97 = load %struct.apm_clone_data*, %struct.apm_clone_data** %13, align 8
  %98 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @APM_EV_NONE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %96
  %103 = load i64, i64* %9, align 8
  %104 = inttoptr i64 %103 to %struct.apm_event_info*
  store %struct.apm_event_info* %104, %struct.apm_event_info** %16, align 8
  %105 = load %struct.acpi_softc*, %struct.acpi_softc** %14, align 8
  %106 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ACPI_STATE_S3, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* @PMEV_STANDBYREQ, align 4
  %112 = load %struct.apm_event_info*, %struct.apm_event_info** %16, align 8
  %113 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %118

114:                                              ; preds = %102
  %115 = load i32, i32* @PMEV_SUSPENDREQ, align 4
  %116 = load %struct.apm_event_info*, %struct.apm_event_info** %16, align 8
  %117 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %110
  %119 = load %struct.apm_event_info*, %struct.apm_event_info** %16, align 8
  %120 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = load i32, i32* @APM_EV_NOTIFIED, align 4
  %122 = load %struct.apm_clone_data*, %struct.apm_clone_data** %13, align 8
  %123 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.apm_event_info*, %struct.apm_event_info** %16, align 8
  %125 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %130

128:                                              ; preds = %96, %88
  %129 = load i32, i32* @EAGAIN, align 4
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %128, %118
  %131 = load i32, i32* @acpi, align 4
  %132 = call i32 @ACPI_UNLOCK(i32 %131)
  br label %219

133:                                              ; preds = %5
  %134 = call i32 @acpi_capm_get_info(%struct.apm_info* %15)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* @ENXIO, align 4
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i64, i64* %9, align 8
  %140 = inttoptr i64 %139 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %140, %struct.TYPE_2__** %17, align 8
  %141 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %15, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  %145 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %15, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %15, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %15, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  %157 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %15, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %15, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  br label %219

165:                                              ; preds = %5
  %166 = load i64, i64* %9, align 8
  %167 = inttoptr i64 %166 to %struct.apm_info*
  %168 = call i32 @acpi_capm_get_info(%struct.apm_info* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @ENXIO, align 4
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %170, %165
  br label %219

173:                                              ; preds = %5
  %174 = load i64, i64* %9, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @acpi_capm_get_pwstatus(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* @ENXIO, align 4
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %178, %173
  br label %219

181:                                              ; preds = %5
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @FWRITE, align 4
  %184 = and i32 %182, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* @EPERM, align 4
  store i32 %187, i32* %6, align 4
  br label %221

188:                                              ; preds = %181
  store i32 1, i32* @apm_active, align 4
  br label %219

189:                                              ; preds = %5
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @FWRITE, align 4
  %192 = and i32 %190, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* @EPERM, align 4
  store i32 %195, i32* %6, align 4
  br label %221

196:                                              ; preds = %189
  store i32 0, i32* @apm_active, align 4
  br label %219

197:                                              ; preds = %5
  br label %219

198:                                              ; preds = %5
  br label %219

199:                                              ; preds = %5
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @FWRITE, align 4
  %202 = and i32 %200, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* @EPERM, align 4
  store i32 %205, i32* %6, align 4
  br label %221

206:                                              ; preds = %199
  br label %219

207:                                              ; preds = %5
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @FWRITE, align 4
  %210 = and i32 %208, %209
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @EPERM, align 4
  store i32 %213, i32* %6, align 4
  br label %221

214:                                              ; preds = %207
  %215 = load i64, i64* %9, align 8
  %216 = call i32 @bzero(i64 %215, i32 4)
  br label %219

217:                                              ; preds = %5
  %218 = load i32, i32* @EINVAL, align 4
  store i32 %218, i32* %12, align 4
  br label %219

219:                                              ; preds = %217, %214, %206, %198, %197, %196, %188, %180, %172, %138, %130, %87, %55
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %219, %212, %204, %194, %186, %61, %29
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @acpi_ReqSleepState(%struct.acpi_softc*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @acpi_AckSleepState(%struct.apm_clone_data*, i32) #1

declare dso_local i32 @ACPI_LOCK(i32) #1

declare dso_local i32 @ACPI_UNLOCK(i32) #1

declare dso_local i32 @acpi_capm_get_info(%struct.apm_info*) #1

declare dso_local i32 @acpi_capm_get_pwstatus(i32) #1

declare dso_local i32 @bzero(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
