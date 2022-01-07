; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, i32, i64)*, i32** }
%struct.thread = type { i32 }
%struct.in6_ifreq = type { %struct.TYPE_15__, %struct.sockaddr_in6, %struct.sockaddr_in6 }
%struct.TYPE_15__ = type { i32, %struct.in6_addrlifetime, i32, i32 }
%struct.in6_addrlifetime = type { i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i64, i64, i32, i32 }
%struct.in6_ifaddr = type { i32, i32, %struct.TYPE_19__, %struct.nd_prefix*, %struct.in6_addrlifetime, %struct.sockaddr_in6, %struct.sockaddr_in6, %struct.sockaddr_in6 }
%struct.TYPE_19__ = type { i32 }
%struct.nd_prefix = type { i32 }
%struct.in6_aliasreq = type { i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.sockaddr_in6, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.nd_prefixctl = type { i32, i32, i32, i32, i32, %struct.sockaddr_in6, %struct.ifnet* }
%struct.in6_ndireq = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.in6_ifextra = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@OSIOCAIFADDR_IN6 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PRIV_NETINET_ADDRCTRL6 = common dso_local global i32 0, align 4
@PRIV_NETINET_ND6 = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"prefix ioctls are now invalidated. please use ifconfig.\0A\00", align 1
@PRIV_NETINET_SCOPE6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@PRIV_NET_DELIFADDR = common dso_local global i32 0, align 4
@PRIV_NET_ADDIFADDR = common dso_local global i32 0, align 4
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@ND6_INFINITE_LIFETIME = common dso_local global i32 0, align 4
@IN6_IFF_AUTOCONF = common dso_local global i32 0, align 4
@V_ip6_use_tempaddr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"in6_control: failed to create a temporary address, errno=%d\0A\00", align 1
@ND6_IFF_IFDISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"SIOCAIFADDR_IN6: SIOCSIFINFO_FLAGS for -ifdisabled failed.\00", align 1
@ifaddr_event_ext = common dso_local global i32 0, align 4
@IFADDR_EVENT_DEL = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_control(%struct.socket* %0, i32 %1, i64 %2, %struct.ifnet* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.in6_ifreq*, align 8
  %13 = alloca %struct.in6_ifaddr*, align 8
  %14 = alloca %struct.in6_aliasreq*, align 8
  %15 = alloca %struct.sockaddr_in6*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.in6_addrlifetime*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.in6_addrlifetime*, align 8
  %23 = alloca %struct.nd_prefixctl, align 8
  %24 = alloca %struct.nd_prefix*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.in6_ndireq, align 4
  %27 = alloca %struct.nd_prefix*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.ifnet* %3, %struct.ifnet** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = inttoptr i64 %28 to %struct.in6_ifreq*
  store %struct.in6_ifreq* %29, %struct.in6_ifreq** %12, align 8
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to %struct.in6_aliasreq*
  store %struct.in6_aliasreq* %31, %struct.in6_aliasreq** %14, align 8
  store i32 0, i32* %16, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @OSIOCAIFADDR_IN6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 168, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %48 [
    i32 159, label %39
    i32 160, label %39
  ]

39:                                               ; preds = %37, %37
  br i1 true, label %40, label %44

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @mrt6_ioctl(i32 %41, i64 %42)
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ]
  store i32 %47, i32* %6, align 4
  br label %633

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %66 [
    i32 169, label %50
    i32 165, label %50
  ]

50:                                               ; preds = %48, %48
  %51 = load %struct.thread*, %struct.thread** %11, align 8
  %52 = icmp ne %struct.thread* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.thread*, %struct.thread** %11, align 8
  %55 = load i32, i32* @PRIV_NETINET_ADDRCTRL6, align 4
  %56 = call i32 @priv_check(%struct.thread* %54, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %6, align 4
  br label %633

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i32, i32* %8, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @in6_src_ioctl(i32 %63, i64 %64)
  store i32 %65, i32* %6, align 4
  br label %633

66:                                               ; preds = %48
  %67 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %68 = icmp eq %struct.ifnet* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %70, i32* %6, align 4
  br label %633

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  switch i32 %72, label %91 [
    i32 131, label %73
    i32 130, label %73
    i32 129, label %73
    i32 144, label %73
    i32 137, label %73
    i32 136, label %73
    i32 170, label %86
    i32 154, label %86
    i32 147, label %86
    i32 161, label %86
  ]

73:                                               ; preds = %71, %71, %71, %71, %71, %71
  %74 = load %struct.thread*, %struct.thread** %11, align 8
  %75 = icmp ne %struct.thread* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.thread*, %struct.thread** %11, align 8
  %78 = load i32, i32* @PRIV_NETINET_ND6, align 4
  %79 = call i32 @priv_check(%struct.thread* %77, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %6, align 4
  br label %633

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %73
  br label %86

86:                                               ; preds = %71, %71, %71, %71, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %90 = call i32 @nd6_ioctl(i32 %87, i64 %88, %struct.ifnet* %89)
  store i32 %90, i32* %6, align 4
  br label %633

91:                                               ; preds = %71
  %92 = load i32, i32* %8, align 4
  switch i32 %92, label %97 [
    i32 132, label %93
    i32 163, label %93
    i32 167, label %93
    i32 166, label %93
    i32 143, label %93
    i32 151, label %93
  ]

93:                                               ; preds = %91, %91, %91, %91, %91, %91
  %94 = load i32, i32* @LOG_NOTICE, align 4
  %95 = call i32 (i32, i8*, ...) @log(i32 %94, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %96, i32* %6, align 4
  br label %633

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  switch i32 %98, label %117 [
    i32 128, label %99
    i32 146, label %112
    i32 145, label %112
  ]

99:                                               ; preds = %97
  %100 = load %struct.thread*, %struct.thread** %11, align 8
  %101 = icmp ne %struct.thread* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.thread*, %struct.thread** %11, align 8
  %104 = load i32, i32* @PRIV_NETINET_SCOPE6, align 4
  %105 = call i32 @priv_check(%struct.thread* %103, i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %6, align 4
  br label %633

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %97, %97, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %116 = call i32 @scope6_ioctl(i32 %113, i64 %114, %struct.ifnet* %115)
  store i32 %116, i32* %6, align 4
  br label %633

117:                                              ; preds = %97
  %118 = load i32, i32* %8, align 4
  switch i32 %118, label %127 [
    i32 168, label %119
    i32 133, label %119
    i32 141, label %122
    i32 158, label %122
    i32 138, label %122
    i32 134, label %122
    i32 155, label %122
    i32 153, label %122
    i32 164, label %122
    i32 150, label %122
    i32 152, label %122
    i32 157, label %122
    i32 131, label %122
    i32 130, label %122
    i32 129, label %122
    i32 156, label %122
    i32 148, label %122
    i32 149, label %122
    i32 142, label %125
    i32 140, label %125
    i32 139, label %125
    i32 135, label %125
  ]

119:                                              ; preds = %117, %117
  %120 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %121 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %120, i32 0, i32 3
  store %struct.sockaddr_in6* %121, %struct.sockaddr_in6** %15, align 8
  br label %128

122:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %123 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %124 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %123, i32 0, i32 1
  store %struct.sockaddr_in6* %124, %struct.sockaddr_in6** %15, align 8
  br label %128

125:                                              ; preds = %117, %117, %117, %117
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %6, align 4
  br label %633

127:                                              ; preds = %117
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %15, align 8
  br label %128

128:                                              ; preds = %127, %122, %119
  %129 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %130 = icmp ne %struct.sockaddr_in6* %129, null
  br i1 %130, label %131, label %173

131:                                              ; preds = %128
  %132 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @AF_INET6, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %173

137:                                              ; preds = %131
  %138 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %139 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %144 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %143, i32 0)
  store i32 %144, i32* %17, align 4
  br label %150

145:                                              ; preds = %137
  %146 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %147 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %146, i32 0, i32 3
  %148 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %149 = call i32 @in6_setscope(i32* %147, %struct.ifnet* %148, i32* null)
  store i32 %149, i32* %17, align 4
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* %17, align 4
  store i32 %154, i32* %6, align 4
  br label %633

155:                                              ; preds = %150
  %156 = load %struct.thread*, %struct.thread** %11, align 8
  %157 = icmp ne %struct.thread* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load %struct.thread*, %struct.thread** %11, align 8
  %160 = getelementptr inbounds %struct.thread, %struct.thread* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %163 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %162, i32 0, i32 3
  %164 = call i32 @prison_check_ip6(i32 %161, i32* %163)
  store i32 %164, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32, i32* %17, align 4
  store i32 %167, i32* %6, align 4
  br label %633

168:                                              ; preds = %158, %155
  %169 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %170 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %171 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %170, i32 0, i32 3
  %172 = call %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet* %169, i32* %171)
  store %struct.in6_ifaddr* %172, %struct.in6_ifaddr** %13, align 8
  br label %174

173:                                              ; preds = %131, %128
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %13, align 8
  br label %174

174:                                              ; preds = %173, %168
  %175 = load i32, i32* %8, align 4
  switch i32 %175, label %236 [
    i32 141, label %176
    i32 138, label %176
    i32 134, label %176
    i32 164, label %178
    i32 168, label %184
    i32 148, label %219
    i32 149, label %219
    i32 158, label %230
    i32 157, label %230
    i32 153, label %230
    i32 155, label %230
    i32 156, label %230
  ]

176:                                              ; preds = %174, %174, %174
  %177 = load i32, i32* @EINVAL, align 4
  store i32 %177, i32* %17, align 4
  br label %624

178:                                              ; preds = %174
  %179 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %180 = icmp eq %struct.in6_ifaddr* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %182, i32* %17, align 4
  br label %624

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %174, %183
  %185 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %186 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @AF_INET6, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %198, label %191

191:                                              ; preds = %184
  %192 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %193 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = icmp ne i64 %196, 24
  br i1 %197, label %198, label %200

198:                                              ; preds = %191, %184
  %199 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %199, i32* %17, align 4
  br label %624

200:                                              ; preds = %191
  %201 = load %struct.thread*, %struct.thread** %11, align 8
  %202 = icmp ne %struct.thread* %201, null
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = load %struct.thread*, %struct.thread** %11, align 8
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 164
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @PRIV_NET_DELIFADDR, align 4
  br label %211

209:                                              ; preds = %203
  %210 = load i32, i32* @PRIV_NET_ADDIFADDR, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  %213 = call i32 @priv_check(%struct.thread* %204, i32 %212)
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %624

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %200
  br label %219

219:                                              ; preds = %174, %174, %218
  %220 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %221 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %220, i32 0, i32 2
  %222 = load i32**, i32*** %221, align 8
  %223 = load i64, i64* @AF_INET6, align 8
  %224 = getelementptr inbounds i32*, i32** %222, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = load i32, i32* @EPFNOSUPPORT, align 4
  store i32 %228, i32* %17, align 4
  br label %624

229:                                              ; preds = %219
  br label %236

230:                                              ; preds = %174, %174, %174, %174, %174
  %231 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %232 = icmp eq %struct.in6_ifaddr* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %234, i32* %17, align 4
  br label %624

235:                                              ; preds = %230
  br label %236

236:                                              ; preds = %174, %235, %229
  %237 = load i32, i32* %8, align 4
  switch i32 %237, label %608 [
    i32 158, label %238
    i32 155, label %251
    i32 153, label %273
    i32 157, label %280
    i32 148, label %287
    i32 149, label %301
    i32 156, label %315
    i32 168, label %397
    i32 164, label %580
  ]

238:                                              ; preds = %236
  %239 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %240 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %239, i32 0, i32 1
  %241 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %242 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %241, i32 0, i32 7
  %243 = bitcast %struct.sockaddr_in6* %240 to i8*
  %244 = bitcast %struct.sockaddr_in6* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %243, i8* align 8 %244, i64 24, i1 false)
  %245 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %246 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %245, i32 0, i32 1
  %247 = call i32 @sa6_recoverscope(%struct.sockaddr_in6* %246)
  store i32 %247, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  br label %624

250:                                              ; preds = %238
  br label %623

251:                                              ; preds = %236
  %252 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %253 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @IFF_POINTOPOINT, align 4
  %256 = and i32 %254, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %251
  %259 = load i32, i32* @EINVAL, align 4
  store i32 %259, i32* %17, align 4
  br label %624

260:                                              ; preds = %251
  %261 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %262 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %261, i32 0, i32 2
  %263 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %264 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %263, i32 0, i32 6
  %265 = bitcast %struct.sockaddr_in6* %262 to i8*
  %266 = bitcast %struct.sockaddr_in6* %264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* align 8 %266, i64 24, i1 false)
  %267 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %268 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %267, i32 0, i32 2
  %269 = call i32 @sa6_recoverscope(%struct.sockaddr_in6* %268)
  store i32 %269, i32* %17, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %260
  br label %624

272:                                              ; preds = %260
  br label %623

273:                                              ; preds = %236
  %274 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %275 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %274, i32 0, i32 1
  %276 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %277 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %276, i32 0, i32 5
  %278 = bitcast %struct.sockaddr_in6* %275 to i8*
  %279 = bitcast %struct.sockaddr_in6* %277 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %278, i8* align 8 %279, i64 24, i1 false)
  br label %623

