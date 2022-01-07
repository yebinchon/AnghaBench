; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_reinitialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_reinitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"psm%d: current command byte: %04x (reinitialize).\0A\00", align 1
@KBD_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_INT = common dso_local global i32 0, align 4
@KBD_ENABLE_AUX_PORT = common dso_local global i32 0, align 4
@KBD_DISABLE_AUX_INT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"psm%d: unable to set the command byte (reinitialize).\0A\00", align 1
@PSM_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"psm%d: the aux device has gone! (reinitialize).\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PSM_OPEN = common dso_local global i32 0, align 4
@PSM_EV_OPEN_R = common dso_local global i32 0, align 4
@PSM_EV_OPEN_A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"psm%d: failed to enable the device (reinitialize).\0A\00", align 1
@KBD_KBD_CONTROL_BITS = common dso_local global i32 0, align 4
@KBD_DISABLE_AUX_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"psm%d: failed to disable the aux port (reinitialize).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @reinitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinitialize(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @kbdc_lock(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  store i32 %16, i32* %3, align 4
  br label %192

17:                                               ; preds = %2
  %18 = call i32 (...) @spltty()
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %21 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %23 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %22, i32 0, i32 7
  %24 = call i32 @callout_stop(i32* %23)
  %25 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %26 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @empty_both_buffers(i32 %27, i32 10)
  %29 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %30 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_controller_command_byte(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @LOG_DEBUG, align 4
  %34 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %35 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @VLOG(i32 2, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %58, label %41

41:                                               ; preds = %17
  %42 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %43 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %46 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kbdc_get_device_mask(i32 %47)
  %49 = load i32, i32* @KBD_DISABLE_KBD_PORT, align 4
  %50 = load i32, i32* @KBD_DISABLE_KBD_INT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @KBD_ENABLE_AUX_PORT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @KBD_DISABLE_AUX_INT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @set_controller_command_byte(i32 %44, i32 %48, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %41, %17
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @splx(i32 %59)
  %61 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %62 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @kbdc_lock(i32 %63, i32 %64)
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %68 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @log(i32 %66, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EIO, align 4
  store i32 %71, i32* %3, align 4
  br label %192

72:                                               ; preds = %41
  %73 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %74 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PSM_VALID, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %81 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @disable_aux_dev(i32 %82)
  %84 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %85 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @empty_aux_buffer(i32 %86, i32 10)
  br label %88

88:                                               ; preds = %79, %72
  %89 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %90 = call i32 @flushpackets(%struct.psm_softc* %89)
  %91 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %92 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %94 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %96 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %95, i32 0, i32 4
  %97 = call i32 @memset(i32* %96, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %131

100:                                              ; preds = %88
  %101 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %102 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %103 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %102, i32 0, i32 3
  %104 = call i64 @doinitialize(%struct.psm_softc* %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* @PSM_VALID, align 4
  %108 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %109 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %130

112:                                              ; preds = %100
  %113 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %114 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @restore_controller(i32 %115, i32 %116)
  %118 = load i32, i32* @PSM_VALID, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %121 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @LOG_ERR, align 4
  %125 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %126 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @log(i32 %124, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @ENXIO, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %112, %106
  br label %131

131:                                              ; preds = %130, %88
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @splx(i32 %132)
  %134 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %135 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PSM_OPEN, align 4
  %138 = load i32, i32* @PSM_EV_OPEN_R, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @PSM_EV_OPEN_A, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %136, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %131
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @doopen(%struct.psm_softc* %148, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load i32, i32* @LOG_ERR, align 4
  %155 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %156 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @log(i32 %154, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %153, %147
  br label %185

160:                                              ; preds = %144, %131
  %161 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %162 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %165 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @kbdc_get_device_mask(i32 %166)
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @KBD_DISABLE_AUX_PORT, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @KBD_DISABLE_AUX_INT, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @set_controller_command_byte(i32 %163, i32 %167, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %160
  %178 = load i32, i32* @LOG_ERR, align 4
  %179 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %180 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @log(i32 %178, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @EIO, align 4
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %177, %160
  br label %185

185:                                              ; preds = %184, %159
  %186 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %187 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @FALSE, align 4
  %190 = call i32 @kbdc_lock(i32 %188, i32 %189)
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %185, %58, %15
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @kbdc_lock(i32, i32) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @get_controller_command_byte(i32) #1

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @set_controller_command_byte(i32, i32, i32) #1

declare dso_local i32 @kbdc_get_device_mask(i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @disable_aux_dev(i32) #1

declare dso_local i32 @empty_aux_buffer(i32, i32) #1

declare dso_local i32 @flushpackets(%struct.psm_softc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @doinitialize(%struct.psm_softc*, i32*) #1

declare dso_local i32 @restore_controller(i32, i32) #1

declare dso_local i32 @doopen(%struct.psm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
