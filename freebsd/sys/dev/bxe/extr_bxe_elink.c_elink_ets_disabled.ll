; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"elink_ets_disabled - chip not supported\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_ets_disabled(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 0
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %6, align 8
  %11 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %13 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %17 = call i64 @CHIP_IS_E3A0(%struct.bxe_softc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %21 = call i32 @elink_ets_e2e3a0_disabled(%struct.elink_params* %20)
  br label %35

22:                                               ; preds = %15
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %24 = call i64 @CHIP_IS_E3B0(%struct.bxe_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %28 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %29 = call i32 @elink_ets_e3b0_disabled(%struct.elink_params* %27, %struct.elink_vars* %28)
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %32 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E3A0(%struct.bxe_softc*) #1

declare dso_local i32 @elink_ets_e2e3a0_disabled(%struct.elink_params*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bxe_softc*) #1

declare dso_local i32 @elink_ets_e3b0_disabled(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
