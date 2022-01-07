; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_reset_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_reset_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, %struct.ahc_tmode_tstate**, i32* }
%struct.ahc_tmode_tstate = type { %struct.ahc_tmode_lstate** }
%struct.ahc_tmode_lstate = type { i32 }
%struct.ahc_devinfo = type { i32 }

@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@AHC_TWIN = common dso_local global i32 0, align 4
@SELBUSB = common dso_local global i64 0, align 8
@SCSISEQ_TEMPLATE = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i64 0, align 8
@ENSCSIRST = common dso_local global i64 0, align 8
@SCSISEQ = common dso_local global i32 0, align 4
@ENSELI = common dso_local global i64 0, align 8
@ENRSELI = common dso_local global i64 0, align 8
@ENAUTOATNP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHC_TRANS_CUR = common dso_local global i32 0, align 4
@AHC_NUM_LUNS = common dso_local global i64 0, align 8
@AHC_TARGETROLE = common dso_local global i32 0, align 4
@EVENT_TYPE_BUS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_reset_channel(%struct.ahc_softc* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahc_devinfo, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca %struct.ahc_devinfo, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %21 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %22 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %23 = load i8, i8* %5, align 1
  %24 = load i32, i32* @ROLE_UNKNOWN, align 4
  %25 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %7, i64 %20, i64 %21, i32 %22, i8 signext %23, i32 %24)
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %27 = call i32 @ahc_pause(%struct.ahc_softc* %26)
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %29 = call i32 @ahc_clear_critical_section(%struct.ahc_softc* %28)
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %31 = call i32 @ahc_run_qoutfifo(%struct.ahc_softc* %30)
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %33 = load i32, i32* @SBLKCTL, align 4
  %34 = call i64 @ahc_inb(%struct.ahc_softc* %32, i32 %33)
  store i64 %34, i64* %11, align 8
  store i8 65, i8* %16, align 1
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AHC_TWIN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @SELBUSB, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8 66, i8* %16, align 1
  br label %47

47:                                               ; preds = %46, %41, %3
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %49 = load i32, i32* @SCSISEQ_TEMPLATE, align 4
  %50 = call i64 @ahc_inb(%struct.ahc_softc* %48, i32 %49)
  store i64 %50, i64* %12, align 8
  %51 = load i8, i8* %16, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %5, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %47
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %58 = load i32, i32* @SBLKCTL, align 4
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @SELBUSB, align 8
  %61 = xor i64 %59, %60
  %62 = call i32 @ahc_outb(%struct.ahc_softc* %57, i32 %58, i64 %61)
  %63 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %64 = load i32, i32* @SIMODE1, align 4
  %65 = call i64 @ahc_inb(%struct.ahc_softc* %63, i32 %64)
  %66 = load i64, i64* @ENBUSFREE, align 8
  %67 = load i64, i64* @ENSCSIRST, align 8
  %68 = or i64 %66, %67
  %69 = xor i64 %68, -1
  %70 = and i64 %65, %69
  store i64 %70, i64* %13, align 8
  %71 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %72 = load i32, i32* @SIMODE1, align 4
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @ahc_outb(%struct.ahc_softc* %71, i32 %72, i64 %73)
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %56
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %79 = call i32 @ahc_reset_current_bus(%struct.ahc_softc* %78)
  br label %80

80:                                               ; preds = %77, %56
  %81 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %82 = call i32 @ahc_clear_intstat(%struct.ahc_softc* %81)
  %83 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %84 = load i32, i32* @SCSISEQ, align 4
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* @ENSELI, align 8
  %87 = load i64, i64* @ENRSELI, align 8
  %88 = or i64 %86, %87
  %89 = load i64, i64* @ENAUTOATNP, align 8
  %90 = or i64 %88, %89
  %91 = and i64 %85, %90
  %92 = call i32 @ahc_outb(%struct.ahc_softc* %83, i32 %84, i64 %91)
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %94 = load i32, i32* @SBLKCTL, align 4
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @ahc_outb(%struct.ahc_softc* %93, i32 %94, i64 %95)
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %15, align 4
  br label %130

