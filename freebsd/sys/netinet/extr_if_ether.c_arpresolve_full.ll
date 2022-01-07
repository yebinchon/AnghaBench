; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arpresolve_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arpresolve_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.sockaddr = type { i32 }
%struct.llentry = type { i32, i64, i8*, i8*, i32, i64, i64, i32, %struct.mbuf* }
%struct.TYPE_2__ = type { i32 }

@LLE_CREATE = common dso_local global i32 0, align 4
@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_STATICARP = common dso_local global i32 0, align 4
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"arpresolve: can't allocate llinfo for %s on %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LLE_VALID = common dso_local global i32 0, align 4
@LLE_STATIC = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@LLE_ADDRONLY = common dso_local global i32 0, align 4
@LLE_IFADDR = common dso_local global i32 0, align 4
@V_arp_maxhold = common dso_local global i64 0, align 8
@dropped = common dso_local global i32 0, align 4
@V_arp_maxtries = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@V_arpt_down = common dso_local global i32 0, align 4
@arptimer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32, %struct.mbuf*, %struct.sockaddr*, i32*, i32*, %struct.llentry**)* @arpresolve_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arpresolve_full(%struct.ifnet* %0, i32 %1, i32 %2, %struct.mbuf* %3, %struct.sockaddr* %4, i32* %5, i32* %6, %struct.llentry** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.llentry**, align 8
  %18 = alloca %struct.llentry*, align 8
  %19 = alloca %struct.llentry*, align 8
  %20 = alloca %struct.mbuf*, align 8
  %21 = alloca %struct.mbuf*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.mbuf* %3, %struct.mbuf** %13, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.llentry** %7, %struct.llentry*** %17, align 8
  store %struct.llentry* null, %struct.llentry** %18, align 8
  store %struct.mbuf* null, %struct.mbuf** %20, align 8
  store %struct.mbuf* null, %struct.mbuf** %21, align 8
  %30 = call i32 (...) @NET_EPOCH_ASSERT()
  %31 = load i32*, i32** %16, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i32*, i32** %16, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %8
  %36 = load %struct.llentry**, %struct.llentry*** %17, align 8
  %37 = icmp ne %struct.llentry** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load %struct.llentry**, %struct.llentry*** %17, align 8
  store %struct.llentry* null, %struct.llentry** %39, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @LLE_CREATE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %47 = call i32 @LLTABLE(%struct.ifnet* %46)
  %48 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %49 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %50 = call %struct.llentry* @lla_lookup(i32 %47, i32 %48, %struct.sockaddr* %49)
  store %struct.llentry* %50, %struct.llentry** %18, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.llentry*, %struct.llentry** %18, align 8
  %53 = icmp eq %struct.llentry* %52, null
  br i1 %53, label %54, label %117

54:                                               ; preds = %51
  %55 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_NOARP, align 4
  %59 = load i32, i32* @IFF_STATICARP, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %117

63:                                               ; preds = %54
  %64 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %65 = call i32 @LLTABLE(%struct.ifnet* %64)
  %66 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %67 = call %struct.llentry* @lltable_alloc_entry(i32 %65, i32 0, %struct.sockaddr* %66)
  store %struct.llentry* %67, %struct.llentry** %18, align 8
  %68 = load %struct.llentry*, %struct.llentry** %18, align 8
  %69 = icmp eq %struct.llentry* %68, null
  br i1 %69, label %70, label %88

70:                                               ; preds = %63
  %71 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %26, align 8
  %74 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %27, align 8
  %75 = load i32, i32* @LOG_DEBUG, align 4
  %76 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %77 = call %struct.TYPE_2__* @SIN(%struct.sockaddr* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @inet_ntoa_r(i32 %79, i8* %74)
  %81 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %82 = call i32 @if_name(%struct.ifnet* %81)
  %83 = call i32 @log(i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %82)
  %84 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %85 = call i32 @m_freem(%struct.mbuf* %84)
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %87)
  br label %331

88:                                               ; preds = %63
  %89 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %90 = call i32 @IF_AFDATA_WLOCK(%struct.ifnet* %89)
  %91 = load %struct.llentry*, %struct.llentry** %18, align 8
  %92 = call i32 @LLE_WLOCK(%struct.llentry* %91)
  %93 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %94 = call i32 @LLTABLE(%struct.ifnet* %93)
  %95 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %96 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %97 = call %struct.llentry* @lla_lookup(i32 %94, i32 %95, %struct.sockaddr* %96)
  store %struct.llentry* %97, %struct.llentry** %19, align 8
  %98 = load %struct.llentry*, %struct.llentry** %19, align 8
  %99 = icmp eq %struct.llentry* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %88
  %101 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %102 = call i32 @LLTABLE(%struct.ifnet* %101)
  %103 = load %struct.llentry*, %struct.llentry** %18, align 8
  %104 = call i32 @lltable_link_entry(i32 %102, %struct.llentry* %103)
  br label %105

105:                                              ; preds = %100, %88
  %106 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %107 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %106)
  %108 = load %struct.llentry*, %struct.llentry** %19, align 8
  %109 = icmp ne %struct.llentry* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %112 = call i32 @LLTABLE(%struct.ifnet* %111)
  %113 = load %struct.llentry*, %struct.llentry** %18, align 8
  %114 = call i32 @lltable_free_entry(i32 %112, %struct.llentry* %113)
  %115 = load %struct.llentry*, %struct.llentry** %19, align 8
  store %struct.llentry* %115, %struct.llentry** %18, align 8
  br label %116

