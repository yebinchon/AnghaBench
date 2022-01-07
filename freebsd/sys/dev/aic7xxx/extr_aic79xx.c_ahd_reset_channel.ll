; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_reset_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_reset_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, %struct.ahd_tmode_tstate**, i32* }
%struct.ahd_tmode_tstate = type { %struct.ahd_tmode_lstate** }
%struct.ahd_tmode_lstate = type { i32 }
%struct.ahd_devinfo = type { i32 }

@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i64 0, align 8
@SCSISEQ0 = common dso_local global i32 0, align 4
@SCSISEQ1 = common dso_local global i32 0, align 4
@DFFSTAT = common dso_local global i32 0, align 4
@CURRFIFO = common dso_local global i64 0, align 8
@CURRFIFO_1 = common dso_local global i64 0, align 8
@DFCNTRL = common dso_local global i32 0, align 4
@SCSIEN = common dso_local global i64 0, align 8
@HDMAEN = common dso_local global i64 0, align 8
@HDMAENACK = common dso_local global i64 0, align 8
@SIMODE1 = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i64 0, align 8
@ENSCSIRST = common dso_local global i64 0, align 8
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@AHD_WIDE = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@AHD_RESET_POLL_ACTIVE = common dso_local global i32 0, align 4
@ahd_reset_poll = common dso_local global i32 0, align 4
@AHD_NUM_LUNS = common dso_local global i64 0, align 8
@AHD_TARGETROLE = common dso_local global i32 0, align 4
@EVENT_TYPE_BUS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_reset_channel(%struct.ahd_softc* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahd_devinfo, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ahd_devinfo, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %18 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %19 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %20 = load i8, i8* %5, align 1
  %21 = load i32, i32* @ROLE_UNKNOWN, align 4
  %22 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %7, i64 %17, i64 %18, i32 %19, i8 signext %20, i32 %21)
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %24 = call i32 @ahd_pause(%struct.ahd_softc* %23)
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %26 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %25)
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %28 = load i64, i64* @AHD_MODE_SCSI, align 8
  %29 = load i64, i64* @AHD_MODE_SCSI, align 8
  %30 = call i32 @ahd_set_modes(%struct.ahd_softc* %27, i64 %28, i64 %29)
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %32 = load i32, i32* @SCSISEQ0, align 4
  %33 = call i32 @ahd_outb(%struct.ahd_softc* %31, i32 %32, i64 0)
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %35 = load i32, i32* @SCSISEQ1, align 4
  %36 = call i32 @ahd_outb(%struct.ahd_softc* %34, i32 %35, i64 0)
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %38 = load i32, i32* @DFFSTAT, align 4
  %39 = call i64 @ahd_inb(%struct.ahd_softc* %37, i32 %38)
  %40 = load i64, i64* @CURRFIFO, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %12, align 8
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @CURRFIFO_1, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %46

46:                                               ; preds = %45, %3
  br label %47

47:                                               ; preds = %84, %46
  %48 = load i64, i64* @CURRFIFO_1, align 8
  %49 = load i64, i64* %13, align 8
  %50 = xor i64 %49, %48
  store i64 %50, i64* %13, align 8
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @ahd_set_modes(%struct.ahd_softc* %51, i64 %52, i64 %53)
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %56 = load i32, i32* @DFCNTRL, align 4
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %58 = load i32, i32* @DFCNTRL, align 4
  %59 = call i64 @ahd_inb(%struct.ahd_softc* %57, i32 %58)
  %60 = load i64, i64* @SCSIEN, align 8
  %61 = load i64, i64* @HDMAEN, align 8
  %62 = or i64 %60, %61
  %63 = xor i64 %62, -1
  %64 = and i64 %59, %63
  %65 = call i32 @ahd_outb(%struct.ahd_softc* %55, i32 %56, i64 %64)
  br label %66

66:                                               ; preds = %73, %47
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %68 = load i32, i32* @DFCNTRL, align 4
  %69 = call i64 @ahd_inb(%struct.ahd_softc* %67, i32 %68)
  %70 = load i64, i64* @HDMAENACK, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 @aic_delay(i32 10)
  br label %66

