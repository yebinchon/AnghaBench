; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32 }

@SCSISIGO = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@MSG_NOOP = common dso_local global i32 0, align 4
@SXFRCTL1 = common dso_local global i32 0, align 4
@BITBUCKET = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@P_BUSFREE = common dso_local global i32 0, align 4
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@TQINPOS = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@SCSISEQ_TEMPLATE = common dso_local global i32 0, align 4
@ENSELI = common dso_local global i32 0, align 4
@ENRSELI = common dso_local global i32 0, align 4
@ENAUTOATNP = common dso_local global i32 0, align 4
@AHC_CMD_CHAN = common dso_local global i32 0, align 4
@CCSCBCNT = common dso_local global i32 0, align 4
@CCSGCTL = common dso_local global i32 0, align 4
@CCSCBCTL = common dso_local global i32 0, align 4
@SEQ_FLAGS2 = common dso_local global i32 0, align 4
@SCB_DMA = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSEQINT = common dso_local global i32 0, align 4
@MWI_RESIDUAL = common dso_local global i32 0, align 4
@SEQCTL = common dso_local global i32 0, align 4
@SEQADDR0 = common dso_local global i32 0, align 4
@SEQADDR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_restart(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %3 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %4 = call i32 @ahc_pause(%struct.ahc_softc* %3)
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = call i32 @ahc_clear_msg_state(%struct.ahc_softc* %5)
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %8 = load i32, i32* @SCSISIGO, align 4
  %9 = call i32 @ahc_outb(%struct.ahc_softc* %7, i32 %8, i32 0)
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = load i32, i32* @MSG_OUT, align 4
  %12 = load i32, i32* @MSG_NOOP, align 4
  %13 = call i32 @ahc_outb(%struct.ahc_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %15 = load i32, i32* @SXFRCTL1, align 4
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = load i32, i32* @SXFRCTL1, align 4
  %18 = call i32 @ahc_inb(%struct.ahc_softc* %16, i32 %17)
  %19 = load i32, i32* @BITBUCKET, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @ahc_outb(%struct.ahc_softc* %14, i32 %15, i32 %21)
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %24 = load i32, i32* @LASTPHASE, align 4
  %25 = load i32, i32* @P_BUSFREE, align 4
  %26 = call i32 @ahc_outb(%struct.ahc_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = load i32, i32* @SAVED_SCSIID, align 4
  %29 = call i32 @ahc_outb(%struct.ahc_softc* %27, i32 %28, i32 255)
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %31 = load i32, i32* @SAVED_LUN, align 4
  %32 = call i32 @ahc_outb(%struct.ahc_softc* %30, i32 %31, i32 255)
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %34 = load i32, i32* @TQINPOS, align 4
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ahc_outb(%struct.ahc_softc* %33, i32 %34, i32 %37)
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %40 = load i32, i32* @SCSISEQ, align 4
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %42 = load i32, i32* @SCSISEQ_TEMPLATE, align 4
  %43 = call i32 @ahc_inb(%struct.ahc_softc* %41, i32 %42)
  %44 = load i32, i32* @ENSELI, align 4
  %45 = load i32, i32* @ENRSELI, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ENAUTOATNP, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = call i32 @ahc_outb(%struct.ahc_softc* %39, i32 %40, i32 %49)
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %52 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AHC_CMD_CHAN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %1
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %59 = load i32, i32* @CCSCBCNT, align 4
  %60 = call i32 @ahc_outb(%struct.ahc_softc* %58, i32 %59, i32 0)
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %62 = load i32, i32* @CCSGCTL, align 4
  %63 = call i32 @ahc_outb(%struct.ahc_softc* %61, i32 %62, i32 0)
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %65 = load i32, i32* @CCSCBCTL, align 4
  %66 = call i32 @ahc_outb(%struct.ahc_softc* %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %57, %1
  %68 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %69 = load i32, i32* @SEQ_FLAGS2, align 4
  %70 = call i32 @ahc_inb(%struct.ahc_softc* %68, i32 %69)
  %71 = load i32, i32* @SCB_DMA, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %76 = call i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc* %75)
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %78 = load i32, i32* @SEQ_FLAGS2, align 4
  %79 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %80 = load i32, i32* @SEQ_FLAGS2, align 4
  %81 = call i32 @ahc_inb(%struct.ahc_softc* %79, i32 %80)
  %82 = load i32, i32* @SCB_DMA, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @ahc_outb(%struct.ahc_softc* %77, i32 %78, i32 %84)
  br label %86

86:                                               ; preds = %74, %67
  %87 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %88 = load i32, i32* @CLRINT, align 4
  %89 = load i32, i32* @CLRSEQINT, align 4
  %90 = call i32 @ahc_outb(%struct.ahc_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %92 = load i32, i32* @MWI_RESIDUAL, align 4
  %93 = call i32 @ahc_outb(%struct.ahc_softc* %91, i32 %92, i32 0)
  %94 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %95 = load i32, i32* @SEQCTL, align 4
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ahc_outb(%struct.ahc_softc* %94, i32 %95, i32 %98)
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %101 = load i32, i32* @SEQADDR0, align 4
  %102 = call i32 @ahc_outb(%struct.ahc_softc* %100, i32 %101, i32 0)
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %104 = load i32, i32* @SEQADDR1, align 4
  %105 = call i32 @ahc_outb(%struct.ahc_softc* %103, i32 %104, i32 0)
  %106 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %107 = call i32 @ahc_unpause(%struct.ahc_softc* %106)
  ret void
}

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_clear_msg_state(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
