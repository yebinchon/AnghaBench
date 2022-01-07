; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_one_vlan_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_one_vlan_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i32, i64 }
%struct.ecore_exeq_elem = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.ecore_vlan_mac_obj*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.eth_classify_rules_ramrod_data = type { i32, %union.eth_classify_rule_cmd* }
%union.eth_classify_rule_cmd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }

@ECORE_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CLASSIFY_RULE_OPCODE_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"About to %s VLAN %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@ECORE_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, %struct.ecore_exeq_elem*, i32, i32)* @ecore_set_one_vlan_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_set_one_vlan_e2(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, %struct.ecore_exeq_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %8 = alloca %struct.ecore_exeq_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_raw_obj*, align 8
  %12 = alloca %struct.eth_classify_rules_ramrod_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.eth_classify_rule_cmd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %7, align 8
  store %struct.ecore_exeq_elem* %2, %struct.ecore_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %19 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %18, i32 0, i32 0
  store %struct.ecore_raw_obj* %19, %struct.ecore_raw_obj** %11, align 8
  %20 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %21 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.eth_classify_rules_ramrod_data*
  store %struct.eth_classify_rules_ramrod_data* %23, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %27 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %26, i32 0, i32 1
  %28 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %28, i64 %30
  store %union.eth_classify_rule_cmd* %31, %union.eth_classify_rule_cmd** %14, align 8
  %32 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %33 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @ECORE_VLAN_MAC_ADD, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i32, i32* @TRUE, align 4
  br label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @FALSE, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %16, align 4
  %46 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %47 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %57 = call i32 @ECORE_MEMSET(%struct.eth_classify_rules_ramrod_data* %56, i32 0, i32 16)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %60 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @CLASSIFY_RULE_OPCODE_VLAN, align 4
  %63 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %64 = bitcast %union.eth_classify_rule_cmd* %63 to %struct.TYPE_10__*
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = call i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc* %59, %struct.ecore_vlan_mac_obj* %60, i32 %61, i32 %62, i32* %65)
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @ECORE_MSG(%struct.bxe_softc* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72)
  %74 = load i32, i32* %17, align 4
  %75 = call i8* @ECORE_CPU_TO_LE16(i32 %74)
  %76 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %77 = bitcast %union.eth_classify_rule_cmd* %76 to %struct.TYPE_10__*
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @ECORE_VLAN_MAC_MOVE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %58
  %83 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %84 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %83, i32 1
  store %union.eth_classify_rule_cmd* %84, %union.eth_classify_rule_cmd** %14, align 8
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %88 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %89 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %91, align 8
  %93 = load i32, i32* @TRUE, align 4
  %94 = load i32, i32* @CLASSIFY_RULE_OPCODE_VLAN, align 4
  %95 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %96 = bitcast %union.eth_classify_rule_cmd* %95 to %struct.TYPE_10__*
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = call i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc* %87, %struct.ecore_vlan_mac_obj* %92, i32 %93, i32 %94, i32* %97)
  %99 = load i32, i32* %17, align 4
  %100 = call i8* @ECORE_CPU_TO_LE16(i32 %99)
  %101 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %102 = bitcast %union.eth_classify_rule_cmd* %101 to %struct.TYPE_10__*
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  br label %104

104:                                              ; preds = %82, %58
  %105 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %106 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %109 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %112 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %111, i32 0, i32 0
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @ecore_vlan_mac_set_rdata_hdr_e2(i32 %107, i32 %110, i32* %112, i32 %113)
  ret void
}

declare dso_local i32 @ECORE_MEMSET(%struct.eth_classify_rules_ramrod_data*, i32, i32) #1

declare dso_local i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i8*, i32) #1

declare dso_local i8* @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_vlan_mac_set_rdata_hdr_e2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
