; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsyncioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsyncioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.pfsync_softc* }
%struct.pfsync_softc = type { i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_10__, %struct.pfsyncreq, %struct.ifnet*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.pfsyncreq = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.in_mfilter = type { i32 }
%struct.ip = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32* }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@PFSYNC_MINPKT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pfsync_buckets = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@PFSYNCF_DEFER = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PRIV_NETINET_PF = common dso_local global i32 0, align 4
@INADDR_PFSYNC_GROUP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@pfsync_defer = common dso_local global i32* null, align 8
@V_pfsync_defer_ptr = common dso_local global i32* null, align 8
@MCLBYTES = common dso_local global i32 0, align 4
@IPVERSION = common dso_local global i32 0, align 4
@IPTOS_LOWDELAY = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@PFSYNC_DFLTTL = common dso_local global i32 0, align 4
@IPPROTO_PFSYNC = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@PFSYNCF_OK = common dso_local global i32 0, align 4
@V_pfsync_carp_adj = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pfsync bulk start\00", align 1
@V_pf_status = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@PF_DEBUG_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"pfsync: requesting bulk update\0A\00", align 1
@time_uptime = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@pfsync_bulk_fail = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @pfsyncioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsyncioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pfsync_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca %struct.pfsyncreq, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.in_mfilter*, align 8
  %14 = alloca %struct.ifnet*, align 8
  %15 = alloca %struct.ip*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 4
  %18 = load %struct.pfsync_softc*, %struct.pfsync_softc** %17, align 8
  store %struct.pfsync_softc* %18, %struct.pfsync_softc** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %19 to %struct.ifreq*
  store %struct.ifreq* %20, %struct.ifreq** %9, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %479 [
    i32 129, label %22
    i32 128, label %51
    i32 131, label %126
    i32 130, label %168
  ]

22:                                               ; preds = %3
  %23 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %24 = call i32 @PFSYNC_LOCK(%struct.pfsync_softc* %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %38 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %37)
  %39 = call i32 (...) @pfsync_pointers_init()
  br label %50

40:                                               ; preds = %22
  %41 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %48 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %47)
  %49 = call i32 (...) @pfsync_pointers_uninit()
  br label %50

50:                                               ; preds = %40, %31
  br label %481

51:                                               ; preds = %3
  %52 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %53 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %52, i32 0, i32 7
  %54 = load %struct.ifnet*, %struct.ifnet** %53, align 8
  %55 = icmp ne %struct.ifnet* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %58 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PFSYNC_MINPKT, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %64 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %67 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %66, i32 0, i32 7
  %68 = load %struct.ifnet*, %struct.ifnet** %67, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %65, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62, %56, %51
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %4, align 4
  br label %482

74:                                               ; preds = %62
  %75 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %76 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %116, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @pfsync_buckets, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %83
  %88 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %89 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %88, i32 0, i32 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 %92
  %94 = call i32 @PFSYNC_BUCKET_LOCK(%struct.TYPE_13__* %93)
  %95 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %96 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %95, i32 0, i32 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PFSYNC_MINPKT, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %87
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @pfsync_sendout(i32 1, i32 %106)
  br label %108

