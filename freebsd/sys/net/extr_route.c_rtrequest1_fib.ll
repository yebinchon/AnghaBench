; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtrequest1_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtrequest1_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rt_addrinfo = type { i32, %struct.sockaddr**, %struct.ifaddr* }
%struct.ifaddr = type { i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 }
%struct.rtentry = type { i32, i32, %struct.ifaddr*, i32, i32, i64 }
%struct.radix_node = type { i32 }
%struct.rib_head = type { i32, i32, %struct.radix_node* (%struct.sockaddr*, i32*, i32*, i32)* }
%struct.sockaddr_storage = type { i32 }

@rt_numfibs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"rtrequest1_fib: bad fibnum\00", align 1
@flags = common dso_local global i32 0, align 4
@RTF_RNH_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"rtrequest1_fib: locked\00", align 1
@dst = common dso_local global %struct.sockaddr* null, align 8
@RT_DEFAULT_FIB = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@netmask = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@gateway = common dso_local global %struct.TYPE_3__* null, align 8
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i32 0, align 4
@V_rtzone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_PINNED = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtrequest1_fib(i32 %0, %struct.rt_addrinfo* %1, %struct.rtentry** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt_addrinfo*, align 8
  %8 = alloca %struct.rtentry**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtentry*, align 8
  %12 = alloca %struct.rtentry*, align 8
  %13 = alloca %struct.radix_node*, align 8
  %14 = alloca %struct.rib_head*, align 8
  %15 = alloca %struct.ifaddr*, align 8
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca %struct.sockaddr_storage, align 4
  %18 = alloca %struct.sockaddr*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.rt_addrinfo* %1, %struct.rt_addrinfo** %7, align 8
  store %struct.rtentry** %2, %struct.rtentry*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @rt_numfibs, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @flags, align 4
  %25 = load i32, i32* @RTF_RNH_LOCKED, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %34 [
    i32 132, label %33
    i32 133, label %33
  ]

33:                                               ; preds = %4, %4
  br label %36

34:                                               ; preds = %4
  %35 = load i64, i64* @RT_DEFAULT_FIB, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.rib_head* @rt_tables_get_rnh(i64 %37, i32 %40)
  store %struct.rib_head* %41, %struct.rib_head** %14, align 8
  %42 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %43 = icmp eq %struct.rib_head* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %45, i32* %5, align 4
  br label %361

46:                                               ; preds = %36
  %47 = load i32, i32* @flags, align 4
  %48 = load i32, i32* @RTF_HOST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32* null, i32** @netmask, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %357 [
    i32 129, label %54
    i32 128, label %98
    i32 131, label %99
    i32 130, label %347
  ]

54:                                               ; preds = %52
  %55 = load i32*, i32** @netmask, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %59 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %61, 4
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %5, align 4
  br label %361

65:                                               ; preds = %57
  %66 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %67 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr*
  %68 = load i32*, i32** @netmask, align 8
  %69 = call i32 @rt_maskedcopy(%struct.sockaddr* %66, %struct.sockaddr* %67, i32* %68)
  %70 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr*
  store %struct.sockaddr* %70, %struct.sockaddr** @dst, align 8
  br label %71

71:                                               ; preds = %65, %54
  %72 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %73 = call i32 @RIB_WLOCK(%struct.rib_head* %72)
  %74 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %75 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %76 = call %struct.rtentry* @rt_unlinkrte(%struct.rib_head* %74, %struct.rt_addrinfo* %75, i32* %10)
  store %struct.rtentry* %76, %struct.rtentry** %11, align 8
  %77 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %78 = call i32 @RIB_WUNLOCK(%struct.rib_head* %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %361

83:                                               ; preds = %71
  %84 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %85 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %86 = call i32 @rt_notifydelete(%struct.rtentry* %84, %struct.rt_addrinfo* %85)
  %87 = load %struct.rtentry**, %struct.rtentry*** %8, align 8
  %88 = icmp ne %struct.rtentry** %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %91 = load %struct.rtentry**, %struct.rtentry*** %8, align 8
  store %struct.rtentry* %90, %struct.rtentry** %91, align 8
  %92 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %93 = call i32 @RT_UNLOCK(%struct.rtentry* %92)
  br label %97

94:                                               ; preds = %83
  %95 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %96 = call i32 @RTFREE_LOCKED(%struct.rtentry* %95)
  br label %97

97:                                               ; preds = %94, %89
  br label %359

98:                                               ; preds = %52
  br label %359

99:                                               ; preds = %52
  %100 = load i32, i32* @flags, align 4
  %101 = load i32, i32* @RTF_GATEWAY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gateway, align 8
  %106 = icmp ne %struct.TYPE_3__* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %5, align 4
  br label %361

109:                                              ; preds = %104, %99
  %110 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %111 = icmp ne %struct.sockaddr* %110, null
  br i1 %111, label %112, label %137

112:                                              ; preds = %109
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gateway, align 8
  %114 = icmp ne %struct.TYPE_3__* %113, null
  br i1 %114, label %115, label %137

115:                                              ; preds = %112
  %116 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %117 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gateway, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %115
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gateway, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @AF_UNSPEC, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gateway, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AF_LINK, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %5, align 4
  br label %361

137:                                              ; preds = %129, %123, %115, %112, %109
  %138 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %139 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %138, i32 0, i32 2
  %140 = load %struct.ifaddr*, %struct.ifaddr** %139, align 8
  %141 = icmp eq %struct.ifaddr* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @rt_getifa_fib(%struct.rt_addrinfo* %143, i64 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %5, align 4
  br label %361

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %137
  %152 = load i32, i32* @V_rtzone, align 4
  %153 = load i32, i32* @M_NOWAIT, align 4
  %154 = call %struct.rtentry* @uma_zalloc(i32 %152, i32 %153)
  store %struct.rtentry* %154, %struct.rtentry** %11, align 8
  %155 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %156 = icmp eq %struct.rtentry* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @ENOBUFS, align 4
  store i32 %158, i32* %5, align 4
  br label %361

159:                                              ; preds = %151
  %160 = load i32, i32* @RTF_UP, align 4
  %161 = load i32, i32* @flags, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %164 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %167 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %166, i32 0, i32 5
  store i64 %165, i64* %167, align 8
  %168 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %169 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gateway, align 8
  %171 = call i32 @rt_setgate(%struct.rtentry* %168, %struct.sockaddr* %169, %struct.TYPE_3__* %170)
  store i32 %171, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %159
  %174 = load i32, i32* @V_rtzone, align 4
  %175 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %176 = call i32 @uma_zfree(i32 %174, %struct.rtentry* %175)
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %5, align 4
  br label %361

178:                                              ; preds = %159
  %179 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %180 = call i64 @rt_key(%struct.rtentry* %179)
  %181 = inttoptr i64 %180 to %struct.sockaddr*
  store %struct.sockaddr* %181, %struct.sockaddr** %16, align 8
  %182 = load i32*, i32** @netmask, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %186 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %187 = load i32*, i32** @netmask, align 8
  %188 = call i32 @rt_maskedcopy(%struct.sockaddr* %185, %struct.sockaddr* %186, i32* %187)
  br label %196

189:                                              ; preds = %178
  %190 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %191 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %192 = load %struct.sockaddr*, %struct.sockaddr** @dst, align 8
  %193 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @bcopy(%struct.sockaddr* %190, %struct.sockaddr* %191, i32 %194)
  br label %196

196:                                              ; preds = %189, %184
  %197 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %198 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %197, i32 0, i32 2
  %199 = load %struct.ifaddr*, %struct.ifaddr** %198, align 8
  store %struct.ifaddr* %199, %struct.ifaddr** %15, align 8
  %200 = load %struct.ifaddr*, %struct.ifaddr** %15, align 8
  %201 = call i32 @ifa_ref(%struct.ifaddr* %200)
  %202 = load %struct.ifaddr*, %struct.ifaddr** %15, align 8
  %203 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %204 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %203, i32 0, i32 2
  store %struct.ifaddr* %202, %struct.ifaddr** %204, align 8
  %205 = load %struct.ifaddr*, %struct.ifaddr** %15, align 8
  %206 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %209 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 4
  %210 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %211 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %210, i32 0, i32 1
  store i32 1, i32* %211, align 4
  %212 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %213 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %214 = call i32 @rt_setmetrics(%struct.rt_addrinfo* %212, %struct.rtentry* %213)
  %215 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %216 = call i32 @RIB_WLOCK(%struct.rib_head* %215)
  %217 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %218 = call i32 @RT_LOCK(%struct.rtentry* %217)
  %219 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %220 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %219, i32 0, i32 2
  %221 = load %struct.radix_node* (%struct.sockaddr*, i32*, i32*, i32)*, %struct.radix_node* (%struct.sockaddr*, i32*, i32*, i32)** %220, align 8
  %222 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %223 = load i32*, i32** @netmask, align 8
  %224 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %225 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %224, i32 0, i32 1
  %226 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %227 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call %struct.radix_node* %221(%struct.sockaddr* %222, i32* %223, i32* %225, i32 %228)
  store %struct.radix_node* %229, %struct.radix_node** %13, align 8
  store %struct.rtentry* null, %struct.rtentry** %12, align 8
  %230 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %231 = icmp eq %struct.radix_node* %230, null
  br i1 %231, label %232, label %287

232:                                              ; preds = %196
  %233 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %234 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @RTF_PINNED, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %287

239:                                              ; preds = %232
  %240 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %241 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %240, i32 0, i32 1
  %242 = load %struct.sockaddr**, %struct.sockaddr*** %241, align 8
  %243 = load i64, i64* @RTAX_DST, align 8
  %244 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %242, i64 %243
  %245 = load %struct.sockaddr*, %struct.sockaddr** %244, align 8
  store %struct.sockaddr* %245, %struct.sockaddr** %18, align 8
  %246 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %247 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %248 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %247, i32 0, i32 1
  %249 = load %struct.sockaddr**, %struct.sockaddr*** %248, align 8
  %250 = load i64, i64* @RTAX_DST, align 8
  %251 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %249, i64 %250
  store %struct.sockaddr* %246, %struct.sockaddr** %251, align 8
  %252 = load i32, i32* @RTF_PINNED, align 4
  %253 = xor i32 %252, -1
  %254 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %255 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %256, %253
  store i32 %257, i32* %255, align 8
  %258 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %259 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %260 = call %struct.rtentry* @rt_unlinkrte(%struct.rib_head* %258, %struct.rt_addrinfo* %259, i32* %10)
  store %struct.rtentry* %260, %struct.rtentry** %12, align 8
  %261 = load i32, i32* @RTF_PINNED, align 4
  %262 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %263 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %267 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %268 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %267, i32 0, i32 1
  %269 = load %struct.sockaddr**, %struct.sockaddr*** %268, align 8
  %270 = load i64, i64* @RTAX_DST, align 8
  %271 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %269, i64 %270
  store %struct.sockaddr* %266, %struct.sockaddr** %271, align 8
  %272 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %273 = icmp ne %struct.rtentry* %272, null
  br i1 %273, label %274, label %286

274:                                              ; preds = %239
  %275 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %276 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %275, i32 0, i32 2
  %277 = load %struct.radix_node* (%struct.sockaddr*, i32*, i32*, i32)*, %struct.radix_node* (%struct.sockaddr*, i32*, i32*, i32)** %276, align 8
  %278 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %279 = load i32*, i32** @netmask, align 8
  %280 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %281 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %280, i32 0, i32 1
  %282 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %283 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = call %struct.radix_node* %277(%struct.sockaddr* %278, i32* %279, i32* %281, i32 %284)
  store %struct.radix_node* %285, %struct.radix_node** %13, align 8
  br label %286

286:                                              ; preds = %274, %239
  br label %287

287:                                              ; preds = %286, %232, %196
  %288 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %289 = call i32 @RIB_WUNLOCK(%struct.rib_head* %288)
  %290 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %291 = icmp ne %struct.rtentry* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %287
  %293 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %294 = call i32 @RT_UNLOCK(%struct.rtentry* %293)
  br label %295

295:                                              ; preds = %292, %287
  %296 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %297 = icmp eq %struct.radix_node* %296, null
  br i1 %297, label %298, label %310

298:                                              ; preds = %295
  %299 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %300 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %299, i32 0, i32 2
  %301 = load %struct.ifaddr*, %struct.ifaddr** %300, align 8
  %302 = call i32 @ifa_free(%struct.ifaddr* %301)
  %303 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %304 = call i64 @rt_key(%struct.rtentry* %303)
  %305 = call i32 @R_Free(i64 %304)
  %306 = load i32, i32* @V_rtzone, align 4
  %307 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %308 = call i32 @uma_zfree(i32 %306, %struct.rtentry* %307)
  %309 = load i32, i32* @EEXIST, align 4
  store i32 %309, i32* %5, align 4
  br label %361

310:                                              ; preds = %295
  %311 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %312 = icmp ne %struct.rtentry* %311, null
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %315 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %316 = call i32 @rt_notifydelete(%struct.rtentry* %314, %struct.rt_addrinfo* %315)
  %317 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %318 = call i32 @RTFREE(%struct.rtentry* %317)
  br label %319

319:                                              ; preds = %313, %310
  %320 = load %struct.ifaddr*, %struct.ifaddr** %15, align 8
  %321 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %320, i32 0, i32 0
  %322 = load i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)** %321, align 8
  %323 = icmp ne i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)* %322, null
  br i1 %323, label %324, label %332

324:                                              ; preds = %319
  %325 = load %struct.ifaddr*, %struct.ifaddr** %15, align 8
  %326 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %325, i32 0, i32 0
  %327 = load i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)*, i32 (i32, %struct.rtentry*, %struct.rt_addrinfo*)** %326, align 8
  %328 = load i32, i32* %6, align 4
  %329 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %330 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %331 = call i32 %327(i32 %328, %struct.rtentry* %329, %struct.rt_addrinfo* %330)
  br label %332

