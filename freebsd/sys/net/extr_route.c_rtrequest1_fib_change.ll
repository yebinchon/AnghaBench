; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtrequest1_fib_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtrequest1_fib_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rib_head = type { i32, i32, i64 (%struct.TYPE_8__*, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { i32 }
%struct.rt_addrinfo = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__**, i32* }
%struct.TYPE_9__ = type { i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 }
%struct.rtentry = type { i32, i32, i32, i32*, %struct.TYPE_9__* }
%struct.if_mtuinfo = type { i32, i32* }

@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_IFP = common dso_local global i64 0, align 8
@RTAX_IFA = common dso_local global i64 0, align 8
@RTF_RNH_LOCKED = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@RTF_FMASK = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rib_head*, %struct.rt_addrinfo*, %struct.rtentry**, i32)* @rtrequest1_fib_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtrequest1_fib_change(%struct.rib_head* %0, %struct.rt_addrinfo* %1, %struct.rtentry** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rib_head*, align 8
  %7 = alloca %struct.rt_addrinfo*, align 8
  %8 = alloca %struct.rtentry**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.if_mtuinfo, align 8
  store %struct.rib_head* %0, %struct.rib_head** %6, align 8
  store %struct.rt_addrinfo* %1, %struct.rt_addrinfo** %7, align 8
  store %struct.rtentry** %2, %struct.rtentry*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.rtentry* null, %struct.rtentry** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.rib_head*, %struct.rib_head** %6, align 8
  %17 = call i32 @RIB_WLOCK_ASSERT(%struct.rib_head* %16)
  %18 = load %struct.rib_head*, %struct.rib_head** %6, align 8
  %19 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %18, i32 0, i32 2
  %20 = load i64 (%struct.TYPE_8__*, %struct.TYPE_8__*, i32*)*, i64 (%struct.TYPE_8__*, %struct.TYPE_8__*, i32*)** %19, align 8
  %21 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %22 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %24 = load i64, i64* @RTAX_DST, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %28 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = load i64, i64* @RTAX_NETMASK, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load %struct.rib_head*, %struct.rib_head** %6, align 8
  %34 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %33, i32 0, i32 1
  %35 = call i64 %20(%struct.TYPE_8__* %26, %struct.TYPE_8__* %32, i32* %34)
  %36 = inttoptr i64 %35 to %struct.rtentry*
  store %struct.rtentry* %36, %struct.rtentry** %10, align 8
  %37 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %38 = icmp eq %struct.rtentry* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* @ESRCH, align 4
  store i32 %40, i32* %5, align 4
  br label %333

41:                                               ; preds = %4
  %42 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %43 = call i32 @RT_LOCK(%struct.rtentry* %42)
  %44 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %45 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %46 = call i32 @rt_setmetrics(%struct.rt_addrinfo* %44, %struct.rtentry* %45)
  %47 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %48 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RTF_GATEWAY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %55 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %55, align 8
  %57 = load i64, i64* @RTAX_GATEWAY, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %56, i64 %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %91, label %61

61:                                               ; preds = %53, %41
  %62 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %63 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %63, align 8
  %65 = load i64, i64* @RTAX_IFP, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 %65
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %91, label %69

69:                                               ; preds = %61
  %70 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %71 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %71, align 8
  %73 = load i64, i64* @RTAX_IFA, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %72, i64 %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %116

77:                                               ; preds = %69
  %78 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %79 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %79, align 8
  %81 = load i64, i64* @RTAX_IFA, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 %81
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %85 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %84, i32 0, i32 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @sa_equal(%struct.TYPE_8__* %83, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %116, label %91

91:                                               ; preds = %77, %61, %53
  %92 = load i32, i32* @RTF_RNH_LOCKED, align 4
  %93 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %94 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @rt_getifa_fib(%struct.rt_addrinfo* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* @RTF_RNH_LOCKED, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %103 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %107 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = icmp ne %struct.TYPE_9__* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %91
  store i32 1, i32* %12, align 4
  br label %111

111:                                              ; preds = %110, %91
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %319

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %77, %69
  %117 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %118 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %121, label %158

121:                                              ; preds = %116
  %122 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %123 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %126 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %125, i32 0, i32 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = icmp ne %struct.TYPE_9__* %124, %127
  br i1 %128, label %129, label %158

129:                                              ; preds = %121
  %130 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %131 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %130, i32 0, i32 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = icmp ne %struct.TYPE_9__* %132, null
  br i1 %133, label %134, label %158

134:                                              ; preds = %129
  %135 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %136 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %135, i32 0, i32 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)** %138, align 8
  %140 = icmp ne i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %143 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %142, i32 0, i32 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)** %145, align 8
  %147 = load i32, i32* @RTM_DELETE, align 4
  %148 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %149 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %150 = call i32 %146(i32 %147, %struct.rtentry* %148, %struct.rt_addrinfo* %149)
  br label %151

151:                                              ; preds = %141, %134
  %152 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %153 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %152, i32 0, i32 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 @ifa_free(%struct.TYPE_9__* %154)
  %156 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %157 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %156, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %157, align 8
  br label %158

158:                                              ; preds = %151, %129, %121, %116
  %159 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %160 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %160, align 8
  %162 = load i64, i64* @RTAX_GATEWAY, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %161, i64 %162
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = icmp ne %struct.TYPE_8__* %164, null
  br i1 %165, label %166, label %196

166:                                              ; preds = %158
  %167 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %168 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %169 = call i32 @rt_key(%struct.rtentry* %168)
  %170 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %171 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %170, i32 0, i32 2
  %172 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %171, align 8
  %173 = load i64, i64* @RTAX_GATEWAY, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %172, i64 %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = call i32 @rt_setgate(%struct.rtentry* %167, i32 %169, %struct.TYPE_8__* %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %166
  br label %319

180:                                              ; preds = %166
  %181 = load i32, i32* @RTF_GATEWAY, align 4
  %182 = xor i32 %181, -1
  %183 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %184 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load i32, i32* @RTF_GATEWAY, align 4
  %188 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %189 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %187, %190
  %192 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %193 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %180, %158
  %197 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %198 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %197, i32 0, i32 1
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = icmp ne %struct.TYPE_9__* %199, null
  br i1 %200, label %201, label %224

201:                                              ; preds = %196
  %202 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %203 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %202, i32 0, i32 1
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %206 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %205, i32 0, i32 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = icmp ne %struct.TYPE_9__* %204, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %201
  %210 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %211 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %210, i32 0, i32 1
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = call i32 @ifa_ref(%struct.TYPE_9__* %212)
  %214 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %215 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %218 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %217, i32 0, i32 4
  store %struct.TYPE_9__* %216, %struct.TYPE_9__** %218, align 8
  %219 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %220 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %223 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %222, i32 0, i32 3
  store i32* %221, i32** %223, align 8
  br label %224

224:                                              ; preds = %209, %201, %196
  %225 = load i32, i32* @RTF_FMASK, align 4
  %226 = xor i32 %225, -1
  %227 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %228 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %232 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @RTF_FMASK, align 4
  %235 = and i32 %233, %234
  %236 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %237 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  %240 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %241 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %240, i32 0, i32 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = icmp ne %struct.TYPE_9__* %242, null
  br i1 %243, label %244, label %261

244:                                              ; preds = %224
  %245 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %246 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %245, i32 0, i32 4
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)** %248, align 8
  %250 = icmp ne i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)* %249, null
  br i1 %250, label %251, label %261

