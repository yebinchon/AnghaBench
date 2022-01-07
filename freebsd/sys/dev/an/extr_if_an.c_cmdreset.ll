; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_cmdreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_cmdreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { i32 }

@AN_CMD_DISABLE = common dso_local global i32 0, align 4
@AN_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Waitbusy hang b4 RESET =%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AN_CMD_FW_RESTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Waitbusy hang AFTER RESET =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @cmdreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdreset(%struct.ifnet* %0) #0 {
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
  %10 = call i32 @AN_LOCK(%struct.an_softc* %9)
  %11 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %12 = call i32 @an_stop(%struct.an_softc* %11)
  %13 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %14 = load i32, i32* @AN_CMD_DISABLE, align 4
  %15 = call i32 @an_cmd(%struct.an_softc* %13, i32 %14, i32 0)
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = load i32, i32* @AN_TIMEOUT, align 4
  %18 = call i32 @WaitBusy(%struct.ifnet* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @if_printf(%struct.ifnet* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %25 = call i32 @AN_UNLOCK(%struct.an_softc* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %30 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %31 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @AN_COMMAND(i32 %32)
  %34 = load i32, i32* @AN_CMD_FW_RESTART, align 4
  %35 = call i32 @CSR_WRITE_2(%struct.an_softc* %29, i32 %33, i32 %34)
  %36 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %37 = call i32 @FLASH_DELAY(%struct.an_softc* %36, i32 1000)
  %38 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %39 = call i32 @WaitBusy(%struct.ifnet* %38, i32 100)
  store i32 %39, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %28
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @if_printf(%struct.ifnet* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %46 = call i32 @AN_UNLOCK(%struct.an_softc* %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %28
  %50 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %51 = call i32 @AN_UNLOCK(%struct.an_softc* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %41, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @AN_LOCK(%struct.an_softc*) #1

declare dso_local i32 @an_stop(%struct.an_softc*) #1

declare dso_local i32 @an_cmd(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @WaitBusy(%struct.ifnet*, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @AN_UNLOCK(%struct.an_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_COMMAND(i32) #1

declare dso_local i32 @FLASH_DELAY(%struct.an_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