116:                                              ; preds = %110, %105
  br label %117

117:                                              ; preds = %116, %54, %51
  %118 = load %struct.llentry*, %struct.llentry** %18, align 8
  %119 = icmp eq %struct.llentry* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %122 = call i32 @m_freem(%struct.mbuf* %121)
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %9, align 4
  br label %331

124:                                              ; preds = %117
  %125 = load %struct.llentry*, %struct.llentry** %18, align 8
  %126 = getelementptr inbounds %struct.llentry, %struct.llentry* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @LLE_VALID, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %192

131:                                              ; preds = %124
  %132 = load %struct.llentry*, %struct.llentry** %18, align 8
  %133 = getelementptr inbounds %struct.llentry, %struct.llentry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @LLE_STATIC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %131
  %139 = load %struct.llentry*, %struct.llentry** %18, align 8
  %140 = getelementptr inbounds %struct.llentry, %struct.llentry* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @time_uptime, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %192

144:                                              ; preds = %138, %131
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @LLE_ADDRONLY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.llentry*, %struct.llentry** %18, align 8
  %151 = getelementptr inbounds %struct.llentry, %struct.llentry* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %24, align 8
  %153 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %25, align 4
  br label %163

156:                                              ; preds = %144
  %157 = load %struct.llentry*, %struct.llentry** %18, align 8
  %158 = getelementptr inbounds %struct.llentry, %struct.llentry* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %24, align 8
  %160 = load %struct.llentry*, %struct.llentry** %18, align 8
  %161 = getelementptr inbounds %struct.llentry, %struct.llentry* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %25, align 4
  br label %163

163:                                              ; preds = %156, %149
  %164 = load i8*, i8** %24, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = load i32, i32* %25, align 4
  %167 = call i32 @bcopy(i8* %164, i32* %165, i32 %166)
  %168 = load %struct.llentry*, %struct.llentry** %18, align 8
  %169 = call i32 @llentry_mark_used(%struct.llentry* %168)
  %170 = load i32*, i32** %16, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %163
  %173 = load %struct.llentry*, %struct.llentry** %18, align 8
  %174 = getelementptr inbounds %struct.llentry, %struct.llentry* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @LLE_VALID, align 4
  %177 = load i32, i32* @LLE_IFADDR, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = load i32*, i32** %16, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %172, %163
  %182 = load %struct.llentry**, %struct.llentry*** %17, align 8
  %183 = icmp ne %struct.llentry** %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load %struct.llentry*, %struct.llentry** %18, align 8
  %186 = call i32 @LLE_ADDREF(%struct.llentry* %185)
  %187 = load %struct.llentry*, %struct.llentry** %18, align 8
  %188 = load %struct.llentry**, %struct.llentry*** %17, align 8
  store %struct.llentry* %187, %struct.llentry** %188, align 8
  br label %189

189:                                              ; preds = %184, %181
  %190 = load %struct.llentry*, %struct.llentry** %18, align 8
  %191 = call i32 @LLE_WUNLOCK(%struct.llentry* %190)
  store i32 0, i32* %9, align 4
  br label %331

192:                                              ; preds = %138, %124
  %193 = load %struct.llentry*, %struct.llentry** %18, align 8
  %194 = getelementptr inbounds %struct.llentry, %struct.llentry* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %192
  %198 = load %struct.llentry*, %struct.llentry** %18, align 8
  %199 = getelementptr inbounds %struct.llentry, %struct.llentry* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @time_uptime, align 8
  %202 = icmp ne i64 %200, %201
  br label %203

