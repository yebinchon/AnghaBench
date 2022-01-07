; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_suspend_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_suspend_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_softc = type { i32 }
%struct.siba_devinfo = type { i64, %struct.TYPE_2__, %struct.bhnd_resource** }
%struct.TYPE_2__ = type { i32 }
%struct.bhnd_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BHND_IOCTL_CLK_EN = common dso_local global i32 0, align 4
@BHND_IOCTL_CLK_FORCE = common dso_local global i32 0, align 4
@SIBA_CFG0_TMSTATELOW = common dso_local global i32 0, align 4
@SIBA_TML_RESET = common dso_local global i32 0, align 4
@TML_SICF = common dso_local global i32 0, align 4
@SIBA_TML_REJ = common dso_local global i32 0, align 4
@SIBA_TML_SICF_SHIFT = common dso_local global i32 0, align 4
@SIBA_TML_SICF_MASK = common dso_local global i32 0, align 4
@SIBA_CFG0_TMSTATEHIGH = common dso_local global i32 0, align 4
@SIBA_TMH_BUSY = common dso_local global i32 0, align 4
@SIBA_CFG0_IDLOW = common dso_local global i32 0, align 4
@SIBA_IDL_INIT = common dso_local global i32 0, align 4
@SIBA_CFG0_IMSTATE = common dso_local global i32 0, align 4
@SIBA_IM_RJ = common dso_local global i32 0, align 4
@SIBA_IM_BY = common dso_local global i32 0, align 4
@SIBA_PMU_PWRCTL = common dso_local global i64 0, align 8
@BHND_CLOCK_DYN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to release clock request: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @siba_suspend_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_suspend_hw(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.siba_softc*, align 8
  %9 = alloca %struct.siba_devinfo*, align 8
  %10 = alloca %struct.bhnd_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @device_get_parent(i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %195

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.siba_softc* @device_get_softc(i64 %24)
  store %struct.siba_softc* %25, %struct.siba_softc** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.siba_devinfo* @device_get_ivars(i64 %26)
  store %struct.siba_devinfo* %27, %struct.siba_devinfo** %9, align 8
  %28 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %29 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %28, i32 0, i32 2
  %30 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %29, align 8
  %31 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %30, i64 0
  %32 = load %struct.bhnd_resource*, %struct.bhnd_resource** %31, align 8
  store %struct.bhnd_resource* %32, %struct.bhnd_resource** %10, align 8
  %33 = icmp eq %struct.bhnd_resource* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @ENODEV, align 4
  store i32 %35, i32* %4, align 4
  br label %195

36:                                               ; preds = %23
  %37 = load i32, i32* @BHND_IOCTL_CLK_EN, align 4
  %38 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %15, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %195

46:                                               ; preds = %36
  %47 = load %struct.bhnd_resource*, %struct.bhnd_resource** %10, align 8
  %48 = load i32, i32* @SIBA_CFG0_TMSTATELOW, align 4
  %49 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @SIBA_TML_RESET, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %195

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @TML_SICF, align 4
  %58 = call i32 @SIBA_REG_GET(i32 %56, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @BHND_IOCTL_CLK_EN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @SIBA_TML_RESET, align 4
  %65 = load i32, i32* @SIBA_TML_REJ, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %66, %69
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @SIBA_TML_RESET, align 4
  %72 = load i32, i32* @SIBA_TML_REJ, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SIBA_TML_SICF_MASK, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %13, align 4
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %78 = load i32, i32* @SIBA_CFG0_TMSTATELOW, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @siba_write_target_state(i64 %76, %struct.siba_devinfo* %77, i32 %78, i32 %79, i32 %80)
  store i32 0, i32* %4, align 4
  br label %195

82:                                               ; preds = %55
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %85 = load i32, i32* @SIBA_CFG0_TMSTATELOW, align 4
  %86 = load i32, i32* @SIBA_TML_REJ, align 4
  %87 = load i32, i32* @SIBA_TML_REJ, align 4
  %88 = call i32 @siba_write_target_state(i64 %83, %struct.siba_devinfo* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %91 = load i32, i32* @SIBA_CFG0_TMSTATEHIGH, align 4
  %92 = load i32, i32* @SIBA_TMH_BUSY, align 4
  %93 = call i32 @siba_wait_target_state(i64 %89, %struct.siba_devinfo* %90, i32 %91, i32 0, i32 %92, i32 100000)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %4, align 4
  br label %195

98:                                               ; preds = %82
  %99 = load %struct.bhnd_resource*, %struct.bhnd_resource** %10, align 8
  %100 = load i32, i32* @SIBA_CFG0_IDLOW, align 4
  %101 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @SIBA_IDL_INIT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %98
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %109 = load i32, i32* @SIBA_CFG0_IMSTATE, align 4
  %110 = load i32, i32* @SIBA_IM_RJ, align 4
  %111 = load i32, i32* @SIBA_IM_RJ, align 4
  %112 = call i32 @siba_write_target_state(i64 %107, %struct.siba_devinfo* %108, i32 %109, i32 %110, i32 %111)
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %115 = load i32, i32* @SIBA_CFG0_IMSTATE, align 4
  %116 = load i32, i32* @SIBA_IM_BY, align 4
  %117 = call i32 @siba_wait_target_state(i64 %113, %struct.siba_devinfo* %114, i32 %115, i32 0, i32 %116, i32 100000)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %106
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %4, align 4
  br label %195

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122, %98
  %124 = load i32, i32* @SIBA_TML_RESET, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = or i32 %124, %127
  %129 = load i32, i32* @BHND_IOCTL_CLK_EN, align 4
  %130 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = or i32 %128, %131
  %133 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %134 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = or i32 %132, %135
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* @SIBA_TML_RESET, align 4
  %138 = load i32, i32* @SIBA_TML_SICF_MASK, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %13, align 4
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %142 = load i32, i32* @SIBA_CFG0_TMSTATELOW, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @siba_write_target_state(i64 %140, %struct.siba_devinfo* %141, i32 %142, i32 %143, i32 %144)
  %146 = call i32 @DELAY(i32 10)
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @SIBA_IDL_INIT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %123
  %152 = load i64, i64* %6, align 8
  %153 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %154 = load i32, i32* @SIBA_CFG0_IMSTATE, align 4
  %155 = load i32, i32* @SIBA_IM_RJ, align 4
  %156 = call i32 @siba_write_target_state(i64 %152, %struct.siba_devinfo* %153, i32 %154, i32 0, i32 %155)
  br label %157

157:                                              ; preds = %151, %123
  %158 = load i64, i64* %6, align 8
  %159 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %160 = load i32, i32* @SIBA_CFG0_TMSTATELOW, align 4
  %161 = load i32, i32* @BHND_IOCTL_CLK_EN, align 4
  %162 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @SIBA_TML_SICF_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = call i32 @siba_write_target_state(i64 %158, %struct.siba_devinfo* %159, i32 %160, i32 0, i32 %165)
  %167 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %168 = call i32 @SIBA_LOCK(%struct.siba_softc* %167)
  %169 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %170 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SIBA_PMU_PWRCTL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %157
  %175 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %176 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i32, i32* @BHND_CLOCK_DYN, align 4
  %181 = call i32 @bhnd_pwrctl_request_clock(i32 %178, i64 %179, i32 %180)
  store i32 %181, i32* %16, align 4
  %182 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %183 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %182)
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %174
  %187 = load i64, i64* %6, align 8
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @device_printf(i64 %187, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %16, align 4
  store i32 %190, i32* %4, align 4
  br label %195

191:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %195

192:                                              ; preds = %157
  %193 = load %struct.siba_softc*, %struct.siba_softc** %8, align 8
  %194 = call i32 @SIBA_UNLOCK(%struct.siba_softc* %193)
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %192, %191, %186, %120, %96, %63, %54, %44, %34, %21
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.siba_softc* @device_get_softc(i64) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @bhnd_bus_read_4(%struct.bhnd_resource*, i32) #1

declare dso_local i32 @SIBA_REG_GET(i32, i32) #1

declare dso_local i32 @siba_write_target_state(i64, %struct.siba_devinfo*, i32, i32, i32) #1

declare dso_local i32 @siba_wait_target_state(i64, %struct.siba_devinfo*, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @SIBA_LOCK(%struct.siba_softc*) #1

declare dso_local i32 @bhnd_pwrctl_request_clock(i32, i64, i32) #1

declare dso_local i32 @SIBA_UNLOCK(%struct.siba_softc*) #1

declare dso_local i32 @device_printf(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
