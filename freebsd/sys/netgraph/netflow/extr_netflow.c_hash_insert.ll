; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_hash_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.flow_hash_entry = type { i32, i32 }
%struct.flow_rec = type { i32 }
%struct.flow_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32, %struct.TYPE_9__, %struct.sockaddr**, i64, %struct.TYPE_8__* }
%struct.sockaddr = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_dl = type { i32, i64 }
%struct.rt_addrinfo = type { i32, i32, i32, %struct.TYPE_9__, %struct.sockaddr**, i64, %struct.TYPE_8__* }

@MA_OWNED = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPVERSION = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@NG_NETFLOW_CONF_NODSTLOOKUP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@NHR_REF = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTA_NETMASK = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@NG_NETFLOW_CONF_NOSRCLOOKUP = common dso_local global i32 0, align 4
@fle_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.flow_hash_entry*, %struct.flow_rec*, i32, i32, i32)* @hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_insert(%struct.TYPE_11__* %0, %struct.flow_hash_entry* %1, %struct.flow_rec* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.flow_hash_entry*, align 8
  %10 = alloca %struct.flow_rec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.flow_entry*, align 8
  %15 = alloca %struct.sockaddr_in, align 8
  %16 = alloca %struct.sockaddr_in, align 8
  %17 = alloca %struct.sockaddr_dl, align 8
  %18 = alloca %struct.rt_addrinfo, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.flow_hash_entry* %1, %struct.flow_hash_entry** %9, align 8
  store %struct.flow_rec* %2, %struct.flow_rec** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.flow_hash_entry*, %struct.flow_hash_entry** %9, align 8
  %20 = getelementptr inbounds %struct.flow_hash_entry, %struct.flow_hash_entry* %19, i32 0, i32 1
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @mtx_assert(i32* %20, i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = call %struct.flow_entry* @uma_zalloc_arg(i32 %25, %struct.TYPE_11__* %26, i32 %27)
  store %struct.flow_entry* %28, %struct.flow_entry** %14, align 8
  %29 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %30 = icmp eq %struct.flow_entry* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %6
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %7, align 4
  br label %225

37:                                               ; preds = %6
  %38 = load i32, i32* @IPVERSION, align 4
  %39 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %40 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 10
  store i32 %38, i32* %41, align 4
  %42 = load %struct.flow_rec*, %struct.flow_rec** %10, align 8
  %43 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %44 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  %46 = call i32 @bcopy(%struct.flow_rec* %42, %struct.TYPE_12__* %45, i32 4)
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %49 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %52 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %56 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @time_uptime, align 4
  %59 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %60 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 8
  store i32 %58, i32* %61, align 4
  %62 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %63 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 9
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @NG_NETFLOW_CONF_NODSTLOOKUP, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %159

69:                                               ; preds = %37
  %70 = call i32 @bzero(%struct.sockaddr_in* %15, i32 40)
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i32 40, i32* %71, align 8
  %72 = load i64, i64* @AF_INET, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 5
  store i64 %72, i64* %73, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 3
  %75 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %76 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = bitcast %struct.TYPE_9__* %74 to i8*
  %80 = bitcast %struct.TYPE_9__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 4, i1 false)
  %81 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %17, i32 0, i32 0
  store i32 16, i32* %81, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i32 40, i32* %82, align 8
  %83 = bitcast %struct.rt_addrinfo* %18 to %struct.sockaddr_in*
  %84 = call i32 @bzero(%struct.sockaddr_in* %83, i32 40)
  %85 = bitcast %struct.sockaddr_dl* %17 to %struct.sockaddr*
  %86 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 4
  %87 = load %struct.sockaddr**, %struct.sockaddr*** %86, align 8
  %88 = load i64, i64* @RTAX_GATEWAY, align 8
  %89 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %87, i64 %88
  store %struct.sockaddr* %85, %struct.sockaddr** %89, align 8
  %90 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %91 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 4
  %92 = load %struct.sockaddr**, %struct.sockaddr*** %91, align 8
  %93 = load i64, i64* @RTAX_NETMASK, align 8
  %94 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %92, i64 %93
  store %struct.sockaddr* %90, %struct.sockaddr** %94, align 8
  %95 = load %struct.flow_rec*, %struct.flow_rec** %10, align 8
  %96 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = bitcast %struct.sockaddr_in* %15 to %struct.sockaddr*
  %99 = load i32, i32* @NHR_REF, align 4
  %100 = bitcast %struct.rt_addrinfo* %18 to %struct.sockaddr_in*
  %101 = call i64 @rib_lookup_info(i32 %97, %struct.sockaddr* %98, i32 %99, i32 0, %struct.sockaddr_in* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %158

103:                                              ; preds = %69
  %104 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 6
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %109 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 7
  store i32 %107, i32* %110, align 4
  %111 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RTF_GATEWAY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %103
  %117 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %17, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AF_INET, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %123 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 6
  %125 = bitcast %struct.sockaddr_dl* %17 to %struct.sockaddr_in*
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %125, i32 0, i32 3
  %127 = bitcast %struct.TYPE_9__* %124 to i8*
  %128 = bitcast %struct.TYPE_9__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 4, i1 false)
  br label %129

129:                                              ; preds = %121, %116, %103
  %130 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @RTA_NETMASK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @bitcount32(i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %142 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  store i32 %140, i32* %143, align 4
  br label %155

144:                                              ; preds = %129
  %145 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RTF_HOST, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %152 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  store i32 32, i32* %153, align 4
  br label %154

154:                                              ; preds = %150, %144
  br label %155

155:                                              ; preds = %154, %135
  %156 = bitcast %struct.rt_addrinfo* %18 to %struct.sockaddr_in*
  %157 = call i32 @rib_free_info(%struct.sockaddr_in* %156)
  br label %158

158:                                              ; preds = %155, %69
  br label %159

159:                                              ; preds = %158, %37
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @NG_NETFLOW_CONF_NOSRCLOOKUP, align 4
  %162 = and i32 %160, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %219

164:                                              ; preds = %159
  %165 = call i32 @bzero(%struct.sockaddr_in* %15, i32 40)
  %166 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i32 40, i32* %166, align 8
  %167 = load i64, i64* @AF_INET, align 8
  %168 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 5
  store i64 %167, i64* %168, align 8
  %169 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 3
  %170 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %171 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = bitcast %struct.TYPE_9__* %169 to i8*
  %175 = bitcast %struct.TYPE_9__* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %174, i8* align 4 %175, i64 4, i1 false)
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i32 40, i32* %176, align 8
  %177 = bitcast %struct.rt_addrinfo* %18 to %struct.sockaddr_in*
  %178 = call i32 @bzero(%struct.sockaddr_in* %177, i32 40)
  %179 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %180 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 4
  %181 = load %struct.sockaddr**, %struct.sockaddr*** %180, align 8
  %182 = load i64, i64* @RTAX_NETMASK, align 8
  %183 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %181, i64 %182
  store %struct.sockaddr* %179, %struct.sockaddr** %183, align 8
  %184 = load %struct.flow_rec*, %struct.flow_rec** %10, align 8
  %185 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = bitcast %struct.sockaddr_in* %15 to %struct.sockaddr*
  %188 = bitcast %struct.rt_addrinfo* %18 to %struct.sockaddr_in*
  %189 = call i64 @rib_lookup_info(i32 %186, %struct.sockaddr* %187, i32 0, i32 0, %struct.sockaddr_in* %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %218

191:                                              ; preds = %164
  %192 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @RTA_NETMASK, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @bitcount32(i32 %200)
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %204 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 4
  store i32 %202, i32* %205, align 4
  br label %217

206:                                              ; preds = %191
  %207 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %18, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @RTF_HOST, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %214 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 4
  store i32 32, i32* %215, align 4
  br label %216

216:                                              ; preds = %212, %206
  br label %217

217:                                              ; preds = %216, %197
  br label %218

218:                                              ; preds = %217, %164
  br label %219

219:                                              ; preds = %218, %159
  %220 = load %struct.flow_hash_entry*, %struct.flow_hash_entry** %9, align 8
  %221 = getelementptr inbounds %struct.flow_hash_entry, %struct.flow_hash_entry* %220, i32 0, i32 0
  %222 = load %struct.flow_entry*, %struct.flow_entry** %14, align 8
  %223 = load i32, i32* @fle_hash, align 4
  %224 = call i32 @TAILQ_INSERT_TAIL(i32* %221, %struct.flow_entry* %222, i32 %223)
  store i32 0, i32* %7, align 4
  br label %225

225:                                              ; preds = %219, %31
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.flow_entry* @uma_zalloc_arg(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @bcopy(%struct.flow_rec*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @rib_lookup_info(i32, %struct.sockaddr*, i32, i32, %struct.sockaddr_in*) #1

declare dso_local i8* @bitcount32(i32) #1

declare dso_local i32 @rib_free_info(%struct.sockaddr_in*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.flow_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
