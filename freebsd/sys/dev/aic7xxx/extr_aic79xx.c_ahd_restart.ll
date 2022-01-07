; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SCSISIGO = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@MSG_NOOP = common dso_local global i32 0, align 4
@SXFRCTL1 = common dso_local global i32 0, align 4
@BITBUCKET = common dso_local global i32 0, align 4
@SEQINTCTL = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@P_BUSFREE = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@TQINPOS = common dso_local global i32 0, align 4
@SCSISEQ1 = common dso_local global i32 0, align 4
@SCSISEQ_TEMPLATE = common dso_local global i32 0, align 4
@ENSELI = common dso_local global i32 0, align 4
@ENRSELI = common dso_local global i32 0, align 4
@ENAUTOATNP = common dso_local global i32 0, align 4
@AHD_MODE_CCHAN = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSEQINT = common dso_local global i32 0, align 4
@SEQCTL0 = common dso_local global i32 0, align 4
@FASTMODE = common dso_local global i32 0, align 4
@SEQRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_restart(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %3 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %4 = call i32 @ahd_pause(%struct.ahd_softc* %3)
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = load i32, i32* @AHD_MODE_SCSI, align 4
  %7 = load i32, i32* @AHD_MODE_SCSI, align 4
  %8 = call i32 @ahd_set_modes(%struct.ahd_softc* %5, i32 %6, i32 %7)
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %10 = call i32 @ahd_clear_msg_state(%struct.ahd_softc* %9)
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %12 = load i32, i32* @SCSISIGO, align 4
  %13 = call i32 @ahd_outb(%struct.ahd_softc* %11, i32 %12, i32 0)
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = load i32, i32* @MSG_OUT, align 4
  %16 = load i32, i32* @MSG_NOOP, align 4
  %17 = call i32 @ahd_outb(%struct.ahd_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %19 = load i32, i32* @SXFRCTL1, align 4
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %21 = load i32, i32* @SXFRCTL1, align 4
  %22 = call i32 @ahd_inb(%struct.ahd_softc* %20, i32 %21)
  %23 = load i32, i32* @BITBUCKET, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @ahd_outb(%struct.ahd_softc* %18, i32 %19, i32 %25)
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = load i32, i32* @SEQINTCTL, align 4
  %29 = call i32 @ahd_outb(%struct.ahd_softc* %27, i32 %28, i32 0)
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %31 = load i32, i32* @LASTPHASE, align 4
  %32 = load i32, i32* @P_BUSFREE, align 4
  %33 = call i32 @ahd_outb(%struct.ahd_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i32, i32* @SEQ_FLAGS, align 4
  %36 = call i32 @ahd_outb(%struct.ahd_softc* %34, i32 %35, i32 0)
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %38 = load i32, i32* @SAVED_SCSIID, align 4
  %39 = call i32 @ahd_outb(%struct.ahd_softc* %37, i32 %38, i32 255)
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %41 = load i32, i32* @SAVED_LUN, align 4
  %42 = call i32 @ahd_outb(%struct.ahd_softc* %40, i32 %41, i32 255)
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %44 = load i32, i32* @TQINPOS, align 4
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ahd_outb(%struct.ahd_softc* %43, i32 %44, i32 %47)
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %50 = load i32, i32* @SCSISEQ1, align 4
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %52 = load i32, i32* @SCSISEQ_TEMPLATE, align 4
  %53 = call i32 @ahd_inb(%struct.ahd_softc* %51, i32 %52)
  %54 = load i32, i32* @ENSELI, align 4
  %55 = load i32, i32* @ENRSELI, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ENAUTOATNP, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = call i32 @ahd_outb(%struct.ahd_softc* %49, i32 %50, i32 %59)
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %62 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %63 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %64 = call i32 @ahd_set_modes(%struct.ahd_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %66 = load i32, i32* @CLRINT, align 4
  %67 = load i32, i32* @CLRSEQINT, align 4
  %68 = call i32 @ahd_outb(%struct.ahd_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %70 = load i32, i32* @SEQCTL0, align 4
  %71 = load i32, i32* @FASTMODE, align 4
  %72 = load i32, i32* @SEQRESET, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @ahd_outb(%struct.ahd_softc* %69, i32 %70, i32 %73)
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %76 = call i32 @ahd_unpause(%struct.ahd_softc* %75)
  ret void
}

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_clear_msg_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