108:                                              ; preds = %105, %87
  %109 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %110 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %109, i32 0, i32 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 %113
  %115 = call i32 @PFSYNC_BUCKET_UNLOCK(%struct.TYPE_13__* %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %83

119:                                              ; preds = %83
  br label %120

120:                                              ; preds = %119, %74
  %121 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %122 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %125 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %481

126:                                              ; preds = %3
  %127 = call i32 @bzero(%struct.pfsyncreq* %10, i32 56)
  %128 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %129 = call i32 @PFSYNC_LOCK(%struct.pfsync_softc* %128)
  %130 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %131 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %130, i32 0, i32 7
  %132 = load %struct.ifnet*, %struct.ifnet** %131, align 8
  %133 = icmp ne %struct.ifnet* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 11
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %138 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %137, i32 0, i32 7
  %139 = load %struct.ifnet*, %struct.ifnet** %138, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IFNAMSIZ, align 4
  %143 = call i32 @strlcpy(i32* %136, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %134, %126
  %145 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 10
  %146 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %147 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %146, i32 0, i32 5
  %148 = bitcast %struct.TYPE_10__* %145 to i8*
  %149 = bitcast %struct.TYPE_10__* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 4, i1 false)
  %150 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %151 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 0
  store i32 %152, i32* %153, align 8
  %154 = load i32, i32* @PFSYNCF_DEFER, align 4
  %155 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %156 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @PFSYNCF_DEFER, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %154, %159
  %161 = zext i1 %160 to i32
  %162 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 1
  store i32 %161, i32* %162, align 4
  %163 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %164 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %163)
  %165 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %166 = call i32 @ifr_data_get_ptr(%struct.ifreq* %165)
  %167 = call i32 @copyout(%struct.pfsyncreq* %10, i32 %166, i32 56)
  store i32 %167, i32* %4, align 4
  br label %482

168:                                              ; preds = %3
  store %struct.in_mfilter* null, %struct.in_mfilter** %13, align 8
  %169 = load i32, i32* @curthread, align 4
  %170 = load i32, i32* @PRIV_NETINET_PF, align 4
  %171 = call i32 @priv_check(i32 %169, i32 %170)
  store i32 %171, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %4, align 4
  br label %482

175:                                              ; preds = %168
  %176 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %177 = call i32 @ifr_data_get_ptr(%struct.ifreq* %176)
  %178 = call i32 @copyin(i32 %177, %struct.pfsyncreq* %10, i32 56)
  store i32 %178, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %4, align 4
  br label %482

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 255
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* @EINVAL, align 4
  store i32 %187, i32* %4, align 4
  br label %482

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 11
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  store %struct.ifnet* null, %struct.ifnet** %14, align 8
  br label %203

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 11
  %197 = load i32*, i32** %196, align 8
  %198 = call %struct.ifnet* @ifunit_ref(i32* %197)
  store %struct.ifnet* %198, %struct.ifnet** %14, align 8
  %199 = icmp eq %struct.ifnet* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @EINVAL, align 4
  store i32 %201, i32* %4, align 4
  br label %482

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %194
  %204 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %205 = icmp ne %struct.ifnet* %204, null
  br i1 %205, label %206, label %221

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 10
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 10
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @INADDR_PFSYNC_GROUP, align 4
  %216 = call i32 @htonl(i32 %215)
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %211, %206
  %219 = load i32, i32* @M_WAITOK, align 4
  %220 = call %struct.in_mfilter* @ip_mfilter_alloc(i32 %219, i32 0, i32 0)
  store %struct.in_mfilter* %220, %struct.in_mfilter** %13, align 8
  br label %221

221:                                              ; preds = %218, %211, %203
  %222 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %223 = call i32 @PFSYNC_LOCK(%struct.pfsync_softc* %222)
  %224 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 10
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %221
  %229 = load i32, i32* @INADDR_PFSYNC_GROUP, align 4
  %230 = call i32 @htonl(i32 %229)
  %231 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %232 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  br label %241

234:                                              ; preds = %221
  %235 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 10
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %239 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  br label %241

241:                                              ; preds = %234, %228
  %242 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %245 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %10, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %241
  %250 = load i32, i32* @PFSYNCF_DEFER, align 4
  %251 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %252 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = load i32*, i32** @pfsync_defer, align 8
  store i32* %255, i32** @V_pfsync_defer_ptr, align 8
  br label %263

256:                                              ; preds = %241
  %257 = load i32, i32* @PFSYNCF_DEFER, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %260 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 4
  store i32* null, i32** @V_pfsync_defer_ptr, align 8
  br label %263