280:                                              ; preds = %236
  %281 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %282 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %285 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  store i32 %283, i32* %286, align 8
  br label %623

287:                                              ; preds = %236
  %288 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %289 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %288, i32 0, i32 2
  %290 = load i32**, i32*** %289, align 8
  %291 = load i64, i64* @AF_INET6, align 8
  %292 = getelementptr inbounds i32*, i32** %290, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = bitcast i32* %293 to %struct.in6_ifextra*
  %295 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %298 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 3
  %300 = call i32 @COUNTER_ARRAY_COPY(i32 %296, i32* %299, i32 1)
  br label %623

301:                                              ; preds = %236
  %302 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %303 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %302, i32 0, i32 2
  %304 = load i32**, i32*** %303, align 8
  %305 = load i64, i64* @AF_INET6, align 8
  %306 = getelementptr inbounds i32*, i32** %304, i64 %305
  %307 = load i32*, i32** %306, align 8
  %308 = bitcast i32* %307 to %struct.in6_ifextra*
  %309 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %312 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 2
  %314 = call i32 @COUNTER_ARRAY_COPY(i32 %310, i32* %313, i32 1)
  br label %623

315:                                              ; preds = %236
  %316 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %317 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 1
  %319 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %320 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %319, i32 0, i32 4
  %321 = bitcast %struct.in6_addrlifetime* %318 to i8*
  %322 = bitcast %struct.in6_addrlifetime* %320 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %321, i8* align 8 %322, i64 16, i1 false)
  %323 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %324 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @ND6_INFINITE_LIFETIME, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %359

