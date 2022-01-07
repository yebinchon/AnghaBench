; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_pcbbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_pcbbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, i64, i8*, %struct.TYPE_4__, %struct.ucred*, %struct.TYPE_3__, i8*, %struct.inpcbinfo*, %struct.socket* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inpcbinfo = type { i32 }
%struct.socket = type { i32, i64 }
%struct.sockaddr = type { i32, i64 }
%struct.ucred = type { i64 }
%struct.sockaddr_in6 = type { i64, i8* }
%struct.epoch_tracker = type { i32 }
%struct.ifaddr = type { i32 }
%struct.tcptw = type { i32 }
%struct.in6_ifaddr = type { i32 }

@SO_REUSEPORT = common dso_local global i32 0, align 4
@SO_REUSEPORT_LB = common dso_local global i32 0, align 4
@V_in6_ifaddrhead = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@INPLOOKUP_WILDCARD = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@V_ip6_use_defzone = common dso_local global i32 0, align 4
@INP_BINDANY = common dso_local global i32 0, align 4
@IN6_IFF_ANYCAST = common dso_local global i32 0, align 4
@IN6_IFF_NOTREADY = common dso_local global i32 0, align 4
@IN6_IFF_DETACHED = common dso_local global i32 0, align 4
@V_ipport_reservedhigh = common dso_local global i64 0, align 8
@V_ipport_reservedlow = common dso_local global i64 0, align 8
@PRIV_NETINET_RESERVEDPORT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PRIV_NETINET_REUSEPORT = common dso_local global i32 0, align 4
@INP_BINDMULTI = common dso_local global i32 0, align 4
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@INP_REUSEPORT = common dso_local global i32 0, align 4
@INP_REUSEPORT_LB = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@INP_IPV6PROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_pcbbind(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.ucred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.inpcbinfo*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.epoch_tracker, align 4
  %17 = alloca %struct.ifaddr*, align 8
  %18 = alloca %struct.inpcb*, align 8
  %19 = alloca %struct.tcptw*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  %20 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %21 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %20, i32 0, i32 10
  %22 = load %struct.socket*, %struct.socket** %21, align 8
  store %struct.socket* %22, %struct.socket** %8, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %9, align 8
  %23 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 9
  %25 = load %struct.inpcbinfo*, %struct.inpcbinfo** %24, align 8
  store %struct.inpcbinfo* %25, %struct.inpcbinfo** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.socket*, %struct.socket** %8, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SO_REUSEPORT, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %14, align 4
  %31 = load %struct.socket*, %struct.socket** %8, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SO_REUSEPORT_LB, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %15, align 4
  %36 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %37 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %36)
  %38 = load %struct.inpcbinfo*, %struct.inpcbinfo** %10, align 8
  %39 = call i32 @INP_HASH_WLOCK_ASSERT(%struct.inpcbinfo* %38)
  %40 = call i64 @CK_STAILQ_EMPTY(i32* @V_in6_ifaddrhead)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %43, i32* %4, align 4
  br label %427

44:                                               ; preds = %3
  %45 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 4
  %52 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %427

