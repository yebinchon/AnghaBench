; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_fill_init_rx_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_fill_init_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_queue_sp_obj = type { i32 }
%struct.ecore_rxq_setup_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.client_init_rx_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i8*, i8*, i32, i32, i32, i64, i64, i64, i64, i8*, i8*, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }

@ECORE_Q_FLG_TPA = common dso_local global i32 0, align 4
@CLIENT_INIT_RX_DATA_TPA_EN_IPV4 = common dso_local global i32 0, align 4
@ECORE_Q_FLG_TPA_GRO = common dso_local global i32 0, align 4
@CLIENT_INIT_RX_DATA_TPA_MODE = common dso_local global i32 0, align 4
@ECORE_Q_FLG_OOO = common dso_local global i32 0, align 4
@ECORE_Q_FLG_DHC = common dso_local global i32 0, align 4
@CLIENT_INIT_RX_DATA_UCAST_DROP_ALL = common dso_local global i32 0, align 4
@CLIENT_INIT_RX_DATA_MCAST_DROP_ALL = common dso_local global i32 0, align 4
@ECORE_Q_FLG_VLAN = common dso_local global i32 0, align 4
@ECORE_Q_FLG_OV = common dso_local global i32 0, align 4
@ECORE_Q_FLG_LEADING_RSS = common dso_local global i32 0, align 4
@ECORE_Q_FLG_MCAST = common dso_local global i32 0, align 4
@ECORE_Q_FLG_SILENT_VLAN_REM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_queue_sp_obj*, %struct.ecore_rxq_setup_params*, %struct.client_init_rx_data*, i64*)* @ecore_q_fill_init_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_q_fill_init_rx_data(%struct.ecore_queue_sp_obj* %0, %struct.ecore_rxq_setup_params* %1, %struct.client_init_rx_data* %2, i64* %3) #0 {
  %5 = alloca %struct.ecore_queue_sp_obj*, align 8
  %6 = alloca %struct.ecore_rxq_setup_params*, align 8
  %7 = alloca %struct.client_init_rx_data*, align 8
  %8 = alloca i64*, align 8
  store %struct.ecore_queue_sp_obj* %0, %struct.ecore_queue_sp_obj** %5, align 8
  store %struct.ecore_rxq_setup_params* %1, %struct.ecore_rxq_setup_params** %6, align 8
  store %struct.client_init_rx_data* %2, %struct.client_init_rx_data** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i32, i32* @ECORE_Q_FLG_TPA, align 4
  %10 = load i64*, i64** %8, align 8
  %11 = call i32 @ECORE_TEST_BIT(i32 %9, i64* %10)
  %12 = load i32, i32* @CLIENT_INIT_RX_DATA_TPA_EN_IPV4, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %15 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @ECORE_Q_FLG_TPA_GRO, align 4
  %17 = load i64*, i64** %8, align 8
  %18 = call i32 @ECORE_TEST_BIT(i32 %16, i64* %17)
  %19 = load i32, i32* @CLIENT_INIT_RX_DATA_TPA_MODE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %22 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %26 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %25, i32 0, i32 29
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @ECORE_Q_FLG_OOO, align 4
  %28 = load i64*, i64** %8, align 8
  %29 = call i32 @ECORE_TEST_BIT(i32 %27, i64* %28)
  %30 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %31 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %32, i32 0, i32 15
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %36 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %35, i32 0, i32 28
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @ECORE_Q_FLG_DHC, align 4
  %38 = load i64*, i64** %8, align 8
  %39 = call i32 @ECORE_TEST_BIT(i32 %37, i64* %38)
  %40 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %41 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %46 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %45, i32 0, i32 27
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %48 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %51 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %50, i32 0, i32 26
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @ECORE_CPU_TO_LE16(i32 %54)
  %56 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %57 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %56, i32 0, i32 25
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @CLIENT_INIT_RX_DATA_UCAST_DROP_ALL, align 4
  %59 = load i32, i32* @CLIENT_INIT_RX_DATA_MCAST_DROP_ALL, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @ECORE_CPU_TO_LE16(i32 %60)
  %62 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %63 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %62, i32 0, i32 24
  store i8* %61, i8** %63, align 8
  %64 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %65 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %64, i32 0, i32 23
  store i64 0, i64* %65, align 8
  %66 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %67 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %66, i32 0, i32 22
  store i64 0, i64* %67, align 8
  %68 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %69 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %68, i32 0, i32 21
  store i64 0, i64* %69, align 8
  %70 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %71 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %70, i32 0, i32 20
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @ECORE_Q_FLG_VLAN, align 4
  %73 = load i64*, i64** %8, align 8
  %74 = call i32 @ECORE_TEST_BIT(i32 %72, i64* %73)
  %75 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %76 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @ECORE_Q_FLG_OV, align 4
  %78 = load i64*, i64** %8, align 8
  %79 = call i32 @ECORE_TEST_BIT(i32 %77, i64* %78)
  %80 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %81 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %83 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %86 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %85, i32 0, i32 19
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %88 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %91 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %90, i32 0, i32 18
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %93 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %96 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %95, i32 0, i32 17
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %98 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @ECORE_CPU_TO_LE16(i32 %99)
  %101 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %102 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %101, i32 0, i32 16
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %104 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @ECORE_CPU_TO_LE16(i32 %105)
  %107 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %108 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %107, i32 0, i32 15
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %110 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @U64_LO(i32 %111)
  %113 = call i8* @ECORE_CPU_TO_LE32(i32 %112)
  %114 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %115 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %114, i32 0, i32 14
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %118 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @U64_HI(i32 %119)
  %121 = call i8* @ECORE_CPU_TO_LE32(i32 %120)
  %122 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %123 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %122, i32 0, i32 14
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  %125 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %126 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @U64_LO(i32 %127)
  %129 = call i8* @ECORE_CPU_TO_LE32(i32 %128)
  %130 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %131 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %130, i32 0, i32 13
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %134 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @U64_HI(i32 %135)
  %137 = call i8* @ECORE_CPU_TO_LE32(i32 %136)
  %138 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %139 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %138, i32 0, i32 13
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i8* %137, i8** %140, align 8
  %141 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %142 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @U64_LO(i32 %143)
  %145 = call i8* @ECORE_CPU_TO_LE32(i32 %144)
  %146 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %147 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %146, i32 0, i32 12
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store i8* %145, i8** %148, align 8
  %149 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %150 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @U64_HI(i32 %151)
  %153 = call i8* @ECORE_CPU_TO_LE32(i32 %152)
  %154 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %155 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %154, i32 0, i32 12
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  %157 = load i32, i32* @ECORE_Q_FLG_LEADING_RSS, align 4
  %158 = load i64*, i64** %8, align 8
  %159 = call i32 @ECORE_TEST_BIT(i32 %157, i64* %158)
  %160 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %161 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @ECORE_Q_FLG_MCAST, align 4
  %163 = load i64*, i64** %8, align 8
  %164 = call i32 @ECORE_TEST_BIT(i32 %162, i64* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %4
  %167 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %168 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %171 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %170, i32 0, i32 11
  store i32 %169, i32* %171, align 4
  %172 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %173 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %172, i32 0, i32 6
  store i32 1, i32* %173, align 8
  br label %174

174:                                              ; preds = %166, %4
  %175 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %176 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %179 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %178, i32 0, i32 10
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @ECORE_Q_FLG_SILENT_VLAN_REM, align 4
  %181 = load i64*, i64** %8, align 8
  %182 = call i32 @ECORE_TEST_BIT(i32 %180, i64* %181)
  %183 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %184 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  %185 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %186 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @ECORE_CPU_TO_LE16(i32 %187)
  %189 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %190 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %189, i32 0, i32 9
  store i8* %188, i8** %190, align 8
  %191 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %6, align 8
  %192 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @ECORE_CPU_TO_LE16(i32 %193)
  %195 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %7, align 8
  %196 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %195, i32 0, i32 8
  store i8* %194, i8** %196, align 8
  ret void
}

declare dso_local i32 @ECORE_TEST_BIT(i32, i64*) #1

declare dso_local i8* @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i8* @ECORE_CPU_TO_LE32(i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @U64_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
