; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_setflashmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_setflashmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { i32 }

@FLASH_COMMAND = common dso_local global i32 0, align 4
@AN_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Waitbusy hang after setflash mode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @setflashmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setflashmode(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.an_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  store %struct.an_softc* %8, %struct.an_softc** %5, align 8
  %9 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %10 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %11 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @AN_SW0(i32 %12)
  %14 = load i32, i32* @FLASH_COMMAND, align 4
  %15 = call i32 @CSR_WRITE_2(%struct.an_softc* %9, i32 %13, i32 %14)
  %16 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %17 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %18 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AN_SW1(i32 %19)
  %21 = load i32, i32* @FLASH_COMMAND, align 4
  %22 = call i32 @CSR_WRITE_2(%struct.an_softc* %16, i32 %20, i32 %21)
  %23 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %24 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %25 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AN_SW0(i32 %26)
  %28 = load i32, i32* @FLASH_COMMAND, align 4
  %29 = call i32 @CSR_WRITE_2(%struct.an_softc* %23, i32 %27, i32 %28)
  %30 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %31 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %32 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AN_COMMAND(i32 %33)
  %35 = load i32, i32* @FLASH_COMMAND, align 4
  %36 = call i32 @CSR_WRITE_2(%struct.an_softc* %30, i32 %34, i32 %35)
  %37 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %38 = call i32 @FLASH_DELAY(%struct.an_softc* %37, i32 500)
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = load i32, i32* @AN_TIMEOUT, align 4
  %41 = call i32 @WaitBusy(%struct.ifnet* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %1
  %44 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_SW0(i32) #1

declare dso_local i32 @AN_SW1(i32) #1

declare dso_local i32 @AN_COMMAND(i32) #1

declare dso_local i32 @FLASH_DELAY(%struct.an_softc*, i32) #1

declare dso_local i32 @WaitBusy(%struct.ifnet*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
