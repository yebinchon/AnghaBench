; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_selectroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_selectroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i64, %struct.in6_addr, i64 }
%struct.in6_addr = type { i64* }
%struct.ip6_pktopts = type { %struct.in6_pktinfo*, %struct.sockaddr_in6*, %struct.route_in6 }
%struct.in6_pktinfo = type { i64 }
%struct.route_in6 = type { %struct.rtentry*, %struct.sockaddr_in6 }
%struct.rtentry = type { i32, %struct.TYPE_2__*, %struct.ifnet* }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32, i64 }
%struct.ip6_moptions = type { %struct.ifnet* }
%struct.sockaddr = type { i64 }
%struct.sockaddr_dl = type { i64 }

@RTF_UP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ip6s_noroute = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in6*, %struct.ip6_pktopts*, %struct.ip6_moptions*, %struct.route_in6*, %struct.ifnet**, %struct.rtentry**, i32, i32)* @selectroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selectroute(%struct.sockaddr_in6* %0, %struct.ip6_pktopts* %1, %struct.ip6_moptions* %2, %struct.route_in6* %3, %struct.ifnet** %4, %struct.rtentry** %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.ip6_pktopts*, align 8
  %11 = alloca %struct.ip6_moptions*, align 8
  %12 = alloca %struct.route_in6*, align 8
  %13 = alloca %struct.ifnet**, align 8
  %14 = alloca %struct.rtentry**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ifnet*, align 8
  %19 = alloca %struct.rtentry*, align 8
  %20 = alloca %struct.sockaddr_in6*, align 8
  %21 = alloca %struct.in6_pktinfo*, align 8
  %22 = alloca %struct.in6_addr*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.route_in6*, align 8
  %25 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %9, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %10, align 8
  store %struct.ip6_moptions* %2, %struct.ip6_moptions** %11, align 8
  store %struct.route_in6* %3, %struct.route_in6** %12, align 8
  store %struct.ifnet** %4, %struct.ifnet*** %13, align 8
  store %struct.rtentry** %5, %struct.rtentry*** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store %struct.ifnet* null, %struct.ifnet** %18, align 8
  store %struct.rtentry* null, %struct.rtentry** %19, align 8
  store %struct.in6_pktinfo* null, %struct.in6_pktinfo** %21, align 8
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 1
  store %struct.in6_addr* %27, %struct.in6_addr** %22, align 8
  %28 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %29 = icmp ne %struct.ip6_pktopts* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %8
  %31 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %32 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %31, i32 0, i32 0
  %33 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %32, align 8
  store %struct.in6_pktinfo* %33, %struct.in6_pktinfo** %21, align 8
  %34 = icmp ne %struct.in6_pktinfo* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %21, align 8
  %37 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %21, align 8
  %42 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.ifnet* @ifnet_byindex(i64 %43)
  store %struct.ifnet* %44, %struct.ifnet** %18, align 8
  %45 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %46 = icmp ne %struct.ifnet* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.rtentry**, %struct.rtentry*** %14, align 8
  %52 = icmp eq %struct.rtentry** %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load %struct.in6_addr*, %struct.in6_addr** %22, align 8
  %55 = call i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %50, %47
  br label %345

58:                                               ; preds = %53, %40
  br label %91

59:                                               ; preds = %35, %30, %8
  %60 = load %struct.in6_addr*, %struct.in6_addr** %22, align 8
  %61 = call i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.ip6_moptions*, %struct.ip6_moptions** %11, align 8
  %65 = icmp ne %struct.ip6_moptions* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.ip6_moptions*, %struct.ip6_moptions** %11, align 8
  %68 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %67, i32 0, i32 0
  %69 = load %struct.ifnet*, %struct.ifnet** %68, align 8
  store %struct.ifnet* %69, %struct.ifnet** %18, align 8
  %70 = icmp ne %struct.ifnet* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %345

72:                                               ; preds = %66, %63, %59
  %73 = load %struct.in6_addr*, %struct.in6_addr** %22, align 8
  %74 = call i64 @IN6_IS_ADDR_MC_LINKLOCAL(%struct.in6_addr* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load %struct.in6_addr*, %struct.in6_addr** %22, align 8
  %78 = call i64 @IN6_IS_ADDR_MC_NODELOCAL(%struct.in6_addr* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76, %72
  %81 = load %struct.in6_addr*, %struct.in6_addr** %22, align 8
  %82 = call i32 @in6_getscope(%struct.in6_addr* %81)
  %83 = call i64 @ntohs(i32 %82)
  store i64 %83, i64* %23, align 8
  %84 = load i64, i64* %23, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, i64* %23, align 8
  %88 = call %struct.ifnet* @in6_getlinkifnet(i64 %87)
  store %struct.ifnet* %88, %struct.ifnet** %18, align 8
  br label %345

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %76
  br label %91

91:                                               ; preds = %90, %58
  %92 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %93 = icmp ne %struct.ip6_pktopts* %92, null
  br i1 %93, label %94, label %191

94:                                               ; preds = %91
  %95 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %96 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %95, i32 0, i32 1
  %97 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %96, align 8
  %98 = icmp ne %struct.sockaddr_in6* %97, null
  br i1 %98, label %99, label %191

99:                                               ; preds = %94
  %100 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %101 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %100, i32 0, i32 1
  %102 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %101, align 8
  %103 = call %struct.sockaddr_in6* @satosin6(%struct.sockaddr_in6* %102)
  store %struct.sockaddr_in6* %103, %struct.sockaddr_in6** %20, align 8
  %104 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %105 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %104, i32 0, i32 1
  %106 = call i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %110 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %109, i32 0, i32 1
  %111 = call i32 @in6_getscope(%struct.in6_addr* %110)
  %112 = call i64 @ntohs(i32 %111)
  store i64 %112, i64* %23, align 8
  %113 = load i64, i64* %23, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i64, i64* %23, align 8
  %117 = call %struct.ifnet* @in6_getlinkifnet(i64 %116)
  store %struct.ifnet* %117, %struct.ifnet** %18, align 8
  br label %345

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %99
  %120 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %121 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %120, i32 0, i32 2
  store %struct.route_in6* %121, %struct.route_in6** %24, align 8
  %122 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %123 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %122, i32 0, i32 0
  %124 = load %struct.rtentry*, %struct.rtentry** %123, align 8
  %125 = icmp ne %struct.rtentry* %124, null
  br i1 %125, label %126, label %153

126:                                              ; preds = %119
  %127 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %128 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %127, i32 0, i32 0
  %129 = load %struct.rtentry*, %struct.rtentry** %128, align 8
  %130 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @RTF_UP, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %126
  %136 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %137 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AF_INET6, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %135
  %143 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %144 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %144, i32 0, i32 1
  %146 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %147 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %146, i32 0, i32 1
  %148 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %145, %struct.in6_addr* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %142, %135, %126
  %151 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %152 = call i32 @RO_RTFREE(%struct.route_in6* %151)
  br label %153

153:                                              ; preds = %150, %142, %119
  %154 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %155 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %154, i32 0, i32 0
  %156 = load %struct.rtentry*, %struct.rtentry** %155, align 8
  %157 = icmp eq %struct.rtentry* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %160 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %159, i32 0, i32 1
  %161 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %20, align 8
  %162 = bitcast %struct.sockaddr_in6* %160 to i8*
  %163 = bitcast %struct.sockaddr_in6* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 24, i1 false)
  %164 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @in6_rtalloc(%struct.route_in6* %164, i32 %165)
  br label %167

167:                                              ; preds = %158, %153
  %168 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %169 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %168, i32 0, i32 0
  %170 = load %struct.rtentry*, %struct.rtentry** %169, align 8
  %171 = icmp eq %struct.rtentry* %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %167
  %173 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %174 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %173, i32 0, i32 0
  %175 = load %struct.rtentry*, %struct.rtentry** %174, align 8
  %176 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @RTF_GATEWAY, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %172, %167
  %182 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %182, i32* %17, align 4
  br label %190

183:                                              ; preds = %172
  %184 = load %struct.route_in6*, %struct.route_in6** %24, align 8
  %185 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %184, i32 0, i32 0
  %186 = load %struct.rtentry*, %struct.rtentry** %185, align 8
  store %struct.rtentry* %186, %struct.rtentry** %19, align 8
  %187 = load %struct.rtentry*, %struct.rtentry** %19, align 8
  %188 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %187, i32 0, i32 2
  %189 = load %struct.ifnet*, %struct.ifnet** %188, align 8
  store %struct.ifnet* %189, %struct.ifnet** %18, align 8
  br label %190

190:                                              ; preds = %183, %181
  br label %345

191:                                              ; preds = %94, %91
  %192 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %193 = icmp ne %struct.route_in6* %192, null
  br i1 %193, label %194, label %344

194:                                              ; preds = %191
  %195 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %196 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %195, i32 0, i32 0
  %197 = load %struct.rtentry*, %struct.rtentry** %196, align 8
  %198 = icmp ne %struct.rtentry* %197, null
  br i1 %198, label %199, label %231

199:                                              ; preds = %194
  %200 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %201 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %200, i32 0, i32 0
  %202 = load %struct.rtentry*, %struct.rtentry** %201, align 8
  %203 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @RTF_UP, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %224

208:                                              ; preds = %199
  %209 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %210 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %209, i32 0, i32 1
  %211 = bitcast %struct.sockaddr_in6* %210 to %struct.sockaddr*
  %212 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @AF_INET6, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %224, label %216

216:                                              ; preds = %208
  %217 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %218 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %217, i32 0, i32 1
  %219 = call %struct.sockaddr_in6* @satosin6(%struct.sockaddr_in6* %218)
  %220 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %219, i32 0, i32 1
  %221 = load %struct.in6_addr*, %struct.in6_addr** %22, align 8
  %222 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %220, %struct.in6_addr* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %216, %208, %199
  %225 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %226 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %225, i32 0, i32 0
  %227 = load %struct.rtentry*, %struct.rtentry** %226, align 8
  %228 = call i32 @RTFREE(%struct.rtentry* %227)
  %229 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %230 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %229, i32 0, i32 0
  store %struct.rtentry* null, %struct.rtentry** %230, align 8
  br label %231

231:                                              ; preds = %224, %216, %194
  %232 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %233 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %232, i32 0, i32 0
  %234 = load %struct.rtentry*, %struct.rtentry** %233, align 8
  %235 = icmp eq %struct.rtentry* %234, null
  br i1 %235, label %236, label %265

236:                                              ; preds = %231
  %237 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %238 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %237, i32 0, i32 1
  %239 = call i32 @bzero(%struct.sockaddr_in6* %238, i32 24)
  %240 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %241 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %240, i32 0, i32 1
  store %struct.sockaddr_in6* %241, %struct.sockaddr_in6** %25, align 8
  %242 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %243 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %244 = bitcast %struct.sockaddr_in6* %242 to i8*
  %245 = bitcast %struct.sockaddr_in6* %243 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %244, i8* align 8 %245, i64 24, i1 false)
  %246 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %247 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %246, i32 0, i32 2
  store i64 0, i64* %247, align 8
  %248 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %249 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %248, i32 0, i32 1
  %250 = bitcast %struct.sockaddr_in6* %249 to %struct.sockaddr*
  %251 = load i32, i32* %16, align 4
  %252 = call %struct.rtentry* @in6_rtalloc1(%struct.sockaddr* %250, i32 0, i64 0, i32 %251)
  %253 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %254 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %253, i32 0, i32 0
  store %struct.rtentry* %252, %struct.rtentry** %254, align 8
  %255 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %256 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %255, i32 0, i32 0
  %257 = load %struct.rtentry*, %struct.rtentry** %256, align 8
  %258 = icmp ne %struct.rtentry* %257, null
  br i1 %258, label %259, label %264

259:                                              ; preds = %236
  %260 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %261 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %260, i32 0, i32 0
  %262 = load %struct.rtentry*, %struct.rtentry** %261, align 8
  %263 = call i32 @RT_UNLOCK(%struct.rtentry* %262)
  br label %264

264:                                              ; preds = %259, %236
  br label %265

265:                                              ; preds = %264, %231
  %266 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %267 = icmp ne %struct.ip6_pktopts* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %270 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %269, i32 0, i32 1
  %271 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %270, align 8
  %272 = icmp ne %struct.sockaddr_in6* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %345

274:                                              ; preds = %268, %265
  %275 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %276 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %275, i32 0, i32 0
  %277 = load %struct.rtentry*, %struct.rtentry** %276, align 8
  %278 = icmp ne %struct.rtentry* %277, null
  br i1 %278, label %279, label %295

279:                                              ; preds = %274
  %280 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %281 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %280, i32 0, i32 0
  %282 = load %struct.rtentry*, %struct.rtentry** %281, align 8
  %283 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %282, i32 0, i32 2
  %284 = load %struct.ifnet*, %struct.ifnet** %283, align 8
  store %struct.ifnet* %284, %struct.ifnet** %18, align 8
  %285 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %286 = icmp eq %struct.ifnet* %285, null
  br i1 %286, label %287, label %294

287:                                              ; preds = %279
  %288 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %289 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %288, i32 0, i32 0
  %290 = load %struct.rtentry*, %struct.rtentry** %289, align 8
  %291 = call i32 @RTFREE(%struct.rtentry* %290)
  %292 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %293 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %292, i32 0, i32 0
  store %struct.rtentry* null, %struct.rtentry** %293, align 8
  br label %294

294:                                              ; preds = %287, %279
  br label %295

295:                                              ; preds = %294, %274
  %296 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %297 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %296, i32 0, i32 0
  %298 = load %struct.rtentry*, %struct.rtentry** %297, align 8
  %299 = icmp eq %struct.rtentry* %298, null
  br i1 %299, label %300, label %302

300:                                              ; preds = %295
  %301 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %301, i32* %17, align 4
  br label %302

302:                                              ; preds = %300, %295
  %303 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %304 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %303, i32 0, i32 0
  %305 = load %struct.rtentry*, %struct.rtentry** %304, align 8
  store %struct.rtentry* %305, %struct.rtentry** %19, align 8
  %306 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %307 = icmp ne %struct.ifnet* %306, null
  br i1 %307, label %308, label %343

308:                                              ; preds = %302
  %309 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %310 = icmp ne %struct.ip6_pktopts* %309, null
  br i1 %310, label %311, label %343

311:                                              ; preds = %308
  %312 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %313 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %312, i32 0, i32 0
  %314 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %313, align 8
  %315 = icmp ne %struct.in6_pktinfo* %314, null
  br i1 %315, label %316, label %343

316:                                              ; preds = %311
  %317 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %318 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %317, i32 0, i32 0
  %319 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %318, align 8
  %320 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %343

323:                                              ; preds = %316
  %324 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %325 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @IFF_LOOPBACK, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %342, label %330

330:                                              ; preds = %323
  %331 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %332 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %10, align 8
  %335 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %334, i32 0, i32 0
  %336 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %335, align 8
  %337 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %333, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %330
  %341 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %341, i32* %17, align 4
  br label %345

342:                                              ; preds = %330, %323
  br label %343

343:                                              ; preds = %342, %316, %311, %308, %302
  br label %344

344:                                              ; preds = %343, %191
  br label %345

345:                                              ; preds = %344, %340, %273, %190, %115, %86, %71, %57
  %346 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %347 = icmp eq %struct.ifnet* %346, null
  br i1 %347, label %348, label %353

348:                                              ; preds = %345
  %349 = load %struct.rtentry*, %struct.rtentry** %19, align 8
  %350 = icmp eq %struct.rtentry* %349, null
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %352, i32* %17, align 4
  br label %353

353:                                              ; preds = %351, %348, %345
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* @EHOSTUNREACH, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load i32, i32* @ip6s_noroute, align 4
  %359 = call i32 @IP6STAT_INC(i32 %358)
  br label %360

360:                                              ; preds = %357, %353
  %361 = load %struct.ifnet**, %struct.ifnet*** %13, align 8
  %362 = icmp ne %struct.ifnet** %361, null
  br i1 %362, label %363, label %396

363:                                              ; preds = %360
  %364 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  %365 = load %struct.ifnet**, %struct.ifnet*** %13, align 8
  store %struct.ifnet* %364, %struct.ifnet** %365, align 8
  %366 = load %struct.rtentry*, %struct.rtentry** %19, align 8
  %367 = icmp ne %struct.rtentry* %366, null
  br i1 %367, label %368, label %395

368:                                              ; preds = %363
  %369 = load %struct.rtentry*, %struct.rtentry** %19, align 8
  %370 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %369, i32 0, i32 2
  %371 = load %struct.ifnet*, %struct.ifnet** %370, align 8
  %372 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @IFF_LOOPBACK, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %394

377:                                              ; preds = %368
  %378 = load %struct.rtentry*, %struct.rtentry** %19, align 8
  %379 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %378, i32 0, i32 1
  %380 = load %struct.TYPE_2__*, %struct.TYPE_2__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @AF_LINK, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %394

385:                                              ; preds = %377
  %386 = load %struct.rtentry*, %struct.rtentry** %19, align 8
  %387 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %386, i32 0, i32 1
  %388 = load %struct.TYPE_2__*, %struct.TYPE_2__** %387, align 8
  %389 = bitcast %struct.TYPE_2__* %388 to %struct.sockaddr_dl*
  %390 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = call %struct.ifnet* @ifnet_byindex(i64 %391)
  %393 = load %struct.ifnet**, %struct.ifnet*** %13, align 8
  store %struct.ifnet* %392, %struct.ifnet** %393, align 8
  br label %394

394:                                              ; preds = %385, %377, %368
  br label %395

395:                                              ; preds = %394, %363
  br label %396

396:                                              ; preds = %395, %360
  %397 = load %struct.rtentry**, %struct.rtentry*** %14, align 8
  %398 = icmp ne %struct.rtentry** %397, null
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load %struct.rtentry*, %struct.rtentry** %19, align 8
  %401 = load %struct.rtentry**, %struct.rtentry*** %14, align 8
  store %struct.rtentry* %400, %struct.rtentry** %401, align 8
  br label %402

402:                                              ; preds = %399, %396
  %403 = load i32, i32* %17, align 4
  ret i32 %403
}

declare dso_local %struct.ifnet* @ifnet_byindex(i64) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_NODELOCAL(%struct.in6_addr*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @in6_getscope(%struct.in6_addr*) #1

declare dso_local %struct.ifnet* @in6_getlinkifnet(i64) #1

declare dso_local %struct.sockaddr_in6* @satosin6(%struct.sockaddr_in6*) #1

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @RO_RTFREE(%struct.route_in6*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @in6_rtalloc(%struct.route_in6*, i32) #1

declare dso_local i32 @RTFREE(%struct.rtentry*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local %struct.rtentry* @in6_rtalloc1(%struct.sockaddr*, i32, i64, i32) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @IP6STAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
