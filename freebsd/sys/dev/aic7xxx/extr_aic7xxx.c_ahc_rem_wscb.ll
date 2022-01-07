; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_rem_wscb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_rem_wscb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

@SCBPTR = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@WAITING_SCBH = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*, i32, i32)* @ahc_rem_wscb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_rem_wscb(%struct.ahc_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %10 = load i32, i32* @SCBPTR, align 4
  %11 = call i32 @ahc_inb(%struct.ahc_softc* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %13 = load i32, i32* @SCBPTR, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ahc_outb(%struct.ahc_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %17 = load i32, i32* @SCB_NEXT, align 4
  %18 = call i32 @ahc_inb(%struct.ahc_softc* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %20 = load i32, i32* @SCB_CONTROL, align 4
  %21 = call i32 @ahc_outb(%struct.ahc_softc* %19, i32 %20, i32 0)
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %23 = call i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SCB_LIST_NULL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %29 = load i32, i32* @WAITING_SCBH, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ahc_outb(%struct.ahc_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %33 = load i32, i32* @SCSISEQ, align 4
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %35 = load i32, i32* @SCSISEQ, align 4
  %36 = call i32 @ahc_inb(%struct.ahc_softc* %34, i32 %35)
  %37 = load i32, i32* @ENSELO, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @ahc_outb(%struct.ahc_softc* %32, i32 %33, i32 %39)
  br label %50

41:                                               ; preds = %3
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %43 = load i32, i32* @SCBPTR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ahc_outb(%struct.ahc_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %47 = load i32, i32* @SCB_NEXT, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ahc_outb(%struct.ahc_softc* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %27
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %52 = load i32, i32* @SCBPTR, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ahc_outb(%struct.ahc_softc* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
