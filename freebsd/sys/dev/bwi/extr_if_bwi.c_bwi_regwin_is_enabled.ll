; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_is_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }
%struct.bwi_regwin = type { i32 }

@BWI_STATE_LO = common dso_local global i32 0, align 4
@BWI_STATE_LO_CLOCK = common dso_local global i32 0, align 4
@BWI_STATE_LO_RESET = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@BWI_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s is enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s is disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_regwin_is_enabled(%struct.bwi_softc* %0, %struct.bwi_regwin* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca %struct.bwi_regwin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store %struct.bwi_regwin* %1, %struct.bwi_regwin** %5, align 8
  %8 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %9 = call i32 @bwi_regwin_disable_bits(%struct.bwi_softc* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %11 = load i32, i32* @BWI_STATE_LO, align 4
  %12 = call i32 @CSR_READ_4(%struct.bwi_softc* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BWI_STATE_LO_CLOCK, align 4
  %15 = load i32, i32* @BWI_STATE_LO_RESET, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = load i32, i32* @BWI_STATE_LO_CLOCK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %24 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %25 = load i32, i32* @BWI_DBG_INIT, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %28 = call i32 @bwi_regwin_name(%struct.bwi_regwin* %27)
  %29 = call i32 @DPRINTF(%struct.bwi_softc* %23, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 1, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %32 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %33 = load i32, i32* @BWI_DBG_INIT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %36 = call i32 @bwi_regwin_name(%struct.bwi_regwin* %35)
  %37 = call i32 @DPRINTF(%struct.bwi_softc* %31, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @bwi_regwin_disable_bits(%struct.bwi_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32) #1

declare dso_local i32 @bwi_regwin_name(%struct.bwi_regwin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