263:                                              ; preds = %256, %249
  %264 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %265 = icmp eq %struct.ifnet* %264, null
  br i1 %265, label %266, label %283

266:                                              ; preds = %263
  %267 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %268 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %267, i32 0, i32 7
  %269 = load %struct.ifnet*, %struct.ifnet** %268, align 8
  %270 = icmp ne %struct.ifnet* %269, null
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %273 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %272, i32 0, i32 7
  %274 = load %struct.ifnet*, %struct.ifnet** %273, align 8
  %275 = call i32 @if_rele(%struct.ifnet* %274)
  br label %276

276:                                              ; preds = %271, %266
  %277 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %278 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %277, i32 0, i32 7
  store %struct.ifnet* null, %struct.ifnet** %278, align 8
  %279 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %280 = call i32 @pfsync_multicast_cleanup(%struct.pfsync_softc* %279)
  %281 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %282 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %281)
  br label %481

283:                                              ; preds = %263
  store i32 0, i32* %12, align 4
  br label %284

284:                                              ; preds = %351, %283
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* @pfsync_buckets, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %354

288:                                              ; preds = %284
  %289 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %290 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %289, i32 0, i32 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i64 %293
  %295 = call i32 @PFSYNC_BUCKET_LOCK(%struct.TYPE_13__* %294)
  %296 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %297 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %296, i32 0, i32 4
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %297, align 8
  %299 = load i32, i32* %12, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @PFSYNC_MINPKT, align 4
  %305 = icmp sgt i32 %303, %304
  br i1 %305, label %306, label %343

306:                                              ; preds = %288
  %307 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %308 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %311 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %310, i32 0, i32 8
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp slt i32 %309, %314
  br i1 %315, label %340, label %316

316:                                              ; preds = %306
  %317 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %318 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %317, i32 0, i32 7
  %319 = load %struct.ifnet*, %struct.ifnet** %318, align 8
  %320 = icmp ne %struct.ifnet* %319, null
  br i1 %320, label %321, label %331

321:                                              ; preds = %316
  %322 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %323 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %326 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %325, i32 0, i32 7
  %327 = load %struct.ifnet*, %struct.ifnet** %326, align 8
  %328 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = icmp slt i32 %324, %329
  br i1 %330, label %340, label %331

331:                                              ; preds = %321, %316
  %332 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %333 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* @MCLBYTES, align 4
  %337 = sext i32 %336 to i64
  %338 = sub i64 %337, 56
  %339 = icmp ult i64 %335, %338
  br i1 %339, label %340, label %343

340:                                              ; preds = %331, %321, %306
  %341 = load i32, i32* %12, align 4
  %342 = call i32 @pfsync_sendout(i32 1, i32 %341)
  br label %343

343:                                              ; preds = %340, %331, %288
  %344 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %345 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %344, i32 0, i32 4
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %345, align 8
  %347 = load i32, i32* %12, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i64 %348
  %350 = call i32 @PFSYNC_BUCKET_UNLOCK(%struct.TYPE_13__* %349)
  br label %351

351:                                              ; preds = %343
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %12, align 4
  br label %284

354:                                              ; preds = %284
  %355 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %356 = call i32 @pfsync_multicast_cleanup(%struct.pfsync_softc* %355)
  %357 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %358 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @INADDR_PFSYNC_GROUP, align 4
  %362 = call i32 @htonl(i32 %361)
  %363 = icmp eq i32 %360, %362
  br i1 %363, label %364, label %380

364:                                              ; preds = %354
  %365 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %366 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %367 = load %struct.in_mfilter*, %struct.in_mfilter** %13, align 8
  %368 = call i32 @pfsync_multicast_setup(%struct.pfsync_softc* %365, %struct.ifnet* %366, %struct.in_mfilter* %367)
  store i32 %368, i32* %11, align 4
  %369 = load i32, i32* %11, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %364
  %372 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %373 = call i32 @if_rele(%struct.ifnet* %372)
  %374 = load %struct.in_mfilter*, %struct.in_mfilter** %13, align 8
  %375 = call i32 @ip_mfilter_free(%struct.in_mfilter* %374)
  %376 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %377 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %376)
  %378 = load i32, i32* %11, align 4
  store i32 %378, i32* %4, align 4
  br label %482

