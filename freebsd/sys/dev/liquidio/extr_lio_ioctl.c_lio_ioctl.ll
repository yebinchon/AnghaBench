; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"ioctl: SIOCSIFADDR\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ioctl: SIOCSIFMTU\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ioctl: SIOCSIFFLAGS\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@LIO_IFSTATE_DETACH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"ioctl: SIOCADDMULTI\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ioctl: SIOCSIFMULTI\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ioctl: SIOCSIFMEDIA\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ioctl: SIOCGIFMEDIA\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ioctl: SIOCGIFXMEDIA\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"ioctl: SIOCSIFCAP (Set Capabilities)\0A\00", align 1
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"ioctl: UNKNOWN (0x%X)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lio*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.lio* @if_getsoftc(%struct.ifnet* %11)
  store %struct.lio* %12, %struct.lio** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %286 [
    i32 132, label %16
    i32 128, label %28
    i32 130, label %38
    i32 136, label %97
    i32 135, label %111
    i32 129, label %116
    i32 134, label %121
    i32 133, label %126
    i32 131, label %137
  ]

16:                                               ; preds = %3
  %17 = load %struct.lio*, %struct.lio** %7, align 8
  %18 = getelementptr inbounds %struct.lio, %struct.lio* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = call i32 @if_setflagbits(%struct.ifnet* %21, i32 %22, i32 0)
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @ether_ioctl(%struct.ifnet* %24, i32 %25, i64 %26)
  store i32 %27, i32* %9, align 4
  br label %296