332:                                              ; preds = %324, %319
  %333 = load %struct.rtentry**, %struct.rtentry*** %8, align 8
  %334 = icmp ne %struct.rtentry** %333, null
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %337 = load %struct.rtentry**, %struct.rtentry*** %8, align 8
  store %struct.rtentry* %336, %struct.rtentry** %337, align 8
  %338 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %339 = call i32 @RT_ADDREF(%struct.rtentry* %338)
  br label %340

340:                                              ; preds = %335, %332
  %341 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %342 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %342, align 8
  %345 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %346 = call i32 @RT_UNLOCK(%struct.rtentry* %345)
  br label %359

347:                                              ; preds = %52
  %348 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %349 = call i32 @RIB_WLOCK(%struct.rib_head* %348)
  %350 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %351 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %7, align 8
  %352 = load %struct.rtentry**, %struct.rtentry*** %8, align 8
  %353 = load i64, i64* %9, align 8
  %354 = call i32 @rtrequest1_fib_change(%struct.rib_head* %350, %struct.rt_addrinfo* %351, %struct.rtentry** %352, i64 %353)
  store i32 %354, i32* %10, align 4
  %355 = load %struct.rib_head*, %struct.rib_head** %14, align 8
  %356 = call i32 @RIB_WUNLOCK(%struct.rib_head* %355)
  br label %359

