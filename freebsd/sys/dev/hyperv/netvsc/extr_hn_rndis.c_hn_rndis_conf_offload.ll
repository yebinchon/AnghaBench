; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_conf_offload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_conf_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i64, i32, i32, i32, i32 }
%struct.ndis_offload = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ndis_offload_params = type { i64, i64, i64, i64, i64, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"hwcaps query failed: %d\0A\00", align 1
@NDIS_OBJTYPE_DEFAULT = common dso_local global i32 0, align 4
@HN_NDIS_VERSION_6_30 = common dso_local global i64 0, align 8
@NDIS_OFFLOAD_PARAMS_REV_2 = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAMS_SIZE_6_1 = common dso_local global i64 0, align 8
@NDIS_OFFLOAD_PARAMS_REV_3 = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAMS_SIZE = common dso_local global i64 0, align 8
@IP_MAXPACKET = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_ENCAP_8023 = common dso_local global i32 0, align 4
@HN_CAP_TSO4 = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_LSOV2_ON = common dso_local global i8* null, align 8
@HN_NDIS_LSOV2_CAP_IP6 = common dso_local global i32 0, align 4
@HN_CAP_TSO6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid NDIS TSO maxsz %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid NDIS TSO minsg %d\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"invalid NDIS TSO config: maxsz %d, minsg %d, mtu %d; disable TSO4 and TSO6\0A\00", align 1
@NDIS_OFFLOAD_LSOV2_OFF = common dso_local global i8* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"NDIS TSO szmax %d sgmin %d\0A\00", align 1
@HN_NDIS_TXCSUM_CAP_IP4 = common dso_local global i32 0, align 4
@HN_CAP_IPCS = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAM_TX = common dso_local global i64 0, align 8
@NDIS_RXCSUM_CAP_IP4 = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAM_TXRX = common dso_local global i8* null, align 8
@NDIS_OFFLOAD_PARAM_RX = common dso_local global i8* null, align 8
@HN_NDIS_TXCSUM_CAP_TCP4 = common dso_local global i32 0, align 4
@HN_CAP_TCP4CS = common dso_local global i32 0, align 4
@NDIS_RXCSUM_CAP_TCP4 = common dso_local global i32 0, align 4
@NDIS_TXCSUM_CAP_UDP4 = common dso_local global i32 0, align 4
@HN_CAP_UDP4CS = common dso_local global i32 0, align 4
@NDIS_RXCSUM_CAP_UDP4 = common dso_local global i32 0, align 4
@HN_NDIS_TXCSUM_CAP_TCP6 = common dso_local global i32 0, align 4
@HN_CAP_TCP6CS = common dso_local global i32 0, align 4
@NDIS_RXCSUM_CAP_TCP6 = common dso_local global i32 0, align 4
@HN_NDIS_TXCSUM_CAP_UDP6 = common dso_local global i32 0, align 4
@HN_CAP_UDP6CS = common dso_local global i32 0, align 4
@NDIS_RXCSUM_CAP_UDP6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"offload csum: ip4 %u, tcp4 %u, udp4 %u, tcp6 %u, udp6 %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"offload lsov2: ip4 %u, ip6 %u\0A\00", align 1
@OID_TCP_OFFLOAD_PARAMETERS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"offload config failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"offload config done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, i32)* @hn_rndis_conf_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_rndis_conf_offload(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ndis_offload, align 4
  %7 = alloca %struct.ndis_offload_params, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %14 = call i32 @hn_rndis_query_hwcaps(%struct.hn_softc* %13, %struct.ndis_offload* %6)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %19 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (i32, i8*, ...) @if_printf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %422

24:                                               ; preds = %2
  %25 = call i32 @memset(%struct.ndis_offload_params* %7, i32 0, i32 72)
  %26 = load i32, i32* @NDIS_OBJTYPE_DEFAULT, align 4
  %27 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %30 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HN_NDIS_VERSION_6_30, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @NDIS_OFFLOAD_PARAMS_REV_2, align 4
  %36 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* @NDIS_OFFLOAD_PARAMS_SIZE_6_1, align 8
  store i64 %38, i64* %9, align 8
  br label %44

39:                                               ; preds = %24
  %40 = load i32, i32* @NDIS_OFFLOAD_PARAMS_REV_3, align 4
  %41 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @NDIS_OFFLOAD_PARAMS_SIZE, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @IP_MAXPACKET, align 4
  store i32 %48, i32* %11, align 4
  store i32 2, i32* %12, align 4
  %49 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NDIS_OFFLOAD_ENCAP_8023, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %44
  %56 = load i32, i32* @HN_CAP_TSO4, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** @NDIS_OFFLOAD_LSOV2_ON, align 8
  %60 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 6
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %55
  %71 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %44
  %82 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NDIS_OFFLOAD_ENCAP_8023, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HN_NDIS_LSOV2_CAP_IP6, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @HN_NDIS_LSOV2_CAP_IP6, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %88
  %97 = load i32, i32* @HN_CAP_TSO6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i8*, i8** @NDIS_OFFLOAD_LSOV2_ON, align 8
  %101 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 5
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %107, %96
  %112 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %117, %111
  br label %122

122:                                              ; preds = %121, %88, %81
  %123 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %124 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %123, i32 0, i32 1
  store i32 0, i32* %124, align 8
  %125 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %126 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %125, i32 0, i32 2
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @HN_CAP_TSO4, align 4
  %129 = load i32, i32* @HN_CAP_TSO6, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %127, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %194

133:                                              ; preds = %122
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @IP_MAXPACKET, align 4
  %136 = icmp sle i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @KASSERT(i32 %137, i8* %140)
  %142 = load i32, i32* %12, align 4
  %143 = icmp sge i32 %142, 2
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @KASSERT(i32 %144, i8* %147)
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %5, align 4
  %152 = mul nsw i32 %150, %151
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %133
  %155 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %156 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 (i32, i8*, ...) @if_printf(i32 %157, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* @HN_CAP_TSO4, align 4
  %163 = load i32, i32* @HN_CAP_TSO6, align 4
  %164 = or i32 %162, %163
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %8, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %8, align 4
  %168 = load i8*, i8** @NDIS_OFFLOAD_LSOV2_OFF, align 8
  %169 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 6
  store i8* %168, i8** %169, align 8
  %170 = load i8*, i8** @NDIS_OFFLOAD_LSOV2_OFF, align 8
  %171 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 5
  store i8* %170, i8** %171, align 8
  br label %193

172:                                              ; preds = %133
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %175 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %178 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load i64, i64* @bootverbose, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %172
  %182 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %183 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %186 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %189 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, ...) @if_printf(i32 %184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %187, i32 %190)
  br label %192

192:                                              ; preds = %181, %172
  br label %193

193:                                              ; preds = %192, %154
  br label %194

194:                                              ; preds = %193, %122
  %195 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @HN_NDIS_TXCSUM_CAP_IP4, align 4
  %199 = and i32 %197, %198
  %200 = load i32, i32* @HN_NDIS_TXCSUM_CAP_IP4, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load i32, i32* @HN_CAP_IPCS, align 4
  %204 = load i32, i32* %8, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %8, align 4
  %206 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %207 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 0
  store i64 %206, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %194
  %209 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @NDIS_RXCSUM_CAP_IP4, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load i8*, i8** @NDIS_OFFLOAD_PARAM_TXRX, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 0
  store i64 %222, i64* %223, align 8
  br label %228

224:                                              ; preds = %215
  %225 = load i8*, i8** @NDIS_OFFLOAD_PARAM_RX, align 8
  %226 = ptrtoint i8* %225 to i64
  %227 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 0
  store i64 %226, i64* %227, align 8
  br label %228

228:                                              ; preds = %224, %220
  br label %229

229:                                              ; preds = %228, %208
  %230 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @HN_NDIS_TXCSUM_CAP_TCP4, align 4
  %234 = and i32 %232, %233
  %235 = load i32, i32* @HN_NDIS_TXCSUM_CAP_TCP4, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %229
  %238 = load i32, i32* @HN_CAP_TCP4CS, align 4
  %239 = load i32, i32* %8, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %8, align 4
  %241 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %242 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 1
  store i64 %241, i64* %242, align 8
  br label %243

243:                                              ; preds = %237, %229
  %244 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @NDIS_RXCSUM_CAP_TCP4, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = load i8*, i8** @NDIS_OFFLOAD_PARAM_TXRX, align 8
  %257 = ptrtoint i8* %256 to i64
  %258 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 1
  store i64 %257, i64* %258, align 8
  br label %263

259:                                              ; preds = %250
  %260 = load i8*, i8** @NDIS_OFFLOAD_PARAM_RX, align 8
  %261 = ptrtoint i8* %260 to i64
  %262 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 1
  store i64 %261, i64* %262, align 8
  br label %263

263:                                              ; preds = %259, %255
  br label %264

264:                                              ; preds = %263, %243
  %265 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @NDIS_TXCSUM_CAP_UDP4, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %264
  %272 = load i32, i32* @HN_CAP_UDP4CS, align 4
  %273 = load i32, i32* %8, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %8, align 4
  %275 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %276 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 2
  store i64 %275, i64* %276, align 8
  br label %277

277:                                              ; preds = %271, %264
  %278 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @NDIS_RXCSUM_CAP_UDP4, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = load i8*, i8** @NDIS_OFFLOAD_PARAM_TXRX, align 8
  %291 = ptrtoint i8* %290 to i64
  %292 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 2
  store i64 %291, i64* %292, align 8
  br label %297

293:                                              ; preds = %284
  %294 = load i8*, i8** @NDIS_OFFLOAD_PARAM_RX, align 8
  %295 = ptrtoint i8* %294 to i64
  %296 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 2
  store i64 %295, i64* %296, align 8
  br label %297

297:                                              ; preds = %293, %289
  br label %298

298:                                              ; preds = %297, %277
  %299 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @HN_NDIS_TXCSUM_CAP_TCP6, align 4
  %303 = and i32 %301, %302
  %304 = load i32, i32* @HN_NDIS_TXCSUM_CAP_TCP6, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %298
  %307 = load i32, i32* @HN_CAP_TCP6CS, align 4
  %308 = load i32, i32* %8, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %8, align 4
  %310 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %311 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 3
  store i64 %310, i64* %311, align 8
  br label %312

312:                                              ; preds = %306, %298
  %313 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @NDIS_RXCSUM_CAP_TCP6, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %333

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %319
  %325 = load i8*, i8** @NDIS_OFFLOAD_PARAM_TXRX, align 8
  %326 = ptrtoint i8* %325 to i64
  %327 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 3
  store i64 %326, i64* %327, align 8
  br label %332

328:                                              ; preds = %319
  %329 = load i8*, i8** @NDIS_OFFLOAD_PARAM_RX, align 8
  %330 = ptrtoint i8* %329 to i64
  %331 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 3
  store i64 %330, i64* %331, align 8
  br label %332

332:                                              ; preds = %328, %324
  br label %333

333:                                              ; preds = %332, %312
  %334 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @HN_NDIS_TXCSUM_CAP_UDP6, align 4
  %338 = and i32 %336, %337
  %339 = load i32, i32* @HN_NDIS_TXCSUM_CAP_UDP6, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %347

341:                                              ; preds = %333
  %342 = load i32, i32* @HN_CAP_UDP6CS, align 4
  %343 = load i32, i32* %8, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %8, align 4
  %345 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %346 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 4
  store i64 %345, i64* %346, align 8
  br label %347

347:                                              ; preds = %341, %333
  %348 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %6, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @NDIS_RXCSUM_CAP_UDP6, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %368

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @NDIS_OFFLOAD_PARAM_TX, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %354
  %360 = load i8*, i8** @NDIS_OFFLOAD_PARAM_TXRX, align 8
  %361 = ptrtoint i8* %360 to i64
  %362 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 4
  store i64 %361, i64* %362, align 8
  br label %367

363:                                              ; preds = %354
  %364 = load i8*, i8** @NDIS_OFFLOAD_PARAM_RX, align 8
  %365 = ptrtoint i8* %364 to i64
  %366 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 4
  store i64 %365, i64* %366, align 8
  br label %367

367:                                              ; preds = %363, %359
  br label %368

368:                                              ; preds = %367, %347
  %369 = load i64, i64* @bootverbose, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %394

371:                                              ; preds = %368
  %372 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %373 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 4
  %375 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 4
  %384 = load i64, i64* %383, align 8
  %385 = call i32 (i32, i8*, ...) @if_printf(i32 %374, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i64 %376, i64 %378, i64 %380, i64 %382, i64 %384)
  %386 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %387 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 4
  %389 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 6
  %390 = load i8*, i8** %389, align 8
  %391 = getelementptr inbounds %struct.ndis_offload_params, %struct.ndis_offload_params* %7, i32 0, i32 5
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 (i32, i8*, ...) @if_printf(i32 %388, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %390, i8* %392)
  br label %394

394:                                              ; preds = %371, %368
  %395 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %396 = load i32, i32* @OID_TCP_OFFLOAD_PARAMETERS, align 4
  %397 = load i64, i64* %9, align 8
  %398 = call i32 @hn_rndis_set(%struct.hn_softc* %395, i32 %396, %struct.ndis_offload_params* %7, i64 %397)
  store i32 %398, i32* %10, align 4
  %399 = load i32, i32* %10, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %394
  %402 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %403 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %402, i32 0, i32 4
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %10, align 4
  %406 = call i32 (i32, i8*, ...) @if_printf(i32 %404, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %405)
  %407 = load i32, i32* %10, align 4
  store i32 %407, i32* %3, align 4
  br label %422

408:                                              ; preds = %394
  %409 = load i64, i64* @bootverbose, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %408
  %412 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %413 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 4
  %415 = call i32 (i32, i8*, ...) @if_printf(i32 %414, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %416

416:                                              ; preds = %411, %408
  %417 = load i32, i32* %8, align 4
  %418 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %419 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 8
  %421 = or i32 %420, %417
  store i32 %421, i32* %419, align 8
  store i32 0, i32* %3, align 4
  br label %422

422:                                              ; preds = %416, %401, %17
  %423 = load i32, i32* %3, align 4
  ret i32 %423
}

declare dso_local i32 @hn_rndis_query_hwcaps(%struct.hn_softc*, %struct.ndis_offload*) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.ndis_offload_params*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_rndis_set(%struct.hn_softc*, i32, %struct.ndis_offload_params*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
