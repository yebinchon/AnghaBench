; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_one_vxlan_fltr_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_one_vxlan_fltr_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i32, i64 }
%struct.ecore_exeq_elem = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.ecore_vlan_mac_obj*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i8* }
%struct.eth_classify_rules_ramrod_data = type { i32, %union.eth_classify_rule_cmd* }
%union.eth_classify_rule_cmd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i8*, i32 }

@ECORE_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CLASSIFY_RULE_OPCODE_IMAC_VNI = common dso_local global i32 0, align 4
@ECORE_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, %struct.ecore_exeq_elem*, i32, i32)* @ecore_set_one_vxlan_fltr_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_set_one_vxlan_fltr_e2(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, %struct.ecore_exeq_elem* %2, i32 %3, i32 %4) #0 {
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
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %7, align 8
  store %struct.ecore_exeq_elem* %2, %struct.ecore_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %19, i32 0, i32 0
  store %struct.ecore_raw_obj* %20, %struct.ecore_raw_obj** %11, align 8
  %21 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %22 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.eth_classify_rules_ramrod_data*
  store %struct.eth_classify_rules_ramrod_data* %24, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %28 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %27, i32 0, i32 1
  %29 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %29, i64 %31
  store %union.eth_classify_rule_cmd* %32, %union.eth_classify_rule_cmd** %14, align 8
  %33 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %34 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @ECORE_VLAN_MAC_ADD, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i32, i32* @TRUE, align 4
  br label %45

43:                                               ; preds = %5
  %44 = load i32, i32* @FALSE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %16, align 4
  %47 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %48 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %17, align 8
  %54 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %55 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %18, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %65 = call i32 @ECORE_MEMSET(%struct.eth_classify_rules_ramrod_data* %64, i32 0, i32 16)
  br label %66

66:                                               ; preds = %63, %45
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %68 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @CLASSIFY_RULE_OPCODE_IMAC_VNI, align 4
  %71 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %72 = bitcast %union.eth_classify_rule_cmd* %71 to %struct.TYPE_10__*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = call i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc* %67, %struct.ecore_vlan_mac_obj* %68, i32 %69, i32 %70, i32* %73)
  %75 = load i8*, i8** %17, align 8
  %76 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %77 = bitcast %union.eth_classify_rule_cmd* %76 to %struct.TYPE_10__*
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  store i8* %75, i8** %78, align 8
  %79 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %80 = bitcast %union.eth_classify_rule_cmd* %79 to %struct.TYPE_10__*
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %83 = bitcast %union.eth_classify_rule_cmd* %82 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %86 = bitcast %union.eth_classify_rule_cmd* %85 to %struct.TYPE_10__*
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32*, i32** %18, align 8
  %89 = call i32 @ecore_set_fw_mac_addr(i32* %81, i32* %84, i32* %87, i32* %88)
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @ECORE_VLAN_MAC_MOVE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %66
  %94 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %95 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %94, i32 1
  store %union.eth_classify_rule_cmd* %95, %union.eth_classify_rule_cmd** %14, align 8
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %99 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %100 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %102, align 8
  %104 = load i32, i32* @TRUE, align 4
  %105 = load i32, i32* @CLASSIFY_RULE_OPCODE_IMAC_VNI, align 4
  %106 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %107 = bitcast %union.eth_classify_rule_cmd* %106 to %struct.TYPE_10__*
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 4
  %109 = call i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc* %98, %struct.ecore_vlan_mac_obj* %103, i32 %104, i32 %105, i32* %108)
  %110 = load i8*, i8** %17, align 8
  %111 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %112 = bitcast %union.eth_classify_rule_cmd* %111 to %struct.TYPE_10__*
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  store i8* %110, i8** %113, align 8
  %114 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %115 = bitcast %union.eth_classify_rule_cmd* %114 to %struct.TYPE_10__*
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %118 = bitcast %union.eth_classify_rule_cmd* %117 to %struct.TYPE_10__*
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %121 = bitcast %union.eth_classify_rule_cmd* %120 to %struct.TYPE_10__*
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32*, i32** %18, align 8
  %124 = call i32 @ecore_set_fw_mac_addr(i32* %116, i32* %119, i32* %122, i32* %123)
  br label %125

125:                                              ; preds = %93, %66
  %126 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %127 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %130 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %133 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %132, i32 0, i32 0
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @ecore_vlan_mac_set_rdata_hdr_e2(i32 %128, i32 %131, i32* %133, i32 %134)
  ret void
}

declare dso_local i32 @ECORE_MEMSET(%struct.eth_classify_rules_ramrod_data*, i32, i32) #1

declare dso_local i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i32 @ecore_set_fw_mac_addr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ecore_vlan_mac_set_rdata_hdr_e2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