357:                                              ; preds = %52
  %358 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %358, i32* %10, align 4
  br label %359

359:                                              ; preds = %357, %347, %340, %98, %97
  %360 = load i32, i32* %10, align 4
  store i32 %360, i32* %5, align 4
  br label %361

361:                                              ; preds = %359, %298, %173, %157, %148, %135, %107, %81, %63, %44
  %362 = load i32, i32* %5, align 4
  ret i32 %362
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.rib_head* @rt_tables_get_rnh(i64, i32) #1

declare dso_local i32 @rt_maskedcopy(%struct.sockaddr*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @RIB_WLOCK(%struct.rib_head*) #1

declare dso_local %struct.rtentry* @rt_unlinkrte(%struct.rib_head*, %struct.rt_addrinfo*, i32*) #1

declare dso_local i32 @RIB_WUNLOCK(%struct.rib_head*) #1

declare dso_local i32 @rt_notifydelete(%struct.rtentry*, %struct.rt_addrinfo*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @RTFREE_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @rt_getifa_fib(%struct.rt_addrinfo*, i64) #1

declare dso_local %struct.rtentry* @uma_zalloc(i32, i32) #1

declare dso_local i32 @rt_setgate(%struct.rtentry*, %struct.sockaddr*, %struct.TYPE_3__*) #1

declare dso_local i32 @uma_zfree(i32, %struct.rtentry*) #1

declare dso_local i64 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ifa_ref(%struct.ifaddr*) #1

declare dso_local i32 @rt_setmetrics(%struct.rt_addrinfo*, %struct.rtentry*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @ifa_free(%struct.ifaddr*) #1

declare dso_local i32 @R_Free(i64) #1

declare dso_local i32 @RTFREE(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #1

declare dso_local i32 @rtrequest1_fib_change(%struct.rib_head*, %struct.rt_addrinfo*, %struct.rtentry**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
