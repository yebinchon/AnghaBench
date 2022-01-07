; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_watchdog_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_watchdog_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.mxge_slice_state*, %struct.TYPE_13__*, i64 }
%struct.mxge_slice_state = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.pci_devinfo = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Watchdog reset!\0A\00", align 1
@PCIR_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"NIC disappeared!\0A\00", align 1
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"NIC rebooted, status = 0x%x\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to re-load f/w\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"NIC did not reboot, not resetting\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"watchdog reset failed\0A\00", align 1
@mxge_ticks = common dso_local global i32 0, align 4
@mxge_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @mxge_watchdog_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_watchdog_reset(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.pci_devinfo*, align 8
  %4 = alloca %struct.mxge_slice_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCIR_COMMAND, align 4
  %20 = call i32 @pci_read_config(i32 %18, i32 %19, i32 2)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 65535
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = call i32 @DELAY(i32 100000)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCIR_COMMAND, align 4
  %29 = call i32 @pci_read_config(i32 %27, i32 %28, i32 2)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 65535
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %23
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %150

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = call i32 @mxge_read_reboot(%struct.TYPE_12__* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %43
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 7
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load i32, i32* @LINK_STATE_DOWN, align 4
  %72 = call i32 @if_link_state_change(%struct.TYPE_13__* %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %60
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %89, %73
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 5
  %81 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %81, i64 %83
  store %struct.mxge_slice_state* %84, %struct.mxge_slice_state** %4, align 8
  %85 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %4, align 8
  %86 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = call i32 @mtx_lock(i32* %87)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %74

92:                                               ; preds = %74
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = call i32 @mxge_close(%struct.TYPE_12__* %93, i32 1)
  br label %95

95:                                               ; preds = %92, %43
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.pci_devinfo* @device_get_ivars(i32 %98)
  store %struct.pci_devinfo* %99, %struct.pci_devinfo** %3, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %104 = call i32 @pci_cfg_restore(i32 %102, %struct.pci_devinfo* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = call i32 @mxge_setup_cfg_space(%struct.TYPE_12__* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = call i32 @mxge_load_firmware(%struct.TYPE_12__* %107, i32 0)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %95
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %95
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = call i32 @mxge_open(%struct.TYPE_12__* %123)
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %122, %119
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %141, %125
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 5
  %133 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %133, i64 %135
  store %struct.mxge_slice_state* %136, %struct.mxge_slice_state** %4, align 8
  %137 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %4, align 8
  %138 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = call i32 @mtx_unlock(i32* %139)
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %126

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %116
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  br label %155

150:                                              ; preds = %38
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %178

163:                                              ; preds = %155
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load i32, i32* @mxge_ticks, align 4
  %175 = load i32, i32* @mxge_tick, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %177 = call i32 @callout_reset(i32* %173, i32 %174, i32 %175, %struct.TYPE_12__* %176)
  br label %178

178:                                              ; preds = %171, %158
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mxge_read_reboot(%struct.TYPE_12__*) #1

declare dso_local i32 @if_link_state_change(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mxge_close(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_cfg_restore(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @mxge_setup_cfg_space(%struct.TYPE_12__*) #1

declare dso_local i32 @mxge_load_firmware(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mxge_open(%struct.TYPE_12__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
