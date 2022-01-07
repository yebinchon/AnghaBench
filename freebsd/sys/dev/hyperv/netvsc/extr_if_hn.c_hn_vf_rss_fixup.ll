; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_vf_rss_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_vf_rss_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.ifnet*, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32 (%struct.ifnet*, i32, i32)*, i32 }
%struct.ifrsshash = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ifrsskey = type { i32, i32, i32, i32, i32, i32, i32 }

@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: synthetic parts are not attached\00", align 1
@NDIS_HASH_FUNCTION_TOEPLITZ = common dso_local global i32 0, align 4
@SIOCGIFRSSKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s SIOCGRSSKEY failed: %d\0A\00", align 1
@RSS_FUNC_TOEPLITZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s RSS function %u is not Toeplitz\0A\00", align 1
@NDIS_HASH_KEYSIZE_TOEPLITZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s invalid RSS Toeplitz key length %d\0A\00", align 1
@SIOCGIFRSSHASH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%s SIOCGRSSHASH failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"%s intersection of RSS types failed.  VF %#x, mine %#x\0A\00", align 1
@RSS_TYPE_IPV4 = common dso_local global i32 0, align 4
@RSS_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@RSS_TYPE_UDP_IPV4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"disable IPV4 mbuf hash delivery\0A\00", align 1
@RSS_TYPE_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_UDP_IPV6 = common dso_local global i32 0, align 4
@RSS_TYPE_TCP_IPV6_EX = common dso_local global i32 0, align 4
@RSS_TYPE_UDP_IPV6_EX = common dso_local global i32 0, align 4
@RSS_TYPE_IPV6_EX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"disable IPV6 mbuf hash delivery\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"disable IPV6_EX mbuf hash delivery\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"disable TCP_IPV6 mbuf hash delivery\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"disable TCP_IPV6_EX mbuf hash delivery\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"disable UDP_IPV6 mbuf hash delivery\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"disable UDP_IPV6_EX mbuf hash delivery\0A\00", align 1
@NDIS_HASH_FUNCTION_MASK = common dso_local global i32 0, align 4
@HN_FLAG_HAS_RSSKEY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"hn_rss_reconfig failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32)* @hn_vf_rss_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_vf_rss_fixup(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ifrsshash, align 4
  %8 = alloca %struct.ifrsskey, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %14 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %13)
  %15 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %21 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %20, i32 0, i32 6
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %19, i8* %26)
  %28 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %29 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %362

33:                                               ; preds = %2
  %34 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %35 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NDIS_HASH_FUNCTION_TOEPLITZ, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %362

41:                                               ; preds = %33
  %42 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %43 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %42, i32 0, i32 6
  %44 = load %struct.ifnet*, %struct.ifnet** %43, align 8
  store %struct.ifnet* %44, %struct.ifnet** %5, align 8
  %45 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %46 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %45, i32 0, i32 5
  %47 = load %struct.ifnet*, %struct.ifnet** %46, align 8
  store %struct.ifnet* %47, %struct.ifnet** %6, align 8
  %48 = call i32 @memset(%struct.ifrsskey* %8, i32 0, i32 28)
  %49 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %8, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strlcpy(i32 %50, i32 %53, i32 4)
  %55 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %56, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %59 = load i32, i32* @SIOCGIFRSSKEY, align 4
  %60 = ptrtoint %struct.ifrsskey* %8 to i32
  %61 = call i32 %57(%struct.ifnet* %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %41
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  br label %357

71:                                               ; preds = %41
  %72 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %8, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RSS_FUNC_TOEPLITZ, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %78 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %8, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %82)
  br label %357

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %8, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @NDIS_HASH_KEYSIZE_TOEPLITZ, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %91 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %8, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %95)
  br label %357

97:                                               ; preds = %84
  %98 = bitcast %struct.ifrsshash* %7 to %struct.ifrsskey*
  %99 = call i32 @memset(%struct.ifrsskey* %98, i32 0, i32 28)
  %100 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @strlcpy(i32 %101, i32 %104, i32 4)
  %106 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 0
  %108 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %107, align 8
  %109 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %110 = load i32, i32* @SIOCGIFRSSHASH, align 4
  %111 = ptrtoint %struct.ifrsshash* %7 to i32
  %112 = call i32 %108(%struct.ifnet* %109, i32 %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %97
  %116 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %117 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %120)
  br label %357

122:                                              ; preds = %97
  %123 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RSS_FUNC_TOEPLITZ, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %129 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %130 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %133)
  br label %357

135:                                              ; preds = %122
  %136 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %137 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @hn_rss_type_fromndis(i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = and i32 %141, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %135
  %146 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %147 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %148 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %146, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %151, i32 %152)
  br label %357

154:                                              ; preds = %135
  %155 = load i32, i32* %10, align 4
  %156 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %155, %157
  store i32 %158, i32* %11, align 4
  %159 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %10, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @RSS_TYPE_IPV4, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %154
  %169 = load i32, i32* %11, align 4
  %170 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %169, %171
  %173 = load i32, i32* @RSS_TYPE_TCP_IPV4, align 4
  %174 = load i32, i32* @RSS_TYPE_UDP_IPV4, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %168
  %179 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %180 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %181 = load i32, i32* @RSS_TYPE_IPV4, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %12, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %178, %168, %154
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @RSS_TYPE_IPV6, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %213