329:                                              ; preds = %315
  %330 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %331 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 1
  store %struct.in6_addrlifetime* %332, %struct.in6_addrlifetime** %20, align 8
  store i32 2147483647, i32* %19, align 4
  %333 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %334 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %333, i32 0, i32 4
  %335 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %19, align 4
  %338 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %339 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %337, %340
  %342 = icmp slt i32 %336, %341
  br i1 %342, label %343, label %354

343:                                              ; preds = %329
  %344 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %345 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %348 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %346, %350
  %352 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %20, align 8
  %353 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %352, i32 0, i32 1
  store i32 %351, i32* %353, align 4
  br label %358

354:                                              ; preds = %329
  %355 = load i32, i32* %19, align 4
  %356 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %20, align 8
  %357 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %356, i32 0, i32 1
  store i32 %355, i32* %357, align 4
  br label %358

358:                                              ; preds = %354, %343
  br label %359

359:                                              ; preds = %358, %315
  %360 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %361 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @ND6_INFINITE_LIFETIME, align 4
  %365 = icmp ne i32 %363, %364
  br i1 %365, label %366, label %396

366:                                              ; preds = %359
  %367 = load %struct.in6_ifreq*, %struct.in6_ifreq** %12, align 8
  %368 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 1
  store %struct.in6_addrlifetime* %369, %struct.in6_addrlifetime** %22, align 8
  store i32 2147483647, i32* %21, align 4
  %370 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %371 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %370, i32 0, i32 4
  %372 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* %21, align 4
  %375 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %376 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 %374, %377
  %379 = icmp slt i32 %373, %378
  br i1 %379, label %380, label %391