251:                                              ; preds = %244
  %252 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %253 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %252, i32 0, i32 4
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)** %255, align 8
  %257 = load i32, i32* @RTM_ADD, align 4
  %258 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %259 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %260 = call i32 %256(i32 %257, %struct.rtentry* %258, %struct.rt_addrinfo* %259)
  br label %261

261:                                              ; preds = %251, %244, %224
  %262 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %263 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %262, i32 0, i32 3
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %306

266:                                              ; preds = %261
  %267 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %268 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %267, i32 0, i32 2
  %269 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %268, align 8
  %270 = load i64, i64* @RTAX_DST, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %269, i64 %270
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %13, align 4
  %275 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %276 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @if_getmtu_family(i32* %277, i32 %278)
  store i32 %279, i32* %14, align 4
  %280 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %281 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %266
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %287 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %284, %266
  %289 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %290 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %14, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %305

294:                                              ; preds = %288
  %295 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %296 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds %struct.if_mtuinfo, %struct.if_mtuinfo* %15, i32 0, i32 1
  store i32* %297, i32** %298, align 8
  %299 = load i32, i32* %14, align 4
  %300 = getelementptr inbounds %struct.if_mtuinfo, %struct.if_mtuinfo* %15, i32 0, i32 0
  store i32 %299, i32* %300, align 8
  %301 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %302 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @if_updatemtu_cb(i32 %303, %struct.if_mtuinfo* %15)
  br label %305

305:                                              ; preds = %294, %288
  br label %306

306:                                              ; preds = %305, %261
  %307 = load %struct.rib_head*, %struct.rib_head** %6, align 8
  %308 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 8
  %311 = load %struct.rtentry**, %struct.rtentry*** %8, align 8
  %312 = icmp ne %struct.rtentry** %311, null
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %315 = load %struct.rtentry**, %struct.rtentry*** %8, align 8
  store %struct.rtentry* %314, %struct.rtentry** %315, align 8
  %316 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %317 = call i32 @RT_ADDREF(%struct.rtentry* %316)
  br label %318

318:                                              ; preds = %313, %306
  br label %319

319:                                              ; preds = %318, %179, %114
  %320 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %321 = call i32 @RT_UNLOCK(%struct.rtentry* %320)
  %322 = load i32, i32* %12, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %319
  %325 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %326 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %325, i32 0, i32 1
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = call i32 @ifa_free(%struct.TYPE_9__* %327)
  %329 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %330 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %329, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %330, align 8
  br label %331

331:                                              ; preds = %324, %319
  %332 = load i32, i32* %11, align 4
  store i32 %332, i32* %5, align 4
  br label %333

333:                                              ; preds = %331, %39
  %334 = load i32, i32* %5, align 4
  ret i32 %334
}

declare dso_local i32 @RIB_WLOCK_ASSERT(%struct.rib_head*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @rt_setmetrics(%struct.rt_addrinfo*, %struct.rtentry*) #1

declare dso_local i32 @sa_equal(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rt_getifa_fib(%struct.rt_addrinfo*, i32) #1

declare dso_local i32 @ifa_free(%struct.TYPE_9__*) #1

declare dso_local i32 @rt_setgate(%struct.rtentry*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @ifa_ref(%struct.TYPE_9__*) #1

declare dso_local i32 @if_getmtu_family(i32*, i32) #1

declare dso_local i32 @if_updatemtu_cb(i32, %struct.if_mtuinfo*) #1

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