203:                                              ; preds = %197, %192
  %204 = phi i1 [ true, %192 ], [ %202, %197 ]
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %23, align 4
  %206 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %207 = icmp ne %struct.mbuf* %206, null
  br i1 %207, label %208, label %270

208:                                              ; preds = %203
  %209 = load %struct.llentry*, %struct.llentry** %18, align 8
  %210 = getelementptr inbounds %struct.llentry, %struct.llentry* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @V_arp_maxhold, align 8
  %213 = icmp sge i64 %211, %212
  br i1 %213, label %214, label %239

214:                                              ; preds = %208
  %215 = load %struct.llentry*, %struct.llentry** %18, align 8
  %216 = getelementptr inbounds %struct.llentry, %struct.llentry* %215, i32 0, i32 8
  %217 = load %struct.mbuf*, %struct.mbuf** %216, align 8
  %218 = icmp ne %struct.mbuf* %217, null
  br i1 %218, label %219, label %238

219:                                              ; preds = %214
  %220 = load %struct.llentry*, %struct.llentry** %18, align 8
  %221 = getelementptr inbounds %struct.llentry, %struct.llentry* %220, i32 0, i32 8
  %222 = load %struct.mbuf*, %struct.mbuf** %221, align 8
  %223 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %222, i32 0, i32 0
  %224 = load %struct.mbuf*, %struct.mbuf** %223, align 8
  store %struct.mbuf* %224, %struct.mbuf** %21, align 8
  %225 = load %struct.llentry*, %struct.llentry** %18, align 8
  %226 = getelementptr inbounds %struct.llentry, %struct.llentry* %225, i32 0, i32 8
  %227 = load %struct.mbuf*, %struct.mbuf** %226, align 8
  %228 = call i32 @m_freem(%struct.mbuf* %227)
  %229 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %230 = load %struct.llentry*, %struct.llentry** %18, align 8
  %231 = getelementptr inbounds %struct.llentry, %struct.llentry* %230, i32 0, i32 8
  store %struct.mbuf* %229, %struct.mbuf** %231, align 8
  %232 = load %struct.llentry*, %struct.llentry** %18, align 8
  %233 = getelementptr inbounds %struct.llentry, %struct.llentry* %232, i32 0, i32 6
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, -1
  store i64 %235, i64* %233, align 8
  %236 = load i32, i32* @dropped, align 4
  %237 = call i32 @ARPSTAT_INC(i32 %236)
  br label %238

238:                                              ; preds = %219, %214
  br label %239

239:                                              ; preds = %238, %208
  %240 = load %struct.llentry*, %struct.llentry** %18, align 8
  %241 = getelementptr inbounds %struct.llentry, %struct.llentry* %240, i32 0, i32 8
  %242 = load %struct.mbuf*, %struct.mbuf** %241, align 8
  %243 = icmp ne %struct.mbuf* %242, null
  br i1 %243, label %244, label %261

244:                                              ; preds = %239
  %245 = load %struct.llentry*, %struct.llentry** %18, align 8
  %246 = getelementptr inbounds %struct.llentry, %struct.llentry* %245, i32 0, i32 8
  %247 = load %struct.mbuf*, %struct.mbuf** %246, align 8
  store %struct.mbuf* %247, %struct.mbuf** %20, align 8
  br label %248

248:                                              ; preds = %253, %244
  %249 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %250 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %249, i32 0, i32 0
  %251 = load %struct.mbuf*, %struct.mbuf** %250, align 8
  %252 = icmp ne %struct.mbuf* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %255 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %254, i32 0, i32 0
  %256 = load %struct.mbuf*, %struct.mbuf** %255, align 8
  store %struct.mbuf* %256, %struct.mbuf** %20, align 8
  br label %248

257:                                              ; preds = %248
  %258 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %259 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %260 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %259, i32 0, i32 0
  store %struct.mbuf* %258, %struct.mbuf** %260, align 8
  br label %265

261:                                              ; preds = %239
  %262 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %263 = load %struct.llentry*, %struct.llentry** %18, align 8
  %264 = getelementptr inbounds %struct.llentry, %struct.llentry* %263, i32 0, i32 8
  store %struct.mbuf* %262, %struct.mbuf** %264, align 8
  br label %265

265:                                              ; preds = %261, %257
  %266 = load %struct.llentry*, %struct.llentry** %18, align 8
  %267 = getelementptr inbounds %struct.llentry, %struct.llentry* %266, i32 0, i32 6
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, 1
  store i64 %269, i64* %267, align 8
  br label %270