380:                                              ; preds = %366
  %381 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %382 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %385 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %384, i32 0, i32 4
  %386 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %383, %387
  %389 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %22, align 8
  %390 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %389, i32 0, i32 3
  store i32 %388, i32* %390, align 4
  br label %395

391:                                              ; preds = %366
  %392 = load i32, i32* %21, align 4
  %393 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %22, align 8
  %394 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %393, i32 0, i32 3
  store i32 %392, i32* %394, align 4
  br label %395

395:                                              ; preds = %391, %380
  br label %396

396:                                              ; preds = %395, %359
  br label %623

397:                                              ; preds = %236
  %398 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %399 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %400 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %401 = call i32 @in6_update_ifa(%struct.ifnet* %398, %struct.in6_aliasreq* %399, %struct.in6_ifaddr* %400, i32 0)
  store i32 %401, i32* %17, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %397
  br label %624

404:                                              ; preds = %397
  %405 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %406 = icmp ne %struct.in6_ifaddr* %405, null
  br i1 %406, label %407, label %421

407:                                              ; preds = %404
  %408 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %409 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %407
  %414 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %415 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %414, i32 0, i32 2
  %416 = call i32 @carp_detach_p(%struct.TYPE_19__* %415, i32 1)
  br label %417

417:                                              ; preds = %413, %407
  %418 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %419 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %418, i32 0, i32 2
  %420 = call i32 @ifa_free(%struct.TYPE_19__* %419)
  br label %421