190:                                              ; preds = %185
  %191 = load i32, i32* %11, align 4
  %192 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %191, %193
  %195 = load i32, i32* @RSS_TYPE_TCP_IPV6, align 4
  %196 = load i32, i32* @RSS_TYPE_UDP_IPV6, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @RSS_TYPE_TCP_IPV6_EX, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @RSS_TYPE_UDP_IPV6_EX, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @RSS_TYPE_IPV6_EX, align 4
  %203 = or i32 %201, %202
  %204 = and i32 %194, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %190
  %207 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %208 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %207, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %209 = load i32, i32* @RSS_TYPE_IPV6, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %12, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %12, align 4
  br label %213

213:                                              ; preds = %206, %190, %185
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @RSS_TYPE_IPV6_EX, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %241

218:                                              ; preds = %213
  %219 = load i32, i32* %11, align 4
  %220 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %219, %221
  %223 = load i32, i32* @RSS_TYPE_TCP_IPV6, align 4
  %224 = load i32, i32* @RSS_TYPE_UDP_IPV6, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @RSS_TYPE_TCP_IPV6_EX, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @RSS_TYPE_UDP_IPV6_EX, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @RSS_TYPE_IPV6, align 4
  %231 = or i32 %229, %230
  %232 = and i32 %222, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %218
  %235 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %236 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %235, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %237 = load i32, i32* @RSS_TYPE_IPV6_EX, align 4
  %238 = xor i32 %237, -1
  %239 = load i32, i32* %12, align 4
  %240 = and i32 %239, %238
  store i32 %240, i32* %12, align 4
  br label %241

241:                                              ; preds = %234, %218, %213
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* @RSS_TYPE_TCP_IPV6, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %241
  %247 = load i32, i32* %11, align 4
  %248 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %247, %249
  %251 = load i32, i32* @RSS_TYPE_TCP_IPV6_EX, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %246
  %255 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %256 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %255, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %257 = load i32, i32* @RSS_TYPE_TCP_IPV6, align 4
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %12, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %12, align 4
  br label %261

261:                                              ; preds = %254, %246, %241
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* @RSS_TYPE_TCP_IPV6_EX, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %261
  %267 = load i32, i32* %11, align 4
  %268 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %267, %269
  %271 = load i32, i32* @RSS_TYPE_TCP_IPV6, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %266
  %275 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %276 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %275, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %277 = load i32, i32* @RSS_TYPE_TCP_IPV6_EX, align 4
  %278 = xor i32 %277, -1
  %279 = load i32, i32* %12, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %12, align 4
  br label %281

281:                                              ; preds = %274, %266, %261
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @RSS_TYPE_UDP_IPV6, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %281
  %287 = load i32, i32* %11, align 4
  %288 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %287, %289
  %291 = load i32, i32* @RSS_TYPE_UDP_IPV6_EX, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %286
  %295 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %296 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %295, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %297 = load i32, i32* @RSS_TYPE_UDP_IPV6, align 4
  %298 = xor i32 %297, -1
  %299 = load i32, i32* %12, align 4
  %300 = and i32 %299, %298
  store i32 %300, i32* %12, align 4
  br label %301

301:                                              ; preds = %294, %286, %281
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* @RSS_TYPE_UDP_IPV6_EX, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %301
  %307 = load i32, i32* %11, align 4
  %308 = getelementptr inbounds %struct.ifrsshash, %struct.ifrsshash* %7, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %307, %309
  %311 = load i32, i32* @RSS_TYPE_UDP_IPV6, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %306
  %315 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %316 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %315, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %317 = load i32, i32* @RSS_TYPE_UDP_IPV6_EX, align 4
  %318 = xor i32 %317, -1
  %319 = load i32, i32* %12, align 4
  %320 = and i32 %319, %318
  store i32 %320, i32* %12, align 4
  br label %321

321:                                              ; preds = %314, %306, %301
  %322 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %323 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @NDIS_HASH_FUNCTION_MASK, align 4
  %326 = and i32 %324, %325
  %327 = load i32, i32* %10, align 4
  %328 = call i32 @hn_rss_type_tondis(i32 %327)
  %329 = or i32 %326, %328
  %330 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %331 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %330, i32 0, i32 3
  store i32 %329, i32* %331, align 4
  %332 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %333 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = getelementptr inbounds %struct.ifrsskey, %struct.ifrsskey* %8, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @memcpy(i32 %335, i32 %337, i32 4)
  %339 = load i32, i32* @HN_FLAG_HAS_RSSKEY, align 4
  %340 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %341 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 8
  %344 = load i32, i32* %4, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %356

346:                                              ; preds = %321
  %347 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %348 = call i32 @hn_rss_reconfig(%struct.hn_softc* %347)
  store i32 %348, i32* %9, align 4
  %349 = load i32, i32* %9, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %346
  %352 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %353 = load i32, i32* %9, align 4
  %354 = call i32 (%struct.ifnet*, i8*, ...) @if_printf(%struct.ifnet* %352, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %353)
  br label %355

355:                                              ; preds = %351, %346
  br label %356

356:                                              ; preds = %355, %321
  br label %357

357:                                              ; preds = %356, %145, %127, %115, %89, %76, %64
  %358 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %359 = load i32, i32* %12, align 4
  %360 = call i32 @hn_rss_type_tondis(i32 %359)
  %361 = call i32 @hn_rss_mbuf_hash(%struct.hn_softc* %358, i32 %360)
  br label %362

362:                                              ; preds = %357, %40, %32
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(%struct.ifrsskey*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @hn_rss_type_fromndis(i32) #1

declare dso_local i32 @hn_rss_type_tondis(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hn_rss_reconfig(%struct.hn_softc*) #1

declare dso_local i32 @hn_rss_mbuf_hash(%struct.hn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
