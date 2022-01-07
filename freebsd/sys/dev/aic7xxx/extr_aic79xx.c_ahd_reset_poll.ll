; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_reset_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_reset_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSCSIRSTI = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@SCSIRSTI = common dso_local global i32 0, align 4
@AHD_RESET_POLL_MS = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENSCSIRST = common dso_local global i32 0, align 4
@SCSISEQ_TEMPLATE = common dso_local global i32 0, align 4
@SCSISEQ1 = common dso_local global i32 0, align 4
@ENSELI = common dso_local global i32 0, align 4
@ENRSELI = common dso_local global i32 0, align 4
@ENAUTOATNP = common dso_local global i32 0, align 4
@AHD_RESET_POLL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ahd_reset_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_reset_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ahd_softc*
  store %struct.ahd_softc* %6, %struct.ahd_softc** %3, align 8
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %8 = call i32 @ahd_lock(%struct.ahd_softc* %7)
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = call i32 @ahd_pause(%struct.ahd_softc* %9)
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = call i32 @ahd_update_modes(%struct.ahd_softc* %11)
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = load i32, i32* @AHD_MODE_SCSI, align 4
  %15 = load i32, i32* @AHD_MODE_SCSI, align 4
  %16 = call i32 @ahd_set_modes(%struct.ahd_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = load i32, i32* @CLRSINT1, align 4
  %19 = load i32, i32* @CLRSCSIRSTI, align 4
  %20 = call i32 @ahd_outb(%struct.ahd_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = load i32, i32* @SSTAT1, align 4
  %23 = call i32 @ahd_inb(%struct.ahd_softc* %21, i32 %22)
  %24 = load i32, i32* @SCSIRSTI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %28, i32 0, i32 1
  %30 = load i32, i32* @AHD_RESET_POLL_MS, align 4
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %32 = call i32 @aic_timer_reset(i32* %29, i32 %30, void (i8*)* @ahd_reset_poll, %struct.ahd_softc* %31)
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %34 = call i32 @ahd_unpause(%struct.ahd_softc* %33)
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %36 = call i32 @ahd_unlock(%struct.ahd_softc* %35)
  br label %71

37:                                               ; preds = %1
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %39 = load i32, i32* @SIMODE1, align 4
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %41 = load i32, i32* @SIMODE1, align 4
  %42 = call i32 @ahd_inb(%struct.ahd_softc* %40, i32 %41)
  %43 = load i32, i32* @ENSCSIRST, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ahd_outb(%struct.ahd_softc* %38, i32 %39, i32 %44)
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %47 = load i32, i32* @SCSISEQ_TEMPLATE, align 4
  %48 = call i32 @ahd_inb(%struct.ahd_softc* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %50 = load i32, i32* @SCSISEQ1, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @ENSELI, align 4
  %53 = load i32, i32* @ENRSELI, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ENAUTOATNP, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = call i32 @ahd_outb(%struct.ahd_softc* %49, i32 %50, i32 %57)
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %60 = call i32 @ahd_unpause(%struct.ahd_softc* %59)
  %61 = load i32, i32* @AHD_RESET_POLL_ACTIVE, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %68 = call i32 @aic_release_simq(%struct.ahd_softc* %67)
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %70 = call i32 @ahd_unlock(%struct.ahd_softc* %69)
  br label %71

71:                                               ; preds = %37, %27
  ret void
}

declare dso_local i32 @ahd_lock(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_update_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @aic_timer_reset(i32*, i32, void (i8*)*, %struct.ahd_softc*) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*) #1

declare dso_local i32 @aic_release_simq(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