270:                                              ; preds = %265, %203
  %271 = load %struct.llentry*, %struct.llentry** %18, align 8
  %272 = getelementptr inbounds %struct.llentry, %struct.llentry* %271, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @V_arp_maxtries, align 8
  %275 = icmp slt i64 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %277, i32* %22, align 4
  br label %287

278:                                              ; preds = %270
  %279 = load i32, i32* %11, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i32, i32* @EHOSTUNREACH, align 4
  br label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @EHOSTDOWN, align 4
  br label %285

285:                                              ; preds = %283, %281
  %286 = phi i32 [ %282, %281 ], [ %284, %283 ]
  store i32 %286, i32* %22, align 4
  br label %287

287:                                              ; preds = %285, %276
  %288 = load i32, i32* %23, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %327

290:                                              ; preds = %287
  %291 = load %struct.llentry*, %struct.llentry** %18, align 8
  %292 = call i32 @LLE_ADDREF(%struct.llentry* %291)
  %293 = load i64, i64* @time_uptime, align 8
  %294 = load %struct.llentry*, %struct.llentry** %18, align 8
  %295 = getelementptr inbounds %struct.llentry, %struct.llentry* %294, i32 0, i32 1
  store i64 %293, i64* %295, align 8
  %296 = load %struct.llentry*, %struct.llentry** %18, align 8
  %297 = getelementptr inbounds %struct.llentry, %struct.llentry* %296, i32 0, i32 7
  %298 = load i32, i32* @hz, align 4
  %299 = load i32, i32* @V_arpt_down, align 4
  %300 = mul nsw i32 %298, %299
  %301 = load i32, i32* @arptimer, align 4
  %302 = load %struct.llentry*, %struct.llentry** %18, align 8
  %303 = call i32 @callout_reset(i32* %297, i32 %300, i32 %301, %struct.llentry* %302)
  store i32 %303, i32* %28, align 4
  %304 = load i32, i32* %28, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %290
  %307 = load %struct.llentry*, %struct.llentry** %18, align 8
  %308 = call i32 @LLE_REMREF(%struct.llentry* %307)
  br label %309

309:                                              ; preds = %306, %290
  %310 = load %struct.llentry*, %struct.llentry** %18, align 8
  %311 = getelementptr inbounds %struct.llentry, %struct.llentry* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %312, 1
  store i64 %313, i64* %311, align 8
  %314 = load %struct.llentry*, %struct.llentry** %18, align 8
  %315 = call i32 @LLE_WUNLOCK(%struct.llentry* %314)
  %316 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %317 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %318 = call %struct.TYPE_2__* @SIN(%struct.sockaddr* %317)
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 0
  %320 = call i32 @arprequest_internal(%struct.ifnet* %316, i32* null, i32* %319, i32* null)
  store i32 %320, i32* %29, align 4
  %321 = load i32, i32* %29, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %309
  %324 = load i32, i32* %29, align 4
  store i32 %324, i32* %9, align 4
  br label %331

325:                                              ; preds = %309
  %326 = load i32, i32* %22, align 4
  store i32 %326, i32* %9, align 4
  br label %331

327:                                              ; preds = %287
  %328 = load %struct.llentry*, %struct.llentry** %18, align 8
  %329 = call i32 @LLE_WUNLOCK(%struct.llentry* %328)
  %330 = load i32, i32* %22, align 4
  store i32 %330, i32* %9, align 4
  br label %331

331:                                              ; preds = %327, %325, %323, %189, %120, %70
  %332 = load i32, i32* %9, align 4
  ret i32 %332
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local %struct.llentry* @lla_lookup(i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @LLTABLE(%struct.ifnet*) #1

declare dso_local %struct.llentry* @lltable_alloc_entry(i32, i32, %struct.sockaddr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa_r(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @SIN(%struct.sockaddr*) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @IF_AFDATA_WLOCK(%struct.ifnet*) #1

declare dso_local i32 @LLE_WLOCK(%struct.llentry*) #1

declare dso_local i32 @lltable_link_entry(i32, %struct.llentry*) #1

declare dso_local i32 @IF_AFDATA_WUNLOCK(%struct.ifnet*) #1

declare dso_local i32 @lltable_free_entry(i32, %struct.llentry*) #1

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

declare dso_local i32 @llentry_mark_used(%struct.llentry*) #1

declare dso_local i32 @LLE_ADDREF(%struct.llentry*) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #1

declare dso_local i32 @ARPSTAT_INC(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.llentry*) #1

declare dso_local i32 @LLE_REMREF(%struct.llentry*) #1

declare dso_local i32 @arprequest_internal(%struct.ifnet*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
