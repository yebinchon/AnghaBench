; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtredirect_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtredirect_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16, i16, i32 }
%struct.sockaddr = type { i32 }
%struct.rtentry = type { i32, %struct.ifaddr*, i32 }
%struct.ifaddr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.rt_addrinfo = type { i32, %struct.sockaddr**, %struct.ifaddr* }
%struct.rib_head = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@RTF_DONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTF_DYNAMIC = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTM_ADD = common dso_local global i32 0, align 4
@V_rtstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@RTF_MODIFIED = common dso_local global i32 0, align 4
@RTAX_AUTHOR = common dso_local global i64 0, align 8
@RTM_REDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtredirect_fib(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtentry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca %struct.rt_addrinfo, align 8
  %17 = alloca %struct.ifaddr*, align 8
  %18 = alloca %struct.rib_head*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i16* null, i16** %15, align 8
  %19 = call i32 (...) @NET_EPOCH_ASSERT()
  store %struct.ifaddr* null, %struct.ifaddr** %17, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.rib_head* @rt_tables_get_rnh(i32 %20, i32 %23)
  store %struct.rib_head* %24, %struct.rib_head** %18, align 8
  %25 = load %struct.rib_head*, %struct.rib_head** %18, align 8
  %26 = icmp eq %struct.rib_head* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %28, i32* %14, align 4
  br label %208

29:                                               ; preds = %6
  %30 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call %struct.ifaddr* @ifa_ifwithnet(%struct.sockaddr* %30, i32 0, i32 %31)
  store %struct.ifaddr* %32, %struct.ifaddr** %17, align 8
  %33 = icmp eq %struct.ifaddr* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENETUNREACH, align 4
  store i32 %35, i32* %14, align 4
  br label %208

36:                                               ; preds = %29
  %37 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call %struct.rtentry* @rtalloc1_fib(%struct.sockaddr* %37, i32 0, i64 0, i32 %38)
  store %struct.rtentry* %39, %struct.rtentry** %13, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @RTF_DONE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %36
  %45 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %46 = icmp ne %struct.rtentry* %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %49 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %50 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sa_equal(%struct.sockaddr* %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %14, align 4
  br label %201

56:                                               ; preds = %47
  %57 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %58 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %57, i32 0, i32 1
  %59 = load %struct.ifaddr*, %struct.ifaddr** %58, align 8
  %60 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %61 = icmp ne %struct.ifaddr* %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %64 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AF_LINK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %14, align 4
  br label %201

72:                                               ; preds = %62, %56
  br label %73

73:                                               ; preds = %72, %44, %36
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @RTF_GATEWAY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %80 = call i64 @ifa_ifwithaddr_check(%struct.sockaddr* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %83, i32* %14, align 4
  br label %201

84:                                               ; preds = %78, %73
  %85 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %86 = icmp eq %struct.rtentry* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %89 = call %struct.TYPE_5__* @rt_mask(%struct.rtentry* %88)
  %90 = icmp ne %struct.TYPE_5__* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %93 = call %struct.TYPE_5__* @rt_mask(%struct.rtentry* %92)
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %84
  br label %118

98:                                               ; preds = %91, %87
  %99 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %100 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RTF_GATEWAY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %198

105:                                              ; preds = %98
  %106 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %107 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RTF_HOST, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %163

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @RTF_HOST, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %163

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %97
  %119 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %120 = icmp ne %struct.rtentry* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %123 = call i32 @RTFREE_LOCKED(%struct.rtentry* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32, i32* @RTF_DYNAMIC, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = ptrtoint %struct.rt_addrinfo* %16 to i32
  %129 = call i32 @bzero(i32 %128, i32 24)
  %130 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %131 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %132 = load %struct.sockaddr**, %struct.sockaddr*** %131, align 8
  %133 = load i64, i64* @RTAX_DST, align 8
  %134 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %132, i64 %133
  store %struct.sockaddr* %130, %struct.sockaddr** %134, align 8
  %135 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %136 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %137 = load %struct.sockaddr**, %struct.sockaddr*** %136, align 8
  %138 = load i64, i64* @RTAX_GATEWAY, align 8
  %139 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %137, i64 %138
  store %struct.sockaddr* %135, %struct.sockaddr** %139, align 8
  %140 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %141 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %142 = load %struct.sockaddr**, %struct.sockaddr*** %141, align 8
  %143 = load i64, i64* @RTAX_NETMASK, align 8
  %144 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %142, i64 %143
  store %struct.sockaddr* %140, %struct.sockaddr** %144, align 8
  %145 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %146 = call i32 @ifa_ref(%struct.ifaddr* %145)
  %147 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %148 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 2
  store %struct.ifaddr* %147, %struct.ifaddr** %148, align 8
  %149 = load i32, i32* %10, align 4
  %150 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 0
  store i32 %149, i32* %150, align 8
  %151 = load i32, i32* @RTM_ADD, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @rtrequest1_fib(i32 %151, %struct.rt_addrinfo* %16, %struct.rtentry** %13, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %155 = icmp ne %struct.rtentry* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %124
  %157 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %158 = call i32 @RT_LOCK(%struct.rtentry* %157)
  %159 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %160 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %156, %124
  store i16* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_rtstat, i32 0, i32 0), i16** %15, align 8
  br label %197

163:                                              ; preds = %112, %105
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @RTF_GATEWAY, align 4
  %166 = and i32 %164, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i32, i32* @RTF_GATEWAY, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %172 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %168, %163
  %176 = load i32, i32* @RTF_MODIFIED, align 4
  %177 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %178 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* @RTF_MODIFIED, align 4
  %182 = load i32, i32* %10, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %10, align 4
  store i16* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_rtstat, i32 0, i32 1), i16** %15, align 8
  %184 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %185 = call i32 @RT_UNLOCK(%struct.rtentry* %184)
  %186 = load %struct.rib_head*, %struct.rib_head** %18, align 8
  %187 = call i32 @RIB_WLOCK(%struct.rib_head* %186)
  %188 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %189 = call i32 @RT_LOCK(%struct.rtentry* %188)
  %190 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %191 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %192 = call i32 @rt_key(%struct.rtentry* %191)
  %193 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %194 = call i32 @rt_setgate(%struct.rtentry* %190, i32 %192, %struct.sockaddr* %193)
  %195 = load %struct.rib_head*, %struct.rib_head** %18, align 8
  %196 = call i32 @RIB_WUNLOCK(%struct.rib_head* %195)
  br label %197

197:                                              ; preds = %175, %162
  br label %200

198:                                              ; preds = %98
  %199 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %199, i32* %14, align 4
  br label %200

200:                                              ; preds = %198, %197
  br label %201

201:                                              ; preds = %200, %82, %70, %54
  %202 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %203 = icmp ne %struct.rtentry* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %206 = call i32 @RTFREE_LOCKED(%struct.rtentry* %205)
  br label %207

207:                                              ; preds = %204, %201
  br label %208

208:                                              ; preds = %207, %34, %27
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_rtstat, i32 0, i32 2), align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_rtstat, i32 0, i32 2), align 4
  br label %222

214:                                              ; preds = %208
  %215 = load i16*, i16** %15, align 8
  %216 = icmp ne i16* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i16*, i16** %15, align 8
  %219 = load i16, i16* %218, align 2
  %220 = add i16 %219, 1
  store i16 %220, i16* %218, align 2
  br label %221

221:                                              ; preds = %217, %214
  br label %222

222:                                              ; preds = %221, %211
  %223 = ptrtoint %struct.rt_addrinfo* %16 to i32
  %224 = call i32 @bzero(i32 %223, i32 24)
  %225 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %226 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %227 = load %struct.sockaddr**, %struct.sockaddr*** %226, align 8
  %228 = load i64, i64* @RTAX_DST, align 8
  %229 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %227, i64 %228
  store %struct.sockaddr* %225, %struct.sockaddr** %229, align 8
  %230 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %231 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %232 = load %struct.sockaddr**, %struct.sockaddr*** %231, align 8
  %233 = load i64, i64* @RTAX_GATEWAY, align 8
  %234 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %232, i64 %233
  store %struct.sockaddr* %230, %struct.sockaddr** %234, align 8
  %235 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %236 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %237 = load %struct.sockaddr**, %struct.sockaddr*** %236, align 8
  %238 = load i64, i64* @RTAX_NETMASK, align 8
  %239 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %237, i64 %238
  store %struct.sockaddr* %235, %struct.sockaddr** %239, align 8
  %240 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %241 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %242 = load %struct.sockaddr**, %struct.sockaddr*** %241, align 8
  %243 = load i64, i64* @RTAX_AUTHOR, align 8
  %244 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %242, i64 %243
  store %struct.sockaddr* %240, %struct.sockaddr** %244, align 8
  %245 = load i32, i32* @RTM_REDIRECT, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @rt_missmsg_fib(i32 %245, %struct.rt_addrinfo* %16, i32 %246, i32 %247, i32 %248)
  ret void
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local %struct.rib_head* @rt_tables_get_rnh(i32, i32) #1

declare dso_local %struct.ifaddr* @ifa_ifwithnet(%struct.sockaddr*, i32, i32) #1

declare dso_local %struct.rtentry* @rtalloc1_fib(%struct.sockaddr*, i32, i64, i32) #1

declare dso_local i32 @sa_equal(%struct.sockaddr*, i32) #1

declare dso_local i64 @ifa_ifwithaddr_check(%struct.sockaddr*) #1

declare dso_local %struct.TYPE_5__* @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @RTFREE_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @ifa_ref(%struct.ifaddr*) #1

declare dso_local i32 @rtrequest1_fib(i32, %struct.rt_addrinfo*, %struct.rtentry**, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @RIB_WLOCK(%struct.rib_head*) #1

declare dso_local i32 @rt_setgate(%struct.rtentry*, i32, %struct.sockaddr*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @RIB_WUNLOCK(%struct.rib_head*) #1

declare dso_local i32 @rt_missmsg_fib(i32, %struct.rt_addrinfo*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