379:                                              ; preds = %364
  br label %380

380:                                              ; preds = %379, %354
  %381 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %382 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %381, i32 0, i32 7
  %383 = load %struct.ifnet*, %struct.ifnet** %382, align 8
  %384 = icmp ne %struct.ifnet* %383, null
  br i1 %384, label %385, label %390

385:                                              ; preds = %380
  %386 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %387 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %386, i32 0, i32 7
  %388 = load %struct.ifnet*, %struct.ifnet** %387, align 8
  %389 = call i32 @if_rele(%struct.ifnet* %388)
  br label %390

390:                                              ; preds = %385, %380
  %391 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %392 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %393 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %392, i32 0, i32 7
  store %struct.ifnet* %391, %struct.ifnet** %393, align 8
  %394 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %395 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %394, i32 0, i32 6
  %396 = bitcast %struct.pfsyncreq* %395 to %struct.ip*
  store %struct.ip* %396, %struct.ip** %15, align 8
  %397 = load %struct.ip*, %struct.ip** %15, align 8
  %398 = bitcast %struct.ip* %397 to %struct.pfsyncreq*
  %399 = call i32 @bzero(%struct.pfsyncreq* %398, i32 56)
  %400 = load i32, i32* @IPVERSION, align 4
  %401 = load %struct.ip*, %struct.ip** %15, align 8
  %402 = getelementptr inbounds %struct.ip, %struct.ip* %401, i32 0, i32 9
  store i32 %400, i32* %402, align 4
  %403 = load %struct.ip*, %struct.ip** %15, align 8
  %404 = getelementptr inbounds %struct.ip, %struct.ip* %403, i32 0, i32 2
  store i32 14, i32* %404, align 8
  %405 = load i32, i32* @IPTOS_LOWDELAY, align 4
  %406 = load %struct.ip*, %struct.ip** %15, align 8
  %407 = getelementptr inbounds %struct.ip, %struct.ip* %406, i32 0, i32 8
  store i32 %405, i32* %407, align 8
  %408 = load i32, i32* @IP_DF, align 4
  %409 = call i32 @htons(i32 %408)
  %410 = load %struct.ip*, %struct.ip** %15, align 8
  %411 = getelementptr inbounds %struct.ip, %struct.ip* %410, i32 0, i32 7
  store i32 %409, i32* %411, align 4
  %412 = load i32, i32* @PFSYNC_DFLTTL, align 4
  %413 = load %struct.ip*, %struct.ip** %15, align 8
  %414 = getelementptr inbounds %struct.ip, %struct.ip* %413, i32 0, i32 6
  store i32 %412, i32* %414, align 8
  %415 = load i32, i32* @IPPROTO_PFSYNC, align 4
  %416 = load %struct.ip*, %struct.ip** %15, align 8
  %417 = getelementptr inbounds %struct.ip, %struct.ip* %416, i32 0, i32 5
  store i32 %415, i32* %417, align 4
  %418 = load i32, i32* @INADDR_ANY, align 4
  %419 = load %struct.ip*, %struct.ip** %15, align 8
  %420 = getelementptr inbounds %struct.ip, %struct.ip* %419, i32 0, i32 4
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 0
  store i32 %418, i32* %421, align 8
  %422 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %423 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.ip*, %struct.ip** %15, align 8
  %427 = getelementptr inbounds %struct.ip, %struct.ip* %426, i32 0, i32 3
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 0
  store i32 %425, i32* %428, align 4
  %429 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %430 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @PFSYNCF_OK, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %390
  br i1 true, label %436, label %439

