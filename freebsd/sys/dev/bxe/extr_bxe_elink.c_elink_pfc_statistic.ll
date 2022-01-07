; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_pfc_statistic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_pfc_statistic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"pfc statistic\0A\00", align 1
@ELINK_MAC_TYPE_EMAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"About to read PFC stats from EMAC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elink_pfc_statistic(%struct.elink_params* %0, %struct.elink_vars* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 0
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  store %struct.bxe_softc* %12, %struct.bxe_softc** %9, align 8
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %14 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %16 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %33

20:                                               ; preds = %4
  %21 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %22 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ELINK_MAC_TYPE_EMAC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %28 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @elink_emac_get_pfc_stat(%struct.elink_params* %29, i32* %30, i32* %31)
  br label %33

33:                                               ; preds = %19, %26, %20
  ret void
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_emac_get_pfc_stat(%struct.elink_params*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
