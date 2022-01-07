; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_control_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_control_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"read val=%x\0A\00", align 1
@TWSI_CONTROL_STOP = common dso_local global i32 0, align 4
@TWSI_CONTROL_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"write val=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twsi_softc*, i32)* @twsi_control_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twsi_control_set(%struct.twsi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.twsi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.twsi_softc* %0, %struct.twsi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %7 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @TWSI_READ(%struct.twsi_softc* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @debugf(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @TWSI_CONTROL_STOP, align 4
  %17 = load i32, i32* @TWSI_CONTROL_START, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @debugf(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %31 = load %struct.twsi_softc*, %struct.twsi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @TWSI_WRITE(%struct.twsi_softc* %30, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @TWSI_READ(%struct.twsi_softc*, i32) #1

declare dso_local i32 @debugf(i32, i8*, i32) #1

declare dso_local i32 @TWSI_WRITE(%struct.twsi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
