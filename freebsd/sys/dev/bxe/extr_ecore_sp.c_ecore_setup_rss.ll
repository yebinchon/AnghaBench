; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_setup_rss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_setup_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_config_rss_params = type { i32*, i32, i32*, i32, %struct.ecore_rss_config_obj* }
%struct.ecore_rss_config_obj = type { i32*, i32, %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i32, i32, i64 }
%struct.eth_rss_update_ramrod_data = type { i32*, i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Configuring RSS\0A\00", align 1
@ECORE_SWCID_MASK = common dso_local global i32 0, align 4
@ECORE_SWCID_SHIFT = common dso_local global i32 0, align 4
@ECORE_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@ETH_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@ECORE_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@ETH_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rss_mode=%d\0A\00", align 1
@ECORE_RSS_IPV4 = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_IPV6 = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_IPV4_VXLAN = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_IPV6_VXLAN = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_TUNN_INNER_HDRS = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY = common dso_local global i32 0, align 4
@ECORE_RSS_SET_SRCH = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"rss_engine_id=%d\0A\00", align 1
@T_ETH_INDIRECTION_TABLE_SIZE = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_RSS_UPDATE = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@ECORE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_config_rss_params*)* @ecore_setup_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_setup_rss(%struct.bxe_softc* %0, %struct.ecore_config_rss_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_config_rss_params*, align 8
  %6 = alloca %struct.ecore_rss_config_obj*, align 8
  %7 = alloca %struct.ecore_raw_obj*, align 8
  %8 = alloca %struct.eth_rss_update_ramrod_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_config_rss_params* %1, %struct.ecore_config_rss_params** %5, align 8
  %12 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %12, i32 0, i32 4
  %14 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %13, align 8
  store %struct.ecore_rss_config_obj* %14, %struct.ecore_rss_config_obj** %6, align 8
  %15 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_rss_config_obj, %struct.ecore_rss_config_obj* %15, i32 0, i32 2
  store %struct.ecore_raw_obj* %16, %struct.ecore_raw_obj** %7, align 8
  %17 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %18 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.eth_rss_update_ramrod_data*
  store %struct.eth_rss_update_ramrod_data* %20, %struct.eth_rss_update_ramrod_data** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %22 = call i32 @ECORE_MEMSET(%struct.eth_rss_update_ramrod_data* %21, i32 0, i32 40)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %24 = call i32 (%struct.bxe_softc*, i8*, ...) @ECORE_MSG(%struct.bxe_softc* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %26 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ECORE_SWCID_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %31 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ECORE_SWCID_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  %36 = call i32 @ECORE_CPU_TO_LE32(i32 %35)
  %37 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %38 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ECORE_RSS_MODE_DISABLED, align 4
  %40 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %41 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %40, i32 0, i32 3
  %42 = call i64 @ECORE_TEST_BIT(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @ETH_RSS_MODE_DISABLED, align 4
  store i32 %45, i32* %10, align 4
  br label %55

46:                                               ; preds = %2
  %47 = load i32, i32* @ECORE_RSS_MODE_REGULAR, align 4
  %48 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %49 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %48, i32 0, i32 3
  %50 = call i64 @ECORE_TEST_BIT(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @ETH_RSS_MODE_REGULAR, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %58 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (%struct.bxe_softc*, i8*, ...) @ECORE_MSG(%struct.bxe_softc* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ECORE_RSS_IPV4, align 4
  %63 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %64 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %63, i32 0, i32 3
  %65 = call i64 @ECORE_TEST_BIT(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %55
  %72 = load i32, i32* @ECORE_RSS_IPV4_TCP, align 4
  %73 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %74 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %73, i32 0, i32 3
  %75 = call i64 @ECORE_TEST_BIT(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %71
  %82 = load i32, i32* @ECORE_RSS_IPV4_UDP, align 4
  %83 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %84 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %83, i32 0, i32 3
  %85 = call i64 @ECORE_TEST_BIT(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %81
  %92 = load i32, i32* @ECORE_RSS_IPV6, align 4
  %93 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %94 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %93, i32 0, i32 3
  %95 = call i64 @ECORE_TEST_BIT(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i32, i32* @ECORE_RSS_IPV6_TCP, align 4
  %103 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %104 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %103, i32 0, i32 3
  %105 = call i64 @ECORE_TEST_BIT(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i32, i32* @ECORE_RSS_IPV6_UDP, align 4
  %113 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %114 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %113, i32 0, i32 3
  %115 = call i64 @ECORE_TEST_BIT(i32 %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY, align 4
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i32, i32* @ECORE_RSS_IPV4_VXLAN, align 4
  %123 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %124 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %123, i32 0, i32 3
  %125 = call i64 @ECORE_TEST_BIT(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_VXLAN_CAPABILITY, align 4
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %127, %121
  %132 = load i32, i32* @ECORE_RSS_IPV6_VXLAN, align 4
  %133 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %134 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %133, i32 0, i32 3
  %135 = call i64 @ECORE_TEST_BIT(i32 %132, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_VXLAN_CAPABILITY, align 4
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %137, %131
  %142 = load i32, i32* @ECORE_RSS_TUNN_INNER_HDRS, align 4
  %143 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %144 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %143, i32 0, i32 3
  %145 = call i64 @ECORE_TEST_BIT(i32 %142, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_TUNN_INNER_HDRS_CAPABILITY, align 4
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %147, %141
  %152 = load i32, i32* @ECORE_RSS_SET_SRCH, align 4
  %153 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %154 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %153, i32 0, i32 3
  %155 = call i64 @ECORE_TEST_BIT(i32 %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %151
  %158 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %159 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %163 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = call i32 @ECORE_MEMCPY(i32* %161, i32* %165, i32 8)
  %167 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY, align 4
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %157, %151
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @ECORE_CPU_TO_LE16(i32 %171)
  %173 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %174 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  %175 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %176 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %179 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %6, align 8
  %181 = getelementptr inbounds %struct.ecore_rss_config_obj, %struct.ecore_rss_config_obj* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %184 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %186 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %187 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (%struct.bxe_softc*, i8*, ...) @ECORE_MSG(%struct.bxe_softc* %185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  %190 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %191 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %194 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %197 = call i32 @ECORE_MEMCPY(i32* %192, i32* %195, i32 %196)
  %198 = load %struct.ecore_rss_config_obj*, %struct.ecore_rss_config_obj** %6, align 8
  %199 = getelementptr inbounds %struct.ecore_rss_config_obj, %struct.ecore_rss_config_obj* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.ecore_config_rss_params*, %struct.ecore_config_rss_params** %5, align 8
  %202 = getelementptr inbounds %struct.ecore_config_rss_params, %struct.ecore_config_rss_params* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %205 = call i32 @ECORE_MEMCPY(i32* %200, i32* %203, i32 %204)
  %206 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %207 = load i32, i32* @RAMROD_CMD_ID_ETH_RSS_UPDATE, align 4
  %208 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %209 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %212 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %215 = call i32 @ecore_sp_post(%struct.bxe_softc* %206, i32 %207, i32 %210, i32 %213, i32 %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %170
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %3, align 4
  br label %222

220:                                              ; preds = %170
  %221 = load i32, i32* @ECORE_PENDING, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @ECORE_MEMSET(%struct.eth_rss_update_ramrod_data*, i32, i32) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @ECORE_CPU_TO_LE32(i32) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_MEMCPY(i32*, i32*, i32) #1

declare dso_local i32 @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_sp_post(%struct.bxe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
