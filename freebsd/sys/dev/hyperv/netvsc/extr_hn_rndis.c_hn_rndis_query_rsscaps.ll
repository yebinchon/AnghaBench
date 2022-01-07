; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_query_rsscaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_query_rsscaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i64, i32, i32, i32, i32 }
%struct.ndis_rss_caps = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@HN_NDIS_VERSION_6_20 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NDIS_OBJTYPE_RSS_CAPS = common dso_local global i64 0, align 8
@NDIS_RSS_CAPS_REV_2 = common dso_local global i64 0, align 8
@NDIS_RSS_CAPS_SIZE = common dso_local global i8* null, align 8
@OID_GEN_RECEIVE_SCALE_CAPABILITIES = common dso_local global i32 0, align 4
@NDIS_RSS_CAPS_SIZE_6_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid NDIS objtype 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NDIS_RSS_CAPS_REV_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid NDIS objrev 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"invalid NDIS objsize %u, data size %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid NDIS objsize %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"0 RX rings!?\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"%u RX rings\0A\00", align 1
@NDIS_HASH_INDCNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"too many RSS indirect table entries %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"RSS indirect table size is not power-of-2 %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"RSS indirect table size %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"# of RX rings (%d) > RSS indirect table size %d\0A\00", align 1
@NDIS_RSS_CAP_HASHFUNC_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"no hash functions, caps 0x%08x\0A\00", align 1
@NDIS_RSS_CAP_IPV4 = common dso_local global i32 0, align 4
@NDIS_HASH_IPV4 = common dso_local global i32 0, align 4
@NDIS_HASH_TCP_IPV4 = common dso_local global i32 0, align 4
@NDIS_RSS_CAP_IPV6 = common dso_local global i32 0, align 4
@NDIS_HASH_IPV6 = common dso_local global i32 0, align 4
@NDIS_HASH_TCP_IPV6 = common dso_local global i32 0, align 4
@NDIS_RSS_CAP_IPV6_EX = common dso_local global i32 0, align 4
@NDIS_HASH_IPV6_EX = common dso_local global i32 0, align 4
@NDIS_HASH_TCP_IPV6_EX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"no hash types, caps 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"RSS caps %#x\0A\00", align 1
@HN_CAP_UDPHASH = common dso_local global i32 0, align 4
@NDIS_HASH_UDP_IPV4_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hn_rndis_query_rsscaps(%struct.hn_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ndis_rss_caps, align 8
  %7 = alloca %struct.ndis_rss_caps, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %17 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HN_NDIS_VERSION_6_20, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %22, i32* %3, align 4
  br label %295

23:                                               ; preds = %2
  %24 = call i32 @memset(%struct.ndis_rss_caps* %6, i32 0, i32 40)
  %25 = load i64, i64* @NDIS_OBJTYPE_RSS_CAPS, align 8
  %26 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %6, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* @NDIS_RSS_CAPS_REV_2, align 8
  %29 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %6, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i8*, i8** @NDIS_RSS_CAPS_SIZE, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %6, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** @NDIS_RSS_CAPS_SIZE, align 8
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %38 = load i32, i32* @OID_GEN_RECEIVE_SCALE_CAPABILITIES, align 4
  %39 = load i8*, i8** @NDIS_RSS_CAPS_SIZE, align 8
  %40 = load i64, i64* @NDIS_RSS_CAPS_SIZE_6_0, align 8
  %41 = call i32 @hn_rndis_query2(%struct.hn_softc* %37, i32 %38, %struct.ndis_rss_caps* %6, i8* %39, %struct.ndis_rss_caps* %7, i64* %8, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %23
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %295

46:                                               ; preds = %23
  %47 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NDIS_OBJTYPE_RSS_CAPS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %54 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32, i8*, ...) @if_printf(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %295

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NDIS_RSS_CAPS_REV_1, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %69 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, ...) @if_printf(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %3, align 4
  br label %295

76:                                               ; preds = %61
  %77 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %84 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 (i32, i8*, ...) @if_printf(i32 %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %88, i64 %89)
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %3, align 4
  br label %295

92:                                               ; preds = %76
  %93 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NDIS_RSS_CAPS_SIZE_6_0, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %100 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i32, i8*, ...) @if_printf(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %3, align 4
  br label %295

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %114 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @if_printf(i32 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %3, align 4
  br label %295

118:                                              ; preds = %108
  %119 = load i64, i64* @bootverbose, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %123 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32, i8*, ...) @if_printf(i32 %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %121, %118
  %129 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %11, align 4
  %131 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load i8*, i8** @NDIS_RSS_CAPS_SIZE, align 8
  %136 = icmp eq i8* %134, %135
  br i1 %136, label %137, label %181

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NDIS_RSS_CAPS_REV_2, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %181

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @NDIS_HASH_INDCNT, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %150 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @if_printf(i32 %151, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %155, i32* %3, align 4
  br label %295

156:                                              ; preds = %143
  %157 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @powerof2(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %156
  %162 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %163 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @if_printf(i32 %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %161, %156
  %169 = load i64, i64* @bootverbose, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %173 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @if_printf(i32 %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %171, %168
  %179 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %10, align 4
  br label %183

181:                                              ; preds = %137, %128
  %182 = load i32, i32* @NDIS_HASH_INDCNT, align 4
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %181, %178
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %183
  %188 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %189 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 (i32, i8*, ...) @if_printf(i32 %190, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %191, i32 %192)
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %187, %183
  %196 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @NDIS_RSS_CAP_HASHFUNC_MASK, align 4
  %199 = and i32 %197, %198
  %200 = call i32 @ffs(i32 %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %195
  %204 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %205 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i32, i8*, ...) @if_printf(i32 %206, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %210, i32* %3, align 4
  br label %295

211:                                              ; preds = %195
  %212 = load i32, i32* %12, align 4
  %213 = sub nsw i32 %212, 1
  %214 = shl i32 1, %213
  store i32 %214, i32* %13, align 4
  %215 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @NDIS_RSS_CAP_IPV4, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %211
  %221 = load i32, i32* @NDIS_HASH_IPV4, align 4
  %222 = load i32, i32* @NDIS_HASH_TCP_IPV4, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* %14, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %220, %211
  %227 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @NDIS_RSS_CAP_IPV6, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load i32, i32* @NDIS_HASH_IPV6, align 4
  %234 = load i32, i32* @NDIS_HASH_TCP_IPV6, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* %14, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %232, %226
  %239 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @NDIS_RSS_CAP_IPV6_EX, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = load i32, i32* @NDIS_HASH_IPV6_EX, align 4
  %246 = load i32, i32* @NDIS_HASH_TCP_IPV6_EX, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* %14, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %14, align 4
  br label %250

250:                                              ; preds = %244, %238
  %251 = load i32, i32* %14, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %250
  %254 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %255 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 (i32, i8*, ...) @if_printf(i32 %256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %260, i32* %3, align 4
  br label %295

261:                                              ; preds = %250
  %262 = load i64, i64* @bootverbose, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %266 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds %struct.ndis_rss_caps, %struct.ndis_rss_caps* %7, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i32, i8*, ...) @if_printf(i32 %267, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %264, %261
  %272 = load i32, i32* %10, align 4
  %273 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %274 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* %13, align 4
  %276 = load i32, i32* %14, align 4
  %277 = or i32 %275, %276
  %278 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %279 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 4
  %280 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %281 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @HN_CAP_UDPHASH, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %271
  %287 = load i32, i32* @NDIS_HASH_UDP_IPV4_X, align 4
  %288 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %289 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %286, %271
  %293 = load i32, i32* %11, align 4
  %294 = load i32*, i32** %5, align 8
  store i32 %293, i32* %294, align 4
  store i32 0, i32* %3, align 4
  br label %295

295:                                              ; preds = %292, %253, %203, %148, %112, %98, %82, %67, %52, %44, %21
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local i32 @memset(%struct.ndis_rss_caps*, i32, i32) #1

declare dso_local i32 @hn_rndis_query2(%struct.hn_softc*, i32, %struct.ndis_rss_caps*, i8*, %struct.ndis_rss_caps*, i64*, i64) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
