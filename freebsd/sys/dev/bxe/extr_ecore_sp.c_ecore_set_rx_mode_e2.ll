; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_rx_mode_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_rx_mode_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_rx_mode_ramrod_params = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.eth_filter_rules_ramrod_data* }
%struct.eth_filter_rules_ramrod_data = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i8* }

@RAMROD_TX = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_TX_CMD = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@RAMROD_RX = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_RX_CMD = common dso_local global i8* null, align 8
@ECORE_RX_MODE_FCOE_ETH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"About to configure %d rules, rx_accept_flags 0x%lx, tx_accept_flags 0x%lx\0A\00", align 1
@RAMROD_CMD_ID_ETH_FILTER_RULES = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@ECORE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_rx_mode_ramrod_params*)* @ecore_set_rx_mode_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_set_rx_mode_e2(%struct.bxe_softc* %0, %struct.ecore_rx_mode_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_rx_mode_ramrod_params*, align 8
  %6 = alloca %struct.eth_filter_rules_ramrod_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_rx_mode_ramrod_params* %1, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %9 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %9, i32 0, i32 8
  %11 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %10, align 8
  store %struct.eth_filter_rules_ramrod_data* %11, %struct.eth_filter_rules_ramrod_data** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %13 = call i32 @ECORE_MEMSET(%struct.eth_filter_rules_ramrod_data* %12, i32 0, i32 16)
  %14 = load i32, i32* @RAMROD_TX, align 4
  %15 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %15, i32 0, i32 5
  %17 = call i64 @ECORE_TEST_BIT(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %21 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %20, i32 0, i32 7
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %24 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i8* %22, i8** %28, align 8
  %29 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %33 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %31, i32* %37, align 8
  %38 = load i8*, i8** @ETH_FILTER_RULES_CMD_TX_CMD, align 8
  %39 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %40 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %38, i8** %44, align 8
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %46 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %46, i32 0, i32 2
  %48 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %49 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @ecore_rx_mode_set_cmd_state_e2(%struct.bxe_softc* %45, i32* %47, %struct.TYPE_4__* %53, i32 %54)
  br label %56

56:                                               ; preds = %19, %2
  %57 = load i32, i32* @RAMROD_RX, align 4
  %58 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %58, i32 0, i32 5
  %60 = call i64 @ECORE_TEST_BIT(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %56
  %63 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %64 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %63, i32 0, i32 7
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %67 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i8* %65, i8** %71, align 8
  %72 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %73 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %76 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %74, i32* %80, align 8
  %81 = load i8*, i8** @ETH_FILTER_RULES_CMD_RX_CMD, align 8
  %82 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %83 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* %81, i8** %87, align 8
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %89 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %90 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %89, i32 0, i32 3
  %91 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %92 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @ecore_rx_mode_set_cmd_state_e2(%struct.bxe_softc* %88, i32* %90, %struct.TYPE_4__* %96, i32 %97)
  br label %99

99:                                               ; preds = %62, %56
  %100 = load i32, i32* @ECORE_RX_MODE_FCOE_ETH, align 4
  %101 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %102 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %101, i32 0, i32 6
  %103 = call i64 @ECORE_TEST_BIT(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %192

105:                                              ; preds = %99
  %106 = load i32, i32* @RAMROD_TX, align 4
  %107 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %108 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %107, i32 0, i32 5
  %109 = call i64 @ECORE_TEST_BIT(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %105
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %113 = call i8* @ECORE_FCOE_CID(%struct.bxe_softc* %112)
  %114 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %115 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  store i8* %113, i8** %119, align 8
  %120 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %121 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %124 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32 %122, i32* %128, align 8
  %129 = load i8*, i8** @ETH_FILTER_RULES_CMD_TX_CMD, align 8
  %130 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %131 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i8* %129, i8** %135, align 8
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %137 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %138 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %137, i32 0, i32 2
  %139 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %140 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %142
  %144 = load i32, i32* @TRUE, align 4
  %145 = call i32 @ecore_rx_mode_set_cmd_state_e2(%struct.bxe_softc* %136, i32* %138, %struct.TYPE_4__* %143, i32 %144)
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %8, align 8
  br label %148

148:                                              ; preds = %111, %105
  %149 = load i32, i32* @RAMROD_RX, align 4
  %150 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %151 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %150, i32 0, i32 5
  %152 = call i64 @ECORE_TEST_BIT(i32 %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %191

154:                                              ; preds = %148
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %156 = call i8* @ECORE_FCOE_CID(%struct.bxe_softc* %155)
  %157 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %158 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  store i8* %156, i8** %162, align 8
  %163 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %164 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %167 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 %165, i32* %171, align 8
  %172 = load i8*, i8** @ETH_FILTER_RULES_CMD_RX_CMD, align 8
  %173 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %174 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i8* %172, i8** %178, align 8
  %179 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %180 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %181 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %180, i32 0, i32 3
  %182 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %183 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i64, i64* %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %185
  %187 = load i32, i32* @TRUE, align 4
  %188 = call i32 @ecore_rx_mode_set_cmd_state_e2(%struct.bxe_softc* %179, i32* %181, %struct.TYPE_4__* %186, i32 %187)
  %189 = load i64, i64* %8, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %8, align 8
  br label %191

191:                                              ; preds = %154, %148
  br label %192

192:                                              ; preds = %191, %99
  %193 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %194 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %197 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %196, i32 0, i32 0
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @ecore_rx_mode_set_rdata_hdr_e2(i32 %195, %struct.TYPE_3__* %197, i64 %198)
  %200 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %201 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %202 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %206 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %209 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @ECORE_MSG(%struct.bxe_softc* %200, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %204, i32 %207, i32 %210)
  %212 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %213 = load i32, i32* @RAMROD_CMD_ID_ETH_FILTER_RULES, align 4
  %214 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %215 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ecore_rx_mode_ramrod_params*, %struct.ecore_rx_mode_ramrod_params** %5, align 8
  %218 = getelementptr inbounds %struct.ecore_rx_mode_ramrod_params, %struct.ecore_rx_mode_ramrod_params* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %221 = call i32 @ecore_sp_post(%struct.bxe_softc* %212, i32 %213, i32 %216, i32 %219, i32 %220)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %192
  %225 = load i32, i32* %7, align 4
  store i32 %225, i32* %3, align 4
  br label %228

226:                                              ; preds = %192
  %227 = load i32, i32* @ECORE_PENDING, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %226, %224
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @ECORE_MEMSET(%struct.eth_filter_rules_ramrod_data*, i32, i32) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_rx_mode_set_cmd_state_e2(%struct.bxe_softc*, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i8* @ECORE_FCOE_CID(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_rx_mode_set_rdata_hdr_e2(i32, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @ecore_sp_post(%struct.bxe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
