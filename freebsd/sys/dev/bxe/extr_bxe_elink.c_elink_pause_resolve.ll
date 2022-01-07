; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_pause_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_pause_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i8*, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Flow Control: TX only\0A\00", align 1
@ELINK_FLOW_CTRL_TX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Flow Control: RX only\0A\00", align 1
@ELINK_FLOW_CTRL_RX = common dso_local global i8* null, align 8
@ELINK_FLOW_CTRL_BOTH = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Flow Control: RX & TX\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Flow Control: None\0A\00", align 1
@ELINK_FLOW_CTRL_NONE = common dso_local global i8* null, align 8
@LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32)* @elink_pause_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_pause_resolve(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2, i32 %3) #0 {
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca %struct.elink_params*, align 8
  %7 = alloca %struct.elink_vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %5, align 8
  store %struct.elink_params* %1, %struct.elink_params** %6, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 1
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  store %struct.bxe_softc* %12, %struct.bxe_softc** %9, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %45 [
    i32 11, label %14
    i32 14, label %20
    i32 5, label %26
    i32 7, label %26
    i32 13, label %26
    i32 15, label %26
  ]

14:                                               ; preds = %4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %16 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** @ELINK_FLOW_CTRL_TX, align 8
  %18 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %19 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  br label %51

20:                                               ; preds = %4
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %22 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** @ELINK_FLOW_CTRL_RX, align 8
  %24 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %25 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %51

26:                                               ; preds = %4, %4, %4, %4
  %27 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %28 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** @ELINK_FLOW_CTRL_BOTH, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %34 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i8*, i8** @ELINK_FLOW_CTRL_BOTH, align 8
  %36 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %37 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %44

38:                                               ; preds = %26
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %40 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** @ELINK_FLOW_CTRL_RX, align 8
  %42 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %43 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %38, %32
  br label %51

45:                                               ; preds = %4
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %47 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** @ELINK_FLOW_CTRL_NONE, align 8
  %49 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %50 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %45, %44, %20, %14
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE, align 4
  %57 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %58 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 2
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE, align 4
  %67 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %68 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %61
  ret void
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
