; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_load_microcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, i64* }

@.str = private unnamed_addr constant [6 x i8] c"runfw\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed loadfirmware of file %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid firmware size (should be 8KB)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"firmware checksum failed\0A\00", align 1
@RUN_FLAG_FWLOAD_NEEDED = common dso_local global i32 0, align 4
@RT2870_FW_BASE = common dso_local global i32 0, align 4
@RT2860_H2M_MAILBOX_CID = common dso_local global i32 0, align 4
@RT2860_H2M_MAILBOX_STATUS = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@RT2870_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"firmware reset failed\0A\00", align 1
@RT2860_H2M_BBPAGENT = common dso_local global i32 0, align 4
@RT2860_H2M_MAILBOX = common dso_local global i32 0, align 4
@RT2860_H2M_INTSRC = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_RFRESET = common dso_local global i32 0, align 4
@RT2860_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_MCU_READY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"timeout waiting for MCU to initialize\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"firmware %s ver. %u.%u loaded\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"RT2870\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"RT3071\00", align 1
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*)* @run_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_load_microcode(%struct.run_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  %12 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %13 = call i32 @RUN_UNLOCK(%struct.run_softc* %12)
  %14 = call %struct.firmware* @firmware_get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.firmware* %14, %struct.firmware** %5, align 8
  %15 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %16 = call i32 @RUN_LOCK(%struct.run_softc* %15)
  %17 = load %struct.firmware*, %struct.firmware** %5, align 8
  %18 = icmp eq %struct.firmware* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %21 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %2, align 4
  br label %187

25:                                               ; preds = %1
  %26 = load %struct.firmware*, %struct.firmware** %5, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 8192
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %32 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %9, align 4
  br label %182

36:                                               ; preds = %25
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %6, align 8
  %40 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %41 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 10336
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %46 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 10354
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %51 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 12400
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64*, i64** %6, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 4096
  store i64* %56, i64** %6, align 8
  br label %57

57:                                               ; preds = %54, %49, %44, %36
  %58 = load %struct.firmware*, %struct.firmware** %5, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  store i64* %60, i64** %10, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @be64toh(i32 271057424)
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %68 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %9, align 4
  br label %182

72:                                               ; preds = %57
  %73 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %74 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RUN_FLAG_FWLOAD_NEEDED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %81 = load i32, i32* @RT2870_FW_BASE, align 4
  %82 = load i64*, i64** %6, align 8
  %83 = call i32 @run_write_region_1(%struct.run_softc* %80, i32 %81, i64* %82, i32 4096)
  %84 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %85 = load i32, i32* @RT2860_H2M_MAILBOX_CID, align 4
  %86 = call i32 @run_write(%struct.run_softc* %84, i32 %85, i32 -1)
  %87 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %88 = load i32, i32* @RT2860_H2M_MAILBOX_STATUS, align 4
  %89 = call i32 @run_write(%struct.run_softc* %87, i32 %88, i32 -1)
  br label %90

90:                                               ; preds = %79, %72
  %91 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @RT2870_RESET, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @USETW(i32 %96, i32 8)
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @USETW(i32 %99, i32 0)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @USETW(i32 %102, i32 0)
  %104 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %105 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %108 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %107, i32 0, i32 3
  %109 = call i32 @usbd_do_request(i32 %106, i32* %108, %struct.TYPE_3__* %4, i32* null)
  store i32 %109, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %90
  %112 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %113 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %182

116:                                              ; preds = %90
  %117 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %118 = call i32 @run_delay(%struct.run_softc* %117, i32 10)
  %119 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %120 = load i32, i32* @RT2860_H2M_BBPAGENT, align 4
  %121 = call i32 @run_write(%struct.run_softc* %119, i32 %120, i32 0)
  %122 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %123 = load i32, i32* @RT2860_H2M_MAILBOX, align 4
  %124 = call i32 @run_write(%struct.run_softc* %122, i32 %123, i32 0)
  %125 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %126 = load i32, i32* @RT2860_H2M_INTSRC, align 4
  %127 = call i32 @run_write(%struct.run_softc* %125, i32 %126, i32 0)
  %128 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %129 = load i32, i32* @RT2860_MCU_CMD_RFRESET, align 4
  %130 = call i32 @run_mcu_cmd(%struct.run_softc* %128, i32 %129, i32 0)
  store i32 %130, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %116
  br label %182

133:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %152, %133
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 1000
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %139 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %140 = call i32 @run_read(%struct.run_softc* %138, i32 %139, i32* %7)
  store i32 %140, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %182

143:                                              ; preds = %137
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @RT2860_MCU_READY, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %155

149:                                              ; preds = %143
  %150 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %151 = call i32 @run_delay(%struct.run_softc* %150, i32 10)
  br label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %134

155:                                              ; preds = %148, %134
  %156 = load i32, i32* %8, align 4
  %157 = icmp eq i32 %156, 1000
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %160 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %161, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %163, i32* %9, align 4
  br label %182

164:                                              ; preds = %155
  %165 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %166 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i64*, i64** %6, align 8
  %169 = load %struct.firmware*, %struct.firmware** %5, align 8
  %170 = getelementptr inbounds %struct.firmware, %struct.firmware* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = icmp eq i64* %168, %171
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %175 = load i64*, i64** %6, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 4092
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %6, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 4093
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i32, i8*, ...) @device_printf(i32 %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %174, i64 %177, i64 %180)
  br label %182

182:                                              ; preds = %164, %158, %142, %132, %111, %66, %30
  %183 = load %struct.firmware*, %struct.firmware** %5, align 8
  %184 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %185 = call i32 @firmware_put(%struct.firmware* %183, i32 %184)
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %182, %19
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @be64toh(i32) #1

declare dso_local i32 @run_write_region_1(%struct.run_softc*, i32, i64*, i32) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(i32, i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @run_mcu_cmd(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