421:                                              ; preds = %417, %404
  %422 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %423 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %424 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %423, i32 0, i32 3
  %425 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %424, i32 0, i32 3
  %426 = call %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet* %422, i32* %425)
  store %struct.in6_ifaddr* %426, %struct.in6_ifaddr** %13, align 8
  %427 = icmp eq %struct.in6_ifaddr* %426, null
  br i1 %427, label %428, label %429

428:                                              ; preds = %421
  br label %623

429:                                              ; preds = %421
  %430 = load i32, i32* %8, align 4
  %431 = load i32, i32* %18, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %450

433:                                              ; preds = %429
  %434 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %435 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 8
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %450

438:                                              ; preds = %433
  %439 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %440 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %439, i32 0, i32 2
  %441 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %442 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @carp_attach_p(%struct.TYPE_19__* %440, i32 %443)
  store i32 %444, i32* %17, align 4
  %445 = load i32, i32* %17, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %438
  br label %624

448:                                              ; preds = %438
  store i32 1, i32* %16, align 4
  br label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449, %433, %429
  %451 = call i32 @bzero(%struct.nd_prefixctl* %23, i32 56)
  %452 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %453 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 6
  store %struct.ifnet* %452, %struct.ifnet** %453, align 8
  %454 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %455 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i32 0, i32 0
  %457 = call i32 @in6_mask2len(i32* %456, i32* null)
  %458 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 0
  store i32 %457, i32* %458, align 8
  %459 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = icmp eq i32 %460, 128
  br i1 %461, label %462, label %463

