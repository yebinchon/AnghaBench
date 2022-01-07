; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_clear_intstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_clear_intstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSELTIMEO = common dso_local global i32 0, align 4
@CLRATNO = common dso_local global i32 0, align 4
@CLRSCSIRSTI = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i32 0, align 4
@CLRPHASECHG = common dso_local global i32 0, align 4
@CLRREQINIT = common dso_local global i32 0, align 4
@CLRSINT0 = common dso_local global i32 0, align 4
@CLRSELDO = common dso_local global i32 0, align 4
@CLRSELDI = common dso_local global i32 0, align 4
@CLRSELINGO = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_clear_intstat(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %3 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %4 = load i32, i32* @CLRSINT1, align 4
  %5 = load i32, i32* @CLRSELTIMEO, align 4
  %6 = load i32, i32* @CLRATNO, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CLRSCSIRSTI, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CLRBUSFREE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CLRSCSIPERR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CLRPHASECHG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CLRREQINIT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ahc_outb(%struct.ahc_softc* %3, i32 %4, i32 %17)
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %20 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %19)
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = load i32, i32* @CLRSINT0, align 4
  %23 = load i32, i32* @CLRSELDO, align 4
  %24 = load i32, i32* @CLRSELDI, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CLRSELINGO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ahc_outb(%struct.ahc_softc* %21, i32 %22, i32 %27)
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %30 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %29)
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %32 = load i32, i32* @CLRINT, align 4
  %33 = load i32, i32* @CLRSCSIINT, align 4
  %34 = call i32 @ahc_outb(%struct.ahc_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %35)
  ret void
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_flush_device_writes(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