56:                                               ; preds = %49
  %57 = load %struct.socket*, %struct.socket** %8, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SO_REUSEADDR, align 4
  %61 = load i32, i32* @SO_REUSEPORT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SO_REUSEPORT_LB, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %59, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @INPLOOKUP_WILDCARD, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %56
  %70 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %71 = icmp eq %struct.sockaddr* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.ucred*, %struct.ucred** %7, align 8
  %74 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %75 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %74, i32 0, i32 4
  %76 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %77 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @prison_local_ip6(%struct.ucred* %73, i8** %75, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %4, align 4
  br label %427

87:                                               ; preds = %72
  br label %395

88:                                               ; preds = %69
  %89 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %90 = bitcast %struct.sockaddr* %89 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %90, %struct.sockaddr_in6** %9, align 8
  %91 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %92 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %94, 16
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %4, align 4
  br label %427

98:                                               ; preds = %88
  %99 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %100 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AF_INET6, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %105, i32* %4, align 4
  br label %427

106:                                              ; preds = %98
  %107 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %108 = load i32, i32* @V_ip6_use_defzone, align 4
  %109 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %107, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %427

113:                                              ; preds = %106
  %114 = load %struct.ucred*, %struct.ucred** %7, align 8
  %115 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %116 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %115, i32 0, i32 1
  %117 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %118 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @prison_local_ip6(%struct.ucred* %114, i8** %116, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %113
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %427

128:                                              ; preds = %113
  %129 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %130 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %11, align 8
  %132 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %132, i32 0, i32 1
  %134 = call i64 @IN6_IS_ADDR_MULTICAST(i8** %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %128
  %137 = load %struct.socket*, %struct.socket** %8, align 8
  %138 = getelementptr inbounds %struct.socket, %struct.socket* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SO_REUSEADDR, align 4
  %141 = load i32, i32* @SO_REUSEPORT, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load i32, i32* @SO_REUSEADDR, align 4
  %147 = load i32, i32* @SO_REUSEPORT, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %145, %136
  %150 = load %struct.socket*, %struct.socket** %8, align 8
  %151 = getelementptr inbounds %struct.socket, %struct.socket* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @SO_REUSEADDR, align 4
  %154 = load i32, i32* @SO_REUSEPORT_LB, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i32, i32* @SO_REUSEADDR, align 4
  %160 = load i32, i32* @SO_REUSEPORT_LB, align 4
  %161 = or i32 %159, %160
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %158, %149
  br label %215

163:                                              ; preds = %128
  %164 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %165 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %164, i32 0, i32 1
  %166 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %214, label %168

168:                                              ; preds = %163
  %169 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %170 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  %171 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %16, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @NET_EPOCH_ENTER(i32 %172)
  %174 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %175 = bitcast %struct.sockaddr_in6* %174 to %struct.sockaddr*
  %176 = call %struct.ifaddr* @ifa_ifwithaddr(%struct.sockaddr* %175)
  store %struct.ifaddr* %176, %struct.ifaddr** %17, align 8
  %177 = icmp eq %struct.ifaddr* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %168
  %179 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %180 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @INP_BINDANY, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %16, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @NET_EPOCH_EXIT(i32 %187)
  %189 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %189, i32* %4, align 4
  br label %427

190:                                              ; preds = %178, %168
  %191 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %192 = icmp ne %struct.ifaddr* %191, null
  br i1 %192, label %193, label %210

193:                                              ; preds = %190
  %194 = load %struct.ifaddr*, %struct.ifaddr** %17, align 8
  %195 = bitcast %struct.ifaddr* %194 to %struct.in6_ifaddr*
  %196 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IN6_IFF_ANYCAST, align 4
  %199 = load i32, i32* @IN6_IFF_NOTREADY, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @IN6_IFF_DETACHED, align 4
  %202 = or i32 %200, %201
  %203 = and i32 %197, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %193
  %206 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %16, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @NET_EPOCH_EXIT(i32 %207)
  %209 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %209, i32* %4, align 4
  br label %427

210:                                              ; preds = %193, %190
  %211 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %16, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @NET_EPOCH_EXIT(i32 %212)
  br label %214

214:                                              ; preds = %210, %163
  br label %215

215:                                              ; preds = %214, %162
  %216 = load i64, i64* %11, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %389

218:                                              ; preds = %215
  %219 = load i64, i64* %11, align 8
  %220 = call i64 @ntohs(i64 %219)
  %221 = load i64, i64* @V_ipport_reservedhigh, align 8
  %222 = icmp sle i64 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %218
  %224 = load i64, i64* %11, align 8
  %225 = call i64 @ntohs(i64 %224)
  %226 = load i64, i64* @V_ipport_reservedlow, align 8
  %227 = icmp sge i64 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load %struct.ucred*, %struct.ucred** %7, align 8
  %230 = load i32, i32* @PRIV_NETINET_RESERVEDPORT, align 4
  %231 = call i64 @priv_check_cred(%struct.ucred* %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, i32* @EACCES, align 4
  store i32 %234, i32* %4, align 4
  br label %427

235:                                              ; preds = %228, %223, %218
  %236 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %237 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %236, i32 0, i32 1
  %238 = call i64 @IN6_IS_ADDR_MULTICAST(i8** %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %331, label %240

240:                                              ; preds = %235
  %241 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %242 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %241, i32 0, i32 6
  %243 = load %struct.ucred*, %struct.ucred** %242, align 8
  %244 = load i32, i32* @PRIV_NETINET_REUSEPORT, align 4
  %245 = call i64 @priv_check_cred(%struct.ucred* %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %331

247:                                              ; preds = %240
  %248 = load %struct.inpcbinfo*, %struct.inpcbinfo** %10, align 8
  %249 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %250 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %249, i32 0, i32 1
  %251 = load i64, i64* %11, align 8
  %252 = load i32, i32* @INPLOOKUP_WILDCARD, align 4
  %253 = load %struct.ucred*, %struct.ucred** %7, align 8
  %254 = call %struct.inpcb* @in6_pcblookup_local(%struct.inpcbinfo* %248, i8** %250, i64 %251, i32 %252, %struct.ucred* %253)
  store %struct.inpcb* %254, %struct.inpcb** %18, align 8
  %255 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %256 = icmp ne %struct.inpcb* %255, null
  br i1 %256, label %257, label %320

257:                                              ; preds = %247
  %258 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %259 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @INP_BINDMULTI, align 4
  %262 = and i32 %260, %261
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %320

264:                                              ; preds = %257
  %265 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %266 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @INP_TIMEWAIT, align 4
  %269 = and i32 %267, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %320

271:                                              ; preds = %264
  %272 = load %struct.socket*, %struct.socket** %8, align 8
  %273 = getelementptr inbounds %struct.socket, %struct.socket* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @SOCK_STREAM, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %282, label %277

277:                                              ; preds = %271
  %278 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %279 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %278, i32 0, i32 8
  %280 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %320

282:                                              ; preds = %277, %271
  %283 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %284 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %283, i32 0, i32 1
  %285 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %306

287:                                              ; preds = %282
  %288 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %289 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %288, i32 0, i32 4
  %290 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i8** %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %287
  %293 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %294 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @INP_REUSEPORT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %306, label %299

299:                                              ; preds = %292
  %300 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %301 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @INP_REUSEPORT_LB, align 4
  %304 = and i32 %302, %303
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %320

306:                                              ; preds = %299, %292, %287, %282
  %307 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %308 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %307, i32 0, i32 6
  %309 = load %struct.ucred*, %struct.ucred** %308, align 8
  %310 = getelementptr inbounds %struct.ucred, %struct.ucred* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %313 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %312, i32 0, i32 6
  %314 = load %struct.ucred*, %struct.ucred** %313, align 8
  %315 = getelementptr inbounds %struct.ucred, %struct.ucred* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %311, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %306
  %319 = load i32, i32* @EADDRINUSE, align 4
  store i32 %319, i32* %4, align 4
  br label %427

320:                                              ; preds = %306, %299, %277, %264, %257, %247
  %321 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %322 = icmp ne %struct.inpcb* %321, null
  br i1 %322, label %323, label %330

323:                                              ; preds = %320
  %324 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %325 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %326 = call i32 @in_pcbbind_check_bindmulti(%struct.inpcb* %324, %struct.inpcb* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %323
  %329 = load i32, i32* @EADDRINUSE, align 4
  store i32 %329, i32* %4, align 4
  br label %427

330:                                              ; preds = %323, %320
  br label %331

331:                                              ; preds = %330, %240, %235
  %332 = load %struct.inpcbinfo*, %struct.inpcbinfo** %10, align 8
  %333 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %334 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %333, i32 0, i32 1
  %335 = load i64, i64* %11, align 8
  %336 = load i32, i32* %13, align 4
  %337 = load %struct.ucred*, %struct.ucred** %7, align 8
  %338 = call %struct.inpcb* @in6_pcblookup_local(%struct.inpcbinfo* %332, i8** %334, i64 %335, i32 %336, %struct.ucred* %337)
  store %struct.inpcb* %338, %struct.inpcb** %18, align 8
  %339 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %340 = icmp ne %struct.inpcb* %339, null
  br i1 %340, label %341, label %370

341:                                              ; preds = %331
  %342 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %343 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @INP_TIMEWAIT, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %370

348:                                              ; preds = %341
  %349 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %350 = call %struct.tcptw* @intotw(%struct.inpcb* %349)
  store %struct.tcptw* %350, %struct.tcptw** %19, align 8
  %351 = load %struct.tcptw*, %struct.tcptw** %19, align 8
  %352 = icmp eq %struct.tcptw* %351, null
  br i1 %352, label %367, label %353

353:                                              ; preds = %348
  %354 = load i32, i32* %14, align 4
  %355 = load %struct.tcptw*, %struct.tcptw** %19, align 8
  %356 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = and i32 %354, %357
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %353
  %361 = load i32, i32* %15, align 4
  %362 = load %struct.tcptw*, %struct.tcptw** %19, align 8
  %363 = getelementptr inbounds %struct.tcptw, %struct.tcptw* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %361, %364
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %360, %348
  %368 = load i32, i32* @EADDRINUSE, align 4
  store i32 %368, i32* %4, align 4
  br label %427

369:                                              ; preds = %360, %353
  br label %388

370:                                              ; preds = %341, %331
  %371 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %372 = icmp ne %struct.inpcb* %371, null
  br i1 %372, label %373, label %387

373:                                              ; preds = %370
  %374 = load i32, i32* %14, align 4
  %375 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %376 = call i32 @inp_so_options(%struct.inpcb* %375)
  %377 = and i32 %374, %376
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %387

379:                                              ; preds = %373
  %380 = load i32, i32* %15, align 4
  %381 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %382 = call i32 @inp_so_options(%struct.inpcb* %381)
  %383 = and i32 %380, %382
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %379
  %386 = load i32, i32* @EADDRINUSE, align 4
  store i32 %386, i32* %4, align 4
  br label %427

387:                                              ; preds = %379, %373, %370
  br label %388

388:                                              ; preds = %387, %369
  br label %389

389:                                              ; preds = %388, %215
  %390 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %391 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %394 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %393, i32 0, i32 4
  store i8* %392, i8** %394, align 8
  br label %395

395:                                              ; preds = %389, %87
  %396 = load i64, i64* %11, align 8
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %411

398:                                              ; preds = %395
  %399 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %400 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %399, i32 0, i32 4
  %401 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %402 = load %struct.ucred*, %struct.ucred** %7, align 8
  %403 = call i32 @in6_pcbsetport(i8** %400, %struct.inpcb* %401, %struct.ucred* %402)
  store i32 %403, i32* %12, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %398
  %406 = load i8*, i8** @in6addr_any, align 8
  %407 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %408 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %407, i32 0, i32 4
  store i8* %406, i8** %408, align 8
  %409 = load i32, i32* %12, align 4
  store i32 %409, i32* %4, align 4
  br label %427

410:                                              ; preds = %398
  br label %426

411:                                              ; preds = %395
  %412 = load i64, i64* %11, align 8
  %413 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %414 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %413, i32 0, i32 3
  store i64 %412, i64* %414, align 8
  %415 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %416 = call i64 @in_pcbinshash(%struct.inpcb* %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %425

418:                                              ; preds = %411
  %419 = load i8*, i8** @in6addr_any, align 8
  %420 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %421 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %420, i32 0, i32 4
  store i8* %419, i8** %421, align 8
  %422 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %423 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %422, i32 0, i32 3
  store i64 0, i64* %423, align 8
  %424 = load i32, i32* @EAGAIN, align 4
  store i32 %424, i32* %4, align 4
  br label %427

425:                                              ; preds = %411
  br label %426

426:                                              ; preds = %425, %410
  store i32 0, i32* %4, align 4
  br label %427

427:                                              ; preds = %426, %418, %405, %385, %367, %328, %318, %233, %205, %185, %126, %111, %104, %96, %85, %54, %42
  %428 = load i32, i32* %4, align 4
  ret i32 %428
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @INP_HASH_WLOCK_ASSERT(%struct.inpcbinfo*) #1

declare dso_local i64 @CK_STAILQ_EMPTY(i32*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i8**) #1

declare dso_local i32 @prison_local_ip6(%struct.ucred*, i8**, i32) #1

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(i8**) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr(%struct.sockaddr*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local %struct.inpcb* @in6_pcblookup_local(%struct.inpcbinfo*, i8**, i64, i32, %struct.ucred*) #1

declare dso_local i32 @in_pcbbind_check_bindmulti(%struct.inpcb*, %struct.inpcb*) #1

declare dso_local %struct.tcptw* @intotw(%struct.inpcb*) #1

declare dso_local i32 @inp_so_options(%struct.inpcb*) #1

declare dso_local i32 @in6_pcbsetport(i8**, %struct.inpcb*, %struct.ucred*) #1

declare dso_local i64 @in_pcbinshash(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
