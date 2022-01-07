; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_one_mac_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_one_mac_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i32, i32, i64 }
%struct.ecore_exeq_elem = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__, %struct.ecore_vlan_mac_obj* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.eth_classify_rules_ramrod_data = type { i32, %union.eth_classify_rule_cmd* }
%union.eth_classify_rule_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32 }

@ECORE_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ECORE_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@ECORE_ISCSI_ETH_MAC = common dso_local global i32 0, align 4
@ECORE_LLH_CAM_ISCSI_ETH_LINE = common dso_local global i32 0, align 4
@ECORE_ETH_MAC = common dso_local global i32 0, align 4
@ECORE_LLH_CAM_ETH_LINE = common dso_local global i32 0, align 4
@CLASSIFY_RULE_OPCODE_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"About to %s MAC %02x:%02x:%02x:%02x:%02x:%02x for Queue %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, %struct.ecore_exeq_elem*, i32, i32)* @ecore_set_one_mac_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_set_one_mac_e2(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, %struct.ecore_exeq_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %8 = alloca %struct.ecore_exeq_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_raw_obj*, align 8
  %12 = alloca %struct.eth_classify_rules_ramrod_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.eth_classify_rule_cmd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
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
  %22 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.eth_classify_rules_ramrod_data*
  store %struct.eth_classify_rules_ramrod_data* %24, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %28 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %33 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %32, i32 0, i32 1
  %34 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %34, i64 %36
  store %union.eth_classify_rule_cmd* %37, %union.eth_classify_rule_cmd** %15, align 8
  %38 = load i32, i32* %14, align 4
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
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i64* %50, i64** %17, align 8
  %51 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %52 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %18, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @ECORE_VLAN_MAC_MOVE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %45
  %62 = load i32, i32* @ECORE_ISCSI_ETH_MAC, align 4
  %63 = load i64*, i64** %17, align 8
  %64 = call i64 @ECORE_TEST_BIT(i32 %62, i64* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32*, i32** %18, align 8
  %70 = load i32, i32* @ECORE_LLH_CAM_ISCSI_ETH_LINE, align 4
  %71 = call i32 @ecore_set_mac_in_nig(%struct.bxe_softc* %67, i32 %68, i32* %69, i32 %70)
  br label %84

72:                                               ; preds = %61
  %73 = load i32, i32* @ECORE_ETH_MAC, align 4
  %74 = load i64*, i64** %17, align 8
  %75 = call i64 @ECORE_TEST_BIT(i32 %73, i64* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %18, align 8
  %81 = load i32, i32* @ECORE_LLH_CAM_ETH_LINE, align 4
  %82 = call i32 @ecore_set_mac_in_nig(%struct.bxe_softc* %78, i32 %79, i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  br label %84

84:                                               ; preds = %83, %66
  br label %85

85:                                               ; preds = %84, %45
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %90 = call i32 @ECORE_MEMSET(%struct.eth_classify_rules_ramrod_data* %89, i32 0, i32 16)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %93 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @CLASSIFY_RULE_OPCODE_MAC, align 4
  %96 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %97 = bitcast %union.eth_classify_rule_cmd* %96 to %struct.TYPE_6__*
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = call i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc* %92, %struct.ecore_vlan_mac_obj* %93, i32 %94, i32 %95, i32* %98)
  %100 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %105 = load i32*, i32** %18, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %18, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %18, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %18, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %18, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %18, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %124 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ECORE_MSG(%struct.bxe_softc* %100, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %104, i32 %107, i32 %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %125)
  %127 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %128 = bitcast %union.eth_classify_rule_cmd* %127 to %struct.TYPE_6__*
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %131 = bitcast %union.eth_classify_rule_cmd* %130 to %struct.TYPE_6__*
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %134 = bitcast %union.eth_classify_rule_cmd* %133 to %struct.TYPE_6__*
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32*, i32** %18, align 8
  %137 = call i32 @ecore_set_fw_mac_addr(i32* %129, i32* %132, i32* %135, i32* %136)
  %138 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %139 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @ECORE_CPU_TO_LE16(i32 %144)
  %146 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %147 = bitcast %union.eth_classify_rule_cmd* %146 to %struct.TYPE_6__*
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @ECORE_VLAN_MAC_MOVE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %191

152:                                              ; preds = %91
  %153 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %154 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %153, i32 1
  store %union.eth_classify_rule_cmd* %154, %union.eth_classify_rule_cmd** %15, align 8
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  %157 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %158 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %159 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %161, align 8
  %163 = load i32, i32* @TRUE, align 4
  %164 = load i32, i32* @CLASSIFY_RULE_OPCODE_MAC, align 4
  %165 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %166 = bitcast %union.eth_classify_rule_cmd* %165 to %struct.TYPE_6__*
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 4
  %168 = call i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc* %157, %struct.ecore_vlan_mac_obj* %162, i32 %163, i32 %164, i32* %167)
  %169 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %170 = bitcast %union.eth_classify_rule_cmd* %169 to %struct.TYPE_6__*
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %173 = bitcast %union.eth_classify_rule_cmd* %172 to %struct.TYPE_6__*
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %176 = bitcast %union.eth_classify_rule_cmd* %175 to %struct.TYPE_6__*
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32*, i32** %18, align 8
  %179 = call i32 @ecore_set_fw_mac_addr(i32* %171, i32* %174, i32* %177, i32* %178)
  %180 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %181 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @ECORE_CPU_TO_LE16(i32 %186)
  %188 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %189 = bitcast %union.eth_classify_rule_cmd* %188 to %struct.TYPE_6__*
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i8* %187, i8** %190, align 8
  br label %191

191:                                              ; preds = %152, %91
  %192 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %193 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %196 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %199 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %198, i32 0, i32 0
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @ecore_vlan_mac_set_rdata_hdr_e2(i32 %194, i32 %197, i32* %199, i32 %200)
  ret void
}

declare dso_local i64 @ECORE_TEST_BIT(i32, i64*) #1

declare dso_local i32 @ecore_set_mac_in_nig(%struct.bxe_softc*, i32, i32*, i32) #1

declare dso_local i32 @ECORE_MEMSET(%struct.eth_classify_rules_ramrod_data*, i32, i32) #1

declare dso_local i32 @ecore_vlan_mac_set_cmd_hdr_e2(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_set_fw_mac_addr(i32*, i32*, i32*, i32*) #1

declare dso_local i8* @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_vlan_mac_set_rdata_hdr_e2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