462:                                              ; preds = %450
  br label %549

463:                                              ; preds = %450
  %464 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 5
  %465 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %466 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %465, i32 0, i32 3
  %467 = bitcast %struct.sockaddr_in6* %464 to i8*
  %468 = bitcast %struct.sockaddr_in6* %466 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %467, i8* align 8 %468, i64 24, i1 false)
  %469 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 5
  %470 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %469, i32 0, i32 3
  %471 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %472 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %472, i32 0, i32 0
  %474 = call i32 @IN6_MASK_ADDR(i32* %470, i32* %473)
  %475 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 1
  store i32 1, i32* %475, align 4
  %476 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %477 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @IN6_IFF_AUTOCONF, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  %482 = zext i1 %481 to i32
  %483 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 2
  store i32 %482, i32* %483, align 8
  %484 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %485 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 4
  store i32 %487, i32* %488, align 8
  %489 = load %struct.in6_aliasreq*, %struct.in6_aliasreq** %14, align 8
  %490 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %23, i32 0, i32 3
  store i32 %492, i32* %493, align 4
  %494 = call %struct.nd_prefix* @nd6_prefix_lookup(%struct.nd_prefixctl* %23)
  store %struct.nd_prefix* %494, %struct.nd_prefix** %24, align 8
  %495 = icmp eq %struct.nd_prefix* %494, null
  br i1 %495, label %496, label %508

496:                                              ; preds = %463
  %497 = call i32 @nd6_prelist_add(%struct.nd_prefixctl* %23, i32* null, %struct.nd_prefix** %24)
  store i32 %497, i32* %17, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %507

499:                                              ; preds = %496
  %500 = load i32, i32* %16, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %499
  %503 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %504 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %503, i32 0, i32 2
  %505 = call i32 @carp_detach_p(%struct.TYPE_19__* %504, i32 0)
  br label %506

506:                                              ; preds = %502, %499
  br label %624

507:                                              ; preds = %496
  br label %508

508:                                              ; preds = %507, %463
  %509 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %510 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %509, i32 0, i32 3
  %511 = load %struct.nd_prefix*, %struct.nd_prefix** %510, align 8
  %512 = icmp eq %struct.nd_prefix* %511, null
  br i1 %512, label %513, label %545

513:                                              ; preds = %508
  %514 = load %struct.nd_prefix*, %struct.nd_prefix** %24, align 8
  %515 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %516 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %515, i32 0, i32 3
  store %struct.nd_prefix* %514, %struct.nd_prefix** %516, align 8
  %517 = load %struct.nd_prefix*, %struct.nd_prefix** %24, align 8
  %518 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %518, align 4
  %521 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %522 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = load i32, i32* @IN6_IFF_AUTOCONF, align 4
  %525 = and i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %544

527:                                              ; preds = %513
  %528 = load i32, i32* @V_ip6_use_tempaddr, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %544

530:                                              ; preds = %527
  %531 = load %struct.nd_prefix*, %struct.nd_prefix** %24, align 8
  %532 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = icmp eq i32 %533, 1
  br i1 %534, label %535, label %544

535:                                              ; preds = %530
  %536 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %537 = call i32 @in6_tmpifadd(%struct.in6_ifaddr* %536, i32 1, i32 0)
  store i32 %537, i32* %25, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %543

539:                                              ; preds = %535
  %540 = load i32, i32* @LOG_NOTICE, align 4
  %541 = load i32, i32* %25, align 4
  %542 = call i32 (i32, i8*, ...) @log(i32 %540, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %541)
  br label %543

543:                                              ; preds = %539, %535
  br label %544

