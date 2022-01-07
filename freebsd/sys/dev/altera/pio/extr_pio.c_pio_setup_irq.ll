; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/pio/extr_pio.c_pio_setup_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/pio/extr_pio.c_pio_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pio_softc = type { i32, i32, i32* }

@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to setup intr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @pio_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pio_setup_irq(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.pio_softc* @device_get_softc(i32 %9)
  store %struct.pio_softc* %10, %struct.pio_softc** %8, align 8
  %11 = load %struct.pio_softc*, %struct.pio_softc** %8, align 8
  %12 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pio_softc*, %struct.pio_softc** %8, align 8
  %15 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INTR_TYPE_BIO, align 4
  %20 = load i32, i32* @INTR_MPSAFE, align 4
  %21 = or i32 %19, %20
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.pio_softc*, %struct.pio_softc** %8, align 8
  %25 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %24, i32 0, i32 1
  %26 = call i64 @bus_setup_intr(i32 %13, i32 %18, i32 %21, i32* null, i8* %22, i8* %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.pio_softc*, %struct.pio_softc** %8, align 8
  %30 = getelementptr inbounds %struct.pio_softc, %struct.pio_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.pio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