98:                                               ; preds = %47
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %100 = load i32, i32* @SIMODE1, align 4
  %101 = call i64 @ahc_inb(%struct.ahc_softc* %99, i32 %100)
  %102 = load i64, i64* @ENBUSFREE, align 8
  %103 = load i64, i64* @ENSCSIRST, align 8
  %104 = or i64 %102, %103
  %105 = xor i64 %104, -1
  %106 = and i64 %101, %105
  store i64 %106, i64* %13, align 8
  %107 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %108 = load i32, i32* @SIMODE1, align 4
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @ahc_outb(%struct.ahc_softc* %107, i32 %108, i64 %109)
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %115 = call i32 @ahc_reset_current_bus(%struct.ahc_softc* %114)
  br label %116

116:                                              ; preds = %113, %98
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %118 = call i32 @ahc_clear_intstat(%struct.ahc_softc* %117)
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %120 = load i32, i32* @SCSISEQ, align 4
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @ENSELI, align 8
  %123 = load i64, i64* @ENRSELI, align 8
  %124 = or i64 %122, %123
  %125 = load i64, i64* @ENAUTOATNP, align 8
  %126 = or i64 %124, %125
  %127 = and i64 %121, %126
  %128 = call i32 @ahc_outb(%struct.ahc_softc* %119, i32 %120, i64 %127)
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %116, %80
  %131 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %132 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %133 = load i8, i8* %5, align 1
  %134 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %135 = load i32, i32* @SCB_LIST_NULL, align 4
  %136 = load i32, i32* @ROLE_UNKNOWN, align 4
  %137 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %138 = call i32 @ahc_abort_scbs(%struct.ahc_softc* %131, i64 %132, i8 signext %133, i32 %134, i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %140 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AHC_WIDE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 15, i32 7
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %10, align 8
  %148 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %149 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %7, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %152 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %153 = load i32, i32* @AC_BUS_RESET, align 4
  %154 = call i32 @ahc_send_async(%struct.ahc_softc* %148, i32 %150, i64 %151, i32 %152, i32 %153, i32* null)
  store i64 0, i64* %9, align 8
  br label %155

155:                                              ; preds = %193, %130
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp ule i64 %156, %157
  br i1 %158, label %159, label %196

159:                                              ; preds = %155
  %160 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %161 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %160, i32 0, i32 2
  %162 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %161, align 8
  %163 = load i64, i64* %9, align 8
  %164 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %162, i64 %163
  %165 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %164, align 8
  %166 = icmp eq %struct.ahc_tmode_tstate* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %193

168:                                              ; preds = %159
  store i64 0, i64* %8, align 8
  br label %169

169:                                              ; preds = %189, %168
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* %10, align 8
  %172 = icmp ule i64 %170, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %169
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %177 = load i8, i8* %5, align 1
  %178 = load i32, i32* @ROLE_UNKNOWN, align 4
  %179 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %17, i64 %174, i64 %175, i32 %176, i8 signext %177, i32 %178)
  %180 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %181 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %182 = load i32, i32* @AHC_TRANS_CUR, align 4
  %183 = load i32, i32* @TRUE, align 4
  %184 = call i32 @ahc_set_width(%struct.ahc_softc* %180, %struct.ahc_devinfo* %17, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %186 = load i32, i32* @AHC_TRANS_CUR, align 4
  %187 = load i32, i32* @TRUE, align 4
  %188 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %185, %struct.ahc_devinfo* %17, i32* null, i32 0, i32 0, i32 0, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %173
  %190 = load i64, i64* %8, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %8, align 8
  br label %169

192:                                              ; preds = %169
  br label %193

193:                                              ; preds = %192, %167
  %194 = load i64, i64* %9, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %9, align 8
  br label %155

196:                                              ; preds = %155
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %201 = call i32 @ahc_restart(%struct.ahc_softc* %200)
  br label %205

202:                                              ; preds = %196
  %203 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %204 = call i32 @ahc_unpause(%struct.ahc_softc* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32, i32* %14, align 4
  ret i32 %206
}

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i64, i64, i32, i8 signext, i32) #1

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_clear_critical_section(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_run_qoutfifo(%struct.ahc_softc*) #1

declare dso_local i64 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i64) #1

declare dso_local i32 @ahc_reset_current_bus(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_clear_intstat(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_abort_scbs(%struct.ahc_softc*, i64, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_send_async(%struct.ahc_softc*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @ahc_set_width(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_restart(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