544:                                              ; preds = %543, %530, %527, %513
  br label %545

545:                                              ; preds = %544, %508
  %546 = load %struct.nd_prefix*, %struct.nd_prefix** %24, align 8
  %547 = call i32 @nd6_prefix_rele(%struct.nd_prefix* %546)
  %548 = call i32 (...) @pfxlist_onlink_check()
  br label %549

549:                                              ; preds = %545, %462
  %550 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %551 = call %struct.TYPE_14__* @ND_IFINFO(%struct.ifnet* %550)
  %552 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %555 = and i32 %553, %554
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %579

557:                                              ; preds = %549
  %558 = call i32 @memset(%struct.in6_ndireq* %26, i32 0, i32 4)
  %559 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %560 = call %struct.TYPE_14__* @ND_IFINFO(%struct.ifnet* %559)
  %561 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = getelementptr inbounds %struct.in6_ndireq, %struct.in6_ndireq* %26, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %563, i32 0, i32 0
  store i32 %562, i32* %564, align 4
  %565 = load i32, i32* @ND6_IFF_IFDISABLED, align 4
  %566 = xor i32 %565, -1
  %567 = getelementptr inbounds %struct.in6_ndireq, %struct.in6_ndireq* %26, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  %570 = and i32 %569, %566
  store i32 %570, i32* %568, align 4
  %571 = ptrtoint %struct.in6_ndireq* %26 to i64
  %572 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %573 = call i32 @nd6_ioctl(i32 137, i64 %571, %struct.ifnet* %572)
  %574 = icmp slt i32 %573, 0
  br i1 %574, label %575, label %578

575:                                              ; preds = %557
  %576 = load i32, i32* @LOG_NOTICE, align 4
  %577 = call i32 (i32, i8*, ...) @log(i32 %576, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %578

578:                                              ; preds = %575, %557
  br label %579

579:                                              ; preds = %578, %549
  br label %623

580:                                              ; preds = %236
  %581 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %582 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %581, i32 0, i32 3
  %583 = load %struct.nd_prefix*, %struct.nd_prefix** %582, align 8
  store %struct.nd_prefix* %583, %struct.nd_prefix** %27, align 8
  %584 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %585 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %584, i32 0, i32 2
  %586 = call i32 @in6_purgeaddr(%struct.TYPE_19__* %585)
  %587 = load %struct.nd_prefix*, %struct.nd_prefix** %27, align 8
  %588 = icmp ne %struct.nd_prefix* %587, null
  br i1 %588, label %589, label %601

589:                                              ; preds = %580
  %590 = load %struct.nd_prefix*, %struct.nd_prefix** %27, align 8
  %591 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %601

594:                                              ; preds = %589
  %595 = call i32 (...) @ND6_WLOCK()
  %596 = load %struct.nd_prefix*, %struct.nd_prefix** %27, align 8
  %597 = call i32 @nd6_prefix_unlink(%struct.nd_prefix* %596, i32* null)
  %598 = call i32 (...) @ND6_WUNLOCK()
  %599 = load %struct.nd_prefix*, %struct.nd_prefix** %27, align 8
  %600 = call i32 @nd6_prefix_del(%struct.nd_prefix* %599)
  br label %601

601:                                              ; preds = %594, %589, %580
  %602 = load i32, i32* @ifaddr_event_ext, align 4
  %603 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %604 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %605 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %604, i32 0, i32 2
  %606 = load i32, i32* @IFADDR_EVENT_DEL, align 4
  %607 = call i32 @EVENTHANDLER_INVOKE(i32 %602, %struct.ifnet* %603, %struct.TYPE_19__* %605, i32 %606)
  br label %623

608:                                              ; preds = %236
  %609 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %610 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %609, i32 0, i32 1
  %611 = load i32 (%struct.ifnet*, i32, i64)*, i32 (%struct.ifnet*, i32, i64)** %610, align 8
  %612 = icmp eq i32 (%struct.ifnet*, i32, i64)* %611, null
  br i1 %612, label %613, label %615

613:                                              ; preds = %608
  %614 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %614, i32* %17, align 4
  br label %624

615:                                              ; preds = %608
  %616 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %617 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %616, i32 0, i32 1
  %618 = load i32 (%struct.ifnet*, i32, i64)*, i32 (%struct.ifnet*, i32, i64)** %617, align 8
  %619 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %620 = load i32, i32* %8, align 4
  %621 = load i64, i64* %9, align 8
  %622 = call i32 %618(%struct.ifnet* %619, i32 %620, i64 %621)
  store i32 %622, i32* %17, align 4
  br label %624

623:                                              ; preds = %601, %579, %428, %396, %301, %287, %280, %273, %272, %250
  store i32 0, i32* %17, align 4
  br label %624

624:                                              ; preds = %623, %615, %613, %506, %447, %403, %271, %258, %249, %233, %227, %216, %198, %181, %176
  %625 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %626 = icmp ne %struct.in6_ifaddr* %625, null
  br i1 %626, label %627, label %631

627:                                              ; preds = %624
  %628 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %629 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %628, i32 0, i32 2
  %630 = call i32 @ifa_free(%struct.TYPE_19__* %629)
  br label %631

631:                                              ; preds = %627, %624
  %632 = load i32, i32* %17, align 4
  store i32 %632, i32* %6, align 4
  br label %633

633:                                              ; preds = %631, %166, %153, %125, %112, %108, %93, %86, %82, %69, %62, %59, %46
  %634 = load i32, i32* %6, align 4
  ret i32 %634
}