436:                                              ; preds = %435
  %437 = load i32, i32* @V_pfsync_carp_adj, align 4
  %438 = call i32 @carp_demote_adj_p(i32 %437, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %439

439:                                              ; preds = %436, %435, %390
  %440 = load i32, i32* @PFSYNCF_OK, align 4
  %441 = xor i32 %440, -1
  %442 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %443 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = and i32 %444, %441
  store i32 %445, i32* %443, align 4
  %446 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @V_pf_status, i32 0, i32 0), align 4
  %447 = load i32, i32* @PF_DEBUG_MISC, align 4
  %448 = icmp sge i32 %446, %447
  br i1 %448, label %449, label %451

449:                                              ; preds = %439
  %450 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %451

451:                                              ; preds = %449, %439
  %452 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %453 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %452)
  %454 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %455 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %454, i32 0, i32 4
  %456 = load %struct.TYPE_13__*, %struct.TYPE_13__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i64 0
  %458 = call i32 @PFSYNC_BUCKET_LOCK(%struct.TYPE_13__* %457)
  %459 = call i32 @pfsync_request_update(i32 0, i32 0)
  %460 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %461 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %460, i32 0, i32 4
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i64 0
  %464 = call i32 @PFSYNC_BUCKET_UNLOCK(%struct.TYPE_13__* %463)
  %465 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %466 = call i32 @PFSYNC_BLOCK(%struct.pfsync_softc* %465)
  %467 = load i32, i32* @time_uptime, align 4
  %468 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %469 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %468, i32 0, i32 3
  store i32 %467, i32* %469, align 4
  %470 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %471 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %470, i32 0, i32 2
  %472 = load i32, i32* @hz, align 4
  %473 = mul nsw i32 5, %472
  %474 = load i32, i32* @pfsync_bulk_fail, align 4
  %475 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %476 = call i32 @callout_reset(i32* %471, i32 %473, i32 %474, %struct.pfsync_softc* %475)
  %477 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %478 = call i32 @PFSYNC_BUNLOCK(%struct.pfsync_softc* %477)
  br label %481

479:                                              ; preds = %3
  %480 = load i32, i32* @ENOTTY, align 4
  store i32 %480, i32* %4, align 4
  br label %482

481:                                              ; preds = %451, %276, %120, %50
  store i32 0, i32* %4, align 4
  br label %482

482:                                              ; preds = %481, %479, %371, %200, %186, %180, %173, %144, %72
  %483 = load i32, i32* %4, align 4
  ret i32 %483
}

declare dso_local i32 @PFSYNC_LOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @PFSYNC_UNLOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @pfsync_pointers_init(...) #1

declare dso_local i32 @pfsync_pointers_uninit(...) #1

declare dso_local i32 @PFSYNC_BUCKET_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @pfsync_sendout(i32, i32) #1

declare dso_local i32 @PFSYNC_BUCKET_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @bzero(%struct.pfsyncreq*, i32) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @copyout(%struct.pfsyncreq*, i32, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local i32 @copyin(i32, %struct.pfsyncreq*, i32) #1

declare dso_local %struct.ifnet* @ifunit_ref(i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.in_mfilter* @ip_mfilter_alloc(i32, i32, i32) #1

declare dso_local i32 @if_rele(%struct.ifnet*) #1

declare dso_local i32 @pfsync_multicast_cleanup(%struct.pfsync_softc*) #1

declare dso_local i32 @pfsync_multicast_setup(%struct.pfsync_softc*, %struct.ifnet*, %struct.in_mfilter*) #1

declare dso_local i32 @ip_mfilter_free(%struct.in_mfilter*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @carp_demote_adj_p(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pfsync_request_update(i32, i32) #1

declare dso_local i32 @PFSYNC_BLOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.pfsync_softc*) #1

declare dso_local i32 @PFSYNC_BUNLOCK(%struct.pfsync_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
