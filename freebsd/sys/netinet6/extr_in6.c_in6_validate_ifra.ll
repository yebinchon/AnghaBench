; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_validate_ifra.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_validate_ifra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_aliasreq = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.in6_addrlifetime, %struct.sockaddr_in6 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.in6_addrlifetime = type { i64, i64 }
%struct.sockaddr_in6 = type { i64, i64, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.in6_ifaddr = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"in6_update_ifa: a destination can be specified for a p2p or a loopback IF only\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"in6_update_ifa: prefixlen should be 128 when dstaddr is specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"in6_update_ifa: valid lifetime is 0 for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"in6_validate_ifa: the prefix length of an existing %s address should not be changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in6_aliasreq*, %struct.in6_ifaddr*, i32)* @in6_validate_ifra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_validate_ifra(%struct.ifnet* %0, %struct.in6_aliasreq* %1, %struct.in6_ifaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_aliasreq*, align 8
  %8 = alloca %struct.in6_ifaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in6, align 8
  %12 = alloca %struct.in6_addrlifetime*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.in6_addr, align 4
  %17 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in6_aliasreq* %1, %struct.in6_aliasreq** %7, align 8
  store %struct.in6_ifaddr* %2, %struct.in6_ifaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %18 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %23 = icmp eq %struct.ifnet* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %26 = icmp eq %struct.in6_aliasreq* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %4
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

29:                                               ; preds = %24
  %30 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_POINTOPOINT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %38 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET6, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %45 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_UNSPEC, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

52:                                               ; preds = %43, %36, %29
  %53 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %54 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 24
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %61 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AF_INET6, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59, %52
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

68:                                               ; preds = %59
  %69 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %70 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ugt i64 %73, 24
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

77:                                               ; preds = %68
  %78 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %79 = icmp eq %struct.in6_ifaddr* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %82 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

88:                                               ; preds = %80, %77
  %89 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %90 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %96 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %99 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %98, i32 0, i32 0
  %100 = bitcast %struct.TYPE_6__* %99 to i32*
  %101 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %102 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = call i32 @in6_mask2len(i32* %97, i32* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %94
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

112:                                              ; preds = %94
  br label %118

113:                                              ; preds = %88
  %114 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %115 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = call i32 @in6_mask2len(i32* %116, i32* null)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %113, %112
  %119 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %120 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %119, i32 0, i32 3
  %121 = bitcast %struct.sockaddr_in6* %11 to i8*
  %122 = bitcast %struct.sockaddr_in6* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 24, i1 false)
  %123 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IFF_POINTOPOINT, align 4
  %127 = load i32, i32* @IFF_LOOPBACK, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AF_INET6, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %166

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 2
  %138 = bitcast %struct.in6_addr* %16 to i8*
  %139 = bitcast %struct.in6_addr* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 8 %139, i64 4, i1 false)
  %140 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %141 = call i64 @in6_setscope(%struct.in6_addr* %16, %struct.ifnet* %140, i64* %17)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %17, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @EINVAL, align 4
  store i32 %155, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

156:                                              ; preds = %149
  br label %160

157:                                              ; preds = %145
  %158 = load i64, i64* %17, align 8
  %159 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 1
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %157, %156
  %161 = call i64 @sa6_embedscope(%struct.sockaddr_in6* %11, i32 0)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32, i32* @EINVAL, align 4
  store i32 %164, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %131, %118
  %167 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %168 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %167, i32 0, i32 3
  %169 = bitcast %struct.sockaddr_in6* %168 to i8*
  %170 = bitcast %struct.sockaddr_in6* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 24, i1 false)
  %171 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %172 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @AF_INET6, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %198

177:                                              ; preds = %166
  %178 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %179 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IFF_POINTOPOINT, align 4
  %182 = load i32, i32* @IFF_LOOPBACK, align 4
  %183 = or i32 %181, %182
  %184 = and i32 %180, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %177
  %187 = load i32, i32* @LOG_INFO, align 4
  %188 = call i32 @nd6log(i32 ptrtoint ([80 x i8]* @.str to i32))
  %189 = load i32, i32* @EINVAL, align 4
  store i32 %189, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

190:                                              ; preds = %177
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 128
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* @LOG_INFO, align 4
  %195 = call i32 @nd6log(i32 ptrtoint ([67 x i8]* @.str.1 to i32))
  %196 = load i32, i32* @EINVAL, align 4
  store i32 %196, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197, %166
  %199 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %200 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %199, i32 0, i32 2
  store %struct.in6_addrlifetime* %200, %struct.in6_addrlifetime** %12, align 8
  %201 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %12, align 8
  %202 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %12, align 8
  %205 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %203, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %198
  %209 = load i32, i32* @EINVAL, align 4
  store i32 %209, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

210:                                              ; preds = %198
  %211 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %12, align 8
  %212 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %210
  %216 = load i32, i32* @LOG_INFO, align 4
  %217 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %218 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = call i32 @ip6_sprintf(i8* %21, i32* %219)
  %221 = call i32 @nd6log(i32 %220)
  %222 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %223 = icmp eq %struct.in6_ifaddr* %222, null
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

225:                                              ; preds = %215
  br label %226

226:                                              ; preds = %225, %210
  %227 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %228 = icmp ne %struct.in6_ifaddr* %227, null
  br i1 %228, label %229, label %257

229:                                              ; preds = %226
  %230 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %7, align 8
  %231 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %257

235:                                              ; preds = %229
  %236 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %237 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %235
  %242 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %243 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = call i32 @in6_mask2len(i32* %244, i32* null)
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %241
  %249 = load i32, i32* @LOG_INFO, align 4
  %250 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %251 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = call i32 @ip6_sprintf(i8* %21, i32* %252)
  %254 = call i32 @nd6log(i32 %253)
  %255 = load i32, i32* @EINVAL, align 4
  store i32 %255, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

256:                                              ; preds = %241, %235
  br label %257

257:                                              ; preds = %256, %229, %226
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %258

258:                                              ; preds = %257, %248, %224, %208, %193, %186, %163, %154, %143, %110, %86, %75, %66, %50, %27
  %259 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %259)
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @in6_mask2len(i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @in6_setscope(%struct.in6_addr*, %struct.ifnet*, i64*) #2

declare dso_local i64 @sa6_embedscope(%struct.sockaddr_in6*, i32) #2

declare dso_local i32 @nd6log(i32) #2

declare dso_local i32 @ip6_sprintf(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