declare dso_local i32 @mrt6_ioctl(i32, i64) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @in6_src_ioctl(i32, i64) #1

declare dso_local i32 @nd6_ioctl(i32, i64, %struct.ifnet*) #1

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local i32 @scope6_ioctl(i32, i64, %struct.ifnet*) #1

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @in6_setscope(i32*, %struct.ifnet*, i32*) #1

declare dso_local i32 @prison_check_ip6(i32, i32*) #1

declare dso_local %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sa6_recoverscope(%struct.sockaddr_in6*) #1

declare dso_local i32 @COUNTER_ARRAY_COPY(i32, i32*, i32) #1

declare dso_local i32 @in6_update_ifa(%struct.ifnet*, %struct.in6_aliasreq*, %struct.in6_ifaddr*, i32) #1

declare dso_local i32 @carp_detach_p(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ifa_free(%struct.TYPE_19__*) #1

declare dso_local i32 @carp_attach_p(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @bzero(%struct.nd_prefixctl*, i32) #1

declare dso_local i32 @in6_mask2len(i32*, i32*) #1

declare dso_local i32 @IN6_MASK_ADDR(i32*, i32*) #1

declare dso_local %struct.nd_prefix* @nd6_prefix_lookup(%struct.nd_prefixctl*) #1

declare dso_local i32 @nd6_prelist_add(%struct.nd_prefixctl*, i32*, %struct.nd_prefix**) #1

declare dso_local i32 @in6_tmpifadd(%struct.in6_ifaddr*, i32, i32) #1

declare dso_local i32 @nd6_prefix_rele(%struct.nd_prefix*) #1

declare dso_local i32 @pfxlist_onlink_check(...) #1

declare dso_local %struct.TYPE_14__* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @memset(%struct.in6_ndireq*, i32, i32) #1

declare dso_local i32 @in6_purgeaddr(%struct.TYPE_19__*) #1

declare dso_local i32 @ND6_WLOCK(...) #1

declare dso_local i32 @nd6_prefix_unlink(%struct.nd_prefix*, i32*) #1

declare dso_local i32 @ND6_WUNLOCK(...) #1

declare dso_local i32 @nd6_prefix_del(%struct.nd_prefix*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, %struct.ifnet*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