28:                                               ; preds = %3
  %29 = load %struct.lio*, %struct.lio** %7, align 8
  %30 = getelementptr inbounds %struct.lio, %struct.lio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %35 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lio_change_mtu(%struct.ifnet* %33, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %296

38:                                               ; preds = %3
  %39 = load %struct.lio*, %struct.lio** %7, align 8
  %40 = getelementptr inbounds %struct.lio, %struct.lio* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = call i32 @if_getflags(%struct.ifnet* %43)
  %45 = load i32, i32* @IFF_UP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %38
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = call i32 @if_getdrvflags(%struct.ifnet* %49)
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = call i32 @if_getflags(%struct.ifnet* %55)
  %57 = load %struct.lio*, %struct.lio** %7, align 8
  %58 = getelementptr inbounds %struct.lio, %struct.lio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %56, %59
  %61 = load i32, i32* @IFF_PROMISC, align 4
  %62 = load i32, i32* @IFF_ALLMULTI, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = call i32 @lio_change_dev_flags(%struct.ifnet* %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %54
  br label %81

70:                                               ; preds = %48
  %71 = load %struct.lio*, %struct.lio** %7, align 8
  %72 = getelementptr inbounds %struct.lio, %struct.lio* %71, i32 0, i32 3
  %73 = call i32 @atomic_load_acq_int(i32* %72)
  %74 = load i32, i32* @LIO_IFSTATE_DETACH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load %struct.lio*, %struct.lio** %7, align 8
  %79 = call i32 @lio_open(%struct.lio* %78)
  br label %80

80:                                               ; preds = %77, %70
  br label %81

81:                                               ; preds = %80, %69
  br label %92

82:                                               ; preds = %38
  %83 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %84 = call i32 @if_getdrvflags(%struct.ifnet* %83)
  %85 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = call i32 @lio_stop(%struct.ifnet* %89)
  br label %91

91:                                               ; preds = %88, %82
  br label %92

92:                                               ; preds = %91, %81
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = call i32 @if_getflags(%struct.ifnet* %93)
  %95 = load %struct.lio*, %struct.lio** %7, align 8
  %96 = getelementptr inbounds %struct.lio, %struct.lio* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %296

97:                                               ; preds = %3
  %98 = load %struct.lio*, %struct.lio** %7, align 8
  %99 = getelementptr inbounds %struct.lio, %struct.lio* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %103 = call i32 @if_getdrvflags(%struct.ifnet* %102)
  %104 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %109 = call i32 @lio_set_mcast_list(%struct.ifnet* %108)
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %107, %97
  br label %296

111:                                              ; preds = %3
  %112 = load %struct.lio*, %struct.lio** %7, align 8
  %113 = getelementptr inbounds %struct.lio, %struct.lio* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %296

116:                                              ; preds = %3
  %117 = load %struct.lio*, %struct.lio** %7, align 8
  %118 = getelementptr inbounds %struct.lio, %struct.lio* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %3, %116
  %122 = load %struct.lio*, %struct.lio** %7, align 8
  %123 = getelementptr inbounds %struct.lio, %struct.lio* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %3, %121
  %127 = load %struct.lio*, %struct.lio** %7, align 8
  %128 = getelementptr inbounds %struct.lio, %struct.lio* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %131 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %132 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %133 = load %struct.lio*, %struct.lio** %7, align 8
  %134 = getelementptr inbounds %struct.lio, %struct.lio* %133, i32 0, i32 2
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @ifmedia_ioctl(%struct.ifnet* %131, %struct.ifreq* %132, i32* %134, i32 %135)
  store i32 %136, i32* %9, align 4
  br label %296

137:                                              ; preds = %3
  %138 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %139 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = call i32 @if_getcapenable(%struct.ifnet* %141)
  %143 = xor i32 %140, %142
  store i32 %143, i32* %10, align 4
  %144 = load %struct.lio*, %struct.lio** %7, align 8
  %145 = getelementptr inbounds %struct.lio, %struct.lio* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %137
  br label %296

151:                                              ; preds = %137
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @IFCAP_TXCSUM, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %151
  %157 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %158 = load i32, i32* @IFCAP_TXCSUM, align 4
  %159 = call i32 @if_togglecapenable(%struct.ifnet* %157, i32 %158)
  %160 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %161 = call i32 @if_getcapenable(%struct.ifnet* %160)
  %162 = load i32, i32* @IFCAP_TXCSUM, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %156
  %166 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %167 = load i32, i32* @CSUM_TCP, align 4
  %168 = load i32, i32* @CSUM_UDP, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @CSUM_IP, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @if_sethwassistbits(%struct.ifnet* %166, i32 %171, i32 0)
  br label %181

173:                                              ; preds = %156
  %174 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %175 = load i32, i32* @CSUM_TCP, align 4
  %176 = load i32, i32* @CSUM_UDP, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @CSUM_IP, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @if_sethwassistbits(%struct.ifnet* %174, i32 0, i32 %179)
  br label %181

181:                                              ; preds = %173, %165
  br label %182

182:                                              ; preds = %181, %151
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %182
  %188 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %189 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %190 = call i32 @if_togglecapenable(%struct.ifnet* %188, i32 %189)
  %191 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %192 = call i32 @if_getcapenable(%struct.ifnet* %191)
  %193 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %187
  %197 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %198 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %199 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @if_sethwassistbits(%struct.ifnet* %197, i32 %200, i32 0)
  br label %208

202:                                              ; preds = %187
  %203 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %204 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %205 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @if_sethwassistbits(%struct.ifnet* %203, i32 0, i32 %206)
  br label %208

208:                                              ; preds = %202, %196
  br label %209

209:                                              ; preds = %208, %182
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @IFCAP_RXCSUM, align 4
  %212 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %210, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @IFCAP_RXCSUM, align 4
  %220 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = call i32 @lio_set_rx_csum(%struct.ifnet* %217, i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %216, %209
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @IFCAP_TSO4, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %233 = call i32 @lio_set_tso4(%struct.ifnet* %232)
  %234 = load i32, i32* %9, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %9, align 4
  br label %236

236:                                              ; preds = %231, %226
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @IFCAP_TSO6, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %243 = call i32 @lio_set_tso6(%struct.ifnet* %242)
  %244 = load i32, i32* %9, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %241, %236
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* @IFCAP_LRO, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %253 = call i32 @lio_set_lro(%struct.ifnet* %252)
  %254 = load i32, i32* %9, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %9, align 4
  br label %256

256:                                              ; preds = %251, %246
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %263 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %264 = call i32 @if_togglecapenable(%struct.ifnet* %262, i32 %263)
  br label %265

265:                                              ; preds = %261, %256
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %272 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %273 = call i32 @if_togglecapenable(%struct.ifnet* %271, i32 %272)
  br label %274

274:                                              ; preds = %270, %265
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %281 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %282 = call i32 @if_togglecapenable(%struct.ifnet* %280, i32 %281)
  br label %283

283:                                              ; preds = %279, %274
  %284 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %285 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %284)
  br label %296

286:                                              ; preds = %3
  %287 = load %struct.lio*, %struct.lio** %7, align 8
  %288 = getelementptr inbounds %struct.lio, %struct.lio* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %5, align 4
  %291 = call i32 (i32, i8*, ...) @lio_dev_dbg(i32 %289, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %290)
  %292 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %293 = load i32, i32* %5, align 4
  %294 = load i64, i64* %6, align 8
  %295 = call i32 @ether_ioctl(%struct.ifnet* %292, i32 %293, i64 %294)
  store i32 %295, i32* %9, align 4
  br label %296

296:                                              ; preds = %286, %283, %150, %126, %111, %110, %92, %28, %16
  %297 = load i32, i32* %9, align 4
  ret i32 %297
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @lio_dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @if_setflagbits(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @lio_change_mtu(%struct.ifnet*, i32) #1

declare dso_local i32 @if_getflags(%struct.ifnet*) #1

declare dso_local i32 @if_getdrvflags(%struct.ifnet*) #1

declare dso_local i32 @lio_change_dev_flags(%struct.ifnet*) #1

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @lio_open(%struct.lio*) #1

declare dso_local i32 @lio_stop(%struct.ifnet*) #1

declare dso_local i32 @lio_set_mcast_list(%struct.ifnet*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #1

declare dso_local i32 @if_togglecapenable(%struct.ifnet*, i32) #1

declare dso_local i32 @if_sethwassistbits(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @lio_set_rx_csum(%struct.ifnet*, i32) #1

declare dso_local i32 @lio_set_tso4(%struct.ifnet*) #1

declare dso_local i32 @lio_set_tso6(%struct.ifnet*) #1

declare dso_local i32 @lio_set_lro(%struct.ifnet*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
