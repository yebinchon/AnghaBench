; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_set_one_rule_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_set_one_rule_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_obj = type { i32, %struct.TYPE_5__, %struct.ecore_raw_obj }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_raw_obj = type { i32, i64 }
%union.ecore_mcast_config_data = type { i32 }
%struct.eth_multicast_rules_ramrod_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@ETH_MULTICAST_RULES_CMD_IS_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s bin %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Setting\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Clearing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_mcast_obj*, i32, %union.ecore_mcast_config_data*, i32)* @ecore_mcast_set_one_rule_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcast_set_one_rule_e2(%struct.bxe_softc* %0, %struct.ecore_mcast_obj* %1, i32 %2, %union.ecore_mcast_config_data* %3, i32 %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ecore_mcast_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ecore_mcast_config_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_raw_obj*, align 8
  %12 = alloca %struct.eth_multicast_rules_ramrod_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ecore_mcast_obj* %1, %struct.ecore_mcast_obj** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.ecore_mcast_config_data* %3, %union.ecore_mcast_config_data** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %7, align 8
  %17 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %16, i32 0, i32 2
  store %struct.ecore_raw_obj* %17, %struct.ecore_raw_obj** %11, align 8
  %18 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %19 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.eth_multicast_rules_ramrod_data*
  store %struct.eth_multicast_rules_ramrod_data* %21, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %22 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %23 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %7, align 8
  %26 = call i32 @ecore_mcast_get_rx_tx_flag(%struct.ecore_mcast_obj* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 130
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %5
  %33 = load i32, i32* @ETH_MULTICAST_RULES_CMD_IS_ADD, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %39 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %37
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %67 [
    i32 130, label %48
    i32 129, label %60
    i32 128, label %63
  ]

48:                                               ; preds = %36
  %49 = load %union.ecore_mcast_config_data*, %union.ecore_mcast_config_data** %9, align 8
  %50 = bitcast %union.ecore_mcast_config_data* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ecore_mcast_bin_from_mac(i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @BIT_VEC64_SET_BIT(i32 %57, i32 %58)
  br label %70

60:                                               ; preds = %36
  %61 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %7, align 8
  %62 = call i32 @ecore_mcast_clear_first_bin(%struct.ecore_mcast_obj* %61)
  store i32 %62, i32* %15, align 4
  br label %70

63:                                               ; preds = %36
  %64 = load %union.ecore_mcast_config_data*, %union.ecore_mcast_config_data** %9, align 8
  %65 = bitcast %union.ecore_mcast_config_data* %64 to i32*
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  br label %70

67:                                               ; preds = %36
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %106

70:                                               ; preds = %63, %60, %48
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @ETH_MULTICAST_RULES_CMD_IS_ADD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @ECORE_MSG(%struct.bxe_softc* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %77, i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %82 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %80, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %90 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i32 %88, i32* %95, align 4
  %96 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %7, align 8
  %97 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %100 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i32 %98, i32* %105, align 4
  br label %106

106:                                              ; preds = %70, %67
  ret void
}

declare dso_local i32 @ecore_mcast_get_rx_tx_flag(%struct.ecore_mcast_obj*) #1

declare dso_local i32 @ecore_mcast_bin_from_mac(i32) #1

declare dso_local i32 @BIT_VEC64_SET_BIT(i32, i32) #1

declare dso_local i32 @ecore_mcast_clear_first_bin(%struct.ecore_mcast_obj*) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