75:                                               ; preds = %66
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %77 = load i64, i64* @AHD_MODE_SCSI, align 8
  %78 = load i64, i64* @AHD_MODE_SCSI, align 8
  %79 = call i32 @ahd_set_modes(%struct.ahd_softc* %76, i64 %77, i64 %78)
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %81 = load i32, i32* @DFFSTAT, align 4
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @ahd_outb(%struct.ahd_softc* %80, i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %47, label %88

88:                                               ; preds = %84
  %89 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %90 = call i32 @ahd_clear_msg_state(%struct.ahd_softc* %89)
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %92 = load i32, i32* @SIMODE1, align 4
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %94 = load i32, i32* @SIMODE1, align 4
  %95 = call i64 @ahd_inb(%struct.ahd_softc* %93, i32 %94)
  %96 = load i64, i64* @ENBUSFREE, align 8
  %97 = load i64, i64* @ENSCSIRST, align 8
  %98 = or i64 %96, %97
  %99 = xor i64 %98, -1
  %100 = and i64 %95, %99
  %101 = call i32 @ahd_outb(%struct.ahd_softc* %91, i32 %92, i64 %100)
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %106 = call i32 @ahd_reset_current_bus(%struct.ahd_softc* %105)
  br label %107

107:                                              ; preds = %104, %88
  %108 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %109 = call i32 @ahd_clear_intstat(%struct.ahd_softc* %108)
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %111 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %112 = load i8, i8* %5, align 1
  %113 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %114 = load i32, i32* @SCB_LIST_NULL, align 4
  %115 = load i32, i32* @ROLE_UNKNOWN, align 4
  %116 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %117 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %110, i64 %111, i8 signext %112, i32 %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %119 = call i32 @ahd_clear_fifo(%struct.ahd_softc* %118, i32 0)
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %121 = call i32 @ahd_clear_fifo(%struct.ahd_softc* %120, i32 1)
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %123 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AHD_WIDE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 15, i32 7
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %131

131:                                              ; preds = %168, %107
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp ule i64 %132, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %137 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %136, i32 0, i32 3
  %138 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %138, i64 %139
  %141 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %140, align 8
  %142 = icmp eq %struct.ahd_tmode_tstate* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %168

144:                                              ; preds = %135
  store i64 0, i64* %8, align 8
  br label %145

145:                                              ; preds = %164, %144
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = icmp ule i64 %146, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %145
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %153 = load i32, i32* @ROLE_UNKNOWN, align 4
  %154 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %14, i64 %150, i64 %151, i32 %152, i8 signext 65, i32 %153)
  %155 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %156 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %157 = load i32, i32* @AHD_TRANS_CUR, align 4
  %158 = load i32, i32* @TRUE, align 4
  %159 = call i32 @ahd_set_width(%struct.ahd_softc* %155, %struct.ahd_devinfo* %14, i32 %156, i32 %157, i32 %158)
  %160 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %161 = load i32, i32* @AHD_TRANS_CUR, align 4
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %160, %struct.ahd_devinfo* %14, i32 0, i32 0, i32 0, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %149
  %165 = load i64, i64* %8, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %8, align 8
  br label %145

167:                                              ; preds = %145
  br label %168

168:                                              ; preds = %167, %143
  %169 = load i64, i64* %9, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %9, align 8
  br label %131

171:                                              ; preds = %131
  %172 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %173 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %7, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %176 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %177 = load i32, i32* @AC_BUS_RESET, align 4
  %178 = call i32 @ahd_send_async(%struct.ahd_softc* %172, i32 %174, i64 %175, i32 %176, i32 %177, i32* null)
  %179 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %180 = call i32 @ahd_restart(%struct.ahd_softc* %179)
  %181 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %182 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @AHD_RESET_POLL_ACTIVE, align 4
  %185 = and i32 %183, %184
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %171
  %188 = load i32, i32* @AHD_RESET_POLL_ACTIVE, align 4
  %189 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %190 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %194 = call i32 @aic_freeze_simq(%struct.ahd_softc* %193)
  %195 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %196 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %195, i32 0, i32 2
  %197 = load i32, i32* @ahd_reset_poll, align 4
  %198 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %199 = call i32 @aic_timer_reset(i32* %196, i32 0, i32 %197, %struct.ahd_softc* %198)
  br label %200

200:                                              ; preds = %187, %171
  %201 = load i32, i32* %11, align 4
  ret i32 %201
}

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i64, i64, i32, i8 signext, i32) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_critical_section(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i64, i64) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i64) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @aic_delay(i32) #1

declare dso_local i32 @ahd_clear_msg_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_reset_current_bus(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_intstat(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_abort_scbs(%struct.ahd_softc*, i64, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_clear_fifo(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_send_async(%struct.ahd_softc*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @ahd_restart(%struct.ahd_softc*) #1

declare dso_local i32 @aic_freeze_simq(%struct.ahd_softc*) #1

declare dso_local i32 @aic_timer_reset(i32*, i32, i32, %struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
