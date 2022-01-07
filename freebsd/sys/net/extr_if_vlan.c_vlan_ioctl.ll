; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { {}*, i32, i32, i32, i32, i64, i32, i32, %struct.ifvlan* }
%struct.ifvlan = type { i32, i32, i32, i64, i64 }
%struct.ifreq = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ifaddr = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifvlantrunk = type { i32 }
%struct.vlanreq = type { i8*, i32 }
%struct.ifmediareq = type { i32, i32, %struct.vlanreq }
%struct.epoch_tracker = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PRIV_NET_SETVLANPCP = common dso_local global i32 0, align 4
@ifnet_event = common dso_local global i32 0, align 4
@IFNET_EVENT_PCP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @vlan_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.ifaddr*, align 8
  %10 = alloca %struct.ifvlan*, align 8
  %11 = alloca %struct.ifvlantrunk*, align 8
  %12 = alloca %struct.vlanreq, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifmediareq*, align 8
  %15 = alloca %struct.epoch_tracker, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.ifaddr*
  store %struct.ifaddr* %19, %struct.ifaddr** %9, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 8
  %22 = load %struct.ifvlan*, %struct.ifvlan** %21, align 8
  store %struct.ifvlan* %22, %struct.ifvlan** %10, align 8
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %276 [
    i32 133, label %24
    i32 137, label %30
    i32 136, label %42
    i32 130, label %90
    i32 129, label %92
    i32 134, label %140
    i32 138, label %173
    i32 131, label %196
    i32 140, label %206
    i32 139, label %206
    i32 135, label %217
    i32 128, label %223
    i32 132, label %254
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %278

30:                                               ; preds = %3
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32 @IF_LLADDR(%struct.ifnet* %31)
  %33 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bcopy(i32 %32, i32* %37, i32 %40)
  br label %278

42:                                               ; preds = %3
  %43 = call i32 (...) @VLAN_SLOCK()
  %44 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %45 = call %struct.ifvlantrunk* @TRUNK(%struct.ifvlan* %44)
  %46 = icmp ne %struct.ifvlantrunk* %45, null
  br i1 %46, label %47, label %86

47:                                               ; preds = %42
  %48 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %49 = call %struct.ifnet* @PARENT(%struct.ifvlan* %48)
  store %struct.ifnet* %49, %struct.ifnet** %7, align 8
  %50 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %51 = call i32 @if_ref(%struct.ifnet* %50)
  %52 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.ifnet*, i32, i64)**
  %55 = load i32 (%struct.ifnet*, i32, i64)*, i32 (%struct.ifnet*, i32, i64)** %54, align 8
  %56 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 %55(%struct.ifnet* %56, i32 136, i64 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %60 = call i32 @if_rele(%struct.ifnet* %59)
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %47
  %64 = load i64, i64* %6, align 8
  %65 = inttoptr i64 %64 to %struct.ifmediareq*
  store %struct.ifmediareq* %65, %struct.ifmediareq** %14, align 8
  %66 = load %struct.ifmediareq*, %struct.ifmediareq** %14, align 8
  %67 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 1
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.ifmediareq*, %struct.ifmediareq** %14, align 8
  %72 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.ifmediareq*, %struct.ifmediareq** %14, align 8
  %77 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.ifmediareq*, %struct.ifmediareq** %14, align 8
  %79 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %78, i32 0, i32 2
  %80 = load %struct.ifmediareq*, %struct.ifmediareq** %14, align 8
  %81 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @copyout(%struct.vlanreq* %79, i32 %82, i32 4)
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %75, %70, %63
  br label %85

85:                                               ; preds = %84, %47
  br label %88

86:                                               ; preds = %42
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = call i32 (...) @VLAN_SUNLOCK()
  br label %278

90:                                               ; preds = %3
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %13, align 4
  br label %278

92:                                               ; preds = %3
  %93 = call i32 (...) @VLAN_SLOCK()
  %94 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %95 = call %struct.ifvlantrunk* @TRUNK(%struct.ifvlan* %94)
  store %struct.ifvlantrunk* %95, %struct.ifvlantrunk** %11, align 8
  %96 = load %struct.ifvlantrunk*, %struct.ifvlantrunk** %11, align 8
  %97 = icmp ne %struct.ifvlantrunk* %96, null
  br i1 %97, label %98, label %136

98:                                               ; preds = %92
  %99 = load %struct.ifvlantrunk*, %struct.ifvlantrunk** %11, align 8
  %100 = call i32 @TRUNK_WLOCK(%struct.ifvlantrunk* %99)
  %101 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %102 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %105 = call %struct.ifnet* @PARENT(%struct.ifvlan* %104)
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %109 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = icmp sgt i64 %103, %111
  br i1 %112, label %125, label %113

113:                                              ; preds = %98
  %114 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %115 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %118 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %121 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = icmp slt i64 %116, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %113, %98
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %13, align 4
  br label %133

127:                                              ; preds = %113
  %128 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %129 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %132 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %131, i32 0, i32 5
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %125
  %134 = load %struct.ifvlantrunk*, %struct.ifvlantrunk** %11, align 8
  %135 = call i32 @TRUNK_WUNLOCK(%struct.ifvlantrunk* %134)
  br label %138

136:                                              ; preds = %92
  %137 = load i32, i32* @EINVAL, align 4
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %136, %133
  %139 = call i32 (...) @VLAN_SUNLOCK()
  br label %278

140:                                              ; preds = %3
  %141 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %142 = call i32 @ifr_data_get_ptr(%struct.ifreq* %141)
  %143 = call i32 @copyin(i32 %142, %struct.vlanreq* %12, i32 16)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %278

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.vlanreq, %struct.vlanreq* %12, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %156 = call i32 @vlan_unconfig(%struct.ifnet* %155)
  br label %278

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.vlanreq, %struct.vlanreq* %12, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call %struct.ifnet* @ifunit_ref(i8* %159)
  store %struct.ifnet* %160, %struct.ifnet** %7, align 8
  %161 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %162 = icmp eq %struct.ifnet* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* @ENOENT, align 4
  store i32 %164, i32* %13, align 4
  br label %278

165:                                              ; preds = %157
  %166 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %167 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %168 = getelementptr inbounds %struct.vlanreq, %struct.vlanreq* %12, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @vlan_config(%struct.ifvlan* %166, %struct.ifnet* %167, i32 %169)
  store i32 %170, i32* %13, align 4
  %171 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %172 = call i32 @if_rele(%struct.ifnet* %171)
  br label %278

173:                                              ; preds = %3
  %174 = call i32 @bzero(%struct.vlanreq* %12, i32 16)
  %175 = call i32 (...) @VLAN_SLOCK()
  %176 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %177 = call %struct.ifvlantrunk* @TRUNK(%struct.ifvlan* %176)
  %178 = icmp ne %struct.ifvlantrunk* %177, null
  br i1 %178, label %179, label %191

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.vlanreq, %struct.vlanreq* %12, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %183 = call %struct.ifnet* @PARENT(%struct.ifvlan* %182)
  %184 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @strlcpy(i8* %181, i32 %185, i32 8)
  %187 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %188 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.vlanreq, %struct.vlanreq* %12, i32 0, i32 1
  store i32 %189, i32* %190, align 8
  br label %191

191:                                              ; preds = %179, %173
  %192 = call i32 (...) @VLAN_SUNLOCK()
  %193 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %194 = call i32 @ifr_data_get_ptr(%struct.ifreq* %193)
  %195 = call i32 @copyout(%struct.vlanreq* %12, i32 %194, i32 16)
  store i32 %195, i32* %13, align 4
  br label %278

196:                                              ; preds = %3
  %197 = call i32 (...) @VLAN_XLOCK()
  %198 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %199 = call %struct.ifvlantrunk* @TRUNK(%struct.ifvlan* %198)
  %200 = icmp ne %struct.ifvlantrunk* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %203 = call i32 @vlan_setflags(%struct.ifnet* %202, i32 1)
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %201, %196
  %205 = call i32 (...) @VLAN_XUNLOCK()
  br label %278

206:                                              ; preds = %3, %3
  %207 = call i32 (...) @VLAN_XLOCK()
  %208 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %209 = call %struct.ifvlantrunk* @TRUNK(%struct.ifvlan* %208)
  store %struct.ifvlantrunk* %209, %struct.ifvlantrunk** %11, align 8
  %210 = load %struct.ifvlantrunk*, %struct.ifvlantrunk** %11, align 8
  %211 = icmp ne %struct.ifvlantrunk* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %214 = call i32 @vlan_setmulti(%struct.ifnet* %213)
  store i32 %214, i32* %13, align 4
  br label %215

215:                                              ; preds = %212, %206
  %216 = call i32 (...) @VLAN_XUNLOCK()
  br label %278

217:                                              ; preds = %3
  %218 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %219 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %222 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %278

223:                                              ; preds = %3
  %224 = load i32, i32* @curthread, align 4
  %225 = load i32, i32* @PRIV_NET_SETVLANPCP, align 4
  %226 = call i32 @priv_check(i32 %224, i32 %225)
  store i32 %226, i32* %13, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %278

230:                                              ; preds = %223
  %231 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %232 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp sgt i32 %233, 7
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = load i32, i32* @EINVAL, align 4
  store i32 %236, i32* %13, align 4
  br label %278

237:                                              ; preds = %230
  %238 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %239 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %242 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %244 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %247 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  %248 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %249 = call i32 @vlan_tag_recalculate(%struct.ifvlan* %248)
  %250 = load i32, i32* @ifnet_event, align 4
  %251 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %252 = load i32, i32* @IFNET_EVENT_PCP, align 4
  %253 = call i32 @EVENTHANDLER_INVOKE(i32 %250, %struct.ifnet* %251, i32 %252)
  br label %278

254:                                              ; preds = %3
  %255 = call i32 (...) @VLAN_SLOCK()
  %256 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %257 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %260 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 4
  %261 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %262 = call %struct.ifvlantrunk* @TRUNK(%struct.ifvlan* %261)
  store %struct.ifvlantrunk* %262, %struct.ifvlantrunk** %11, align 8
  %263 = load %struct.ifvlantrunk*, %struct.ifvlantrunk** %11, align 8
  %264 = icmp ne %struct.ifvlantrunk* %263, null
  br i1 %264, label %265, label %274

265:                                              ; preds = %254
  %266 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %15, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @NET_EPOCH_ENTER(i32 %267)
  %269 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %270 = call i32 @vlan_capabilities(%struct.ifvlan* %269)
  %271 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %15, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @NET_EPOCH_EXIT(i32 %272)
  br label %274

274:                                              ; preds = %265, %254
  %275 = call i32 (...) @VLAN_SUNLOCK()
  br label %278

276:                                              ; preds = %3
  %277 = load i32, i32* @EINVAL, align 4
  store i32 %277, i32* %13, align 4
  br label %278

278:                                              ; preds = %276, %274, %237, %235, %229, %217, %215, %204, %191, %165, %163, %154, %146, %138, %90, %88, %30, %24
  %279 = load i32, i32* %13, align 4
  ret i32 %279
}

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @VLAN_SLOCK(...) #1

declare dso_local %struct.ifvlantrunk* @TRUNK(%struct.ifvlan*) #1

declare dso_local %struct.ifnet* @PARENT(%struct.ifvlan*) #1

declare dso_local i32 @if_ref(%struct.ifnet*) #1

declare dso_local i32 @if_rele(%struct.ifnet*) #1

declare dso_local i32 @copyout(%struct.vlanreq*, i32, i32) #1

declare dso_local i32 @VLAN_SUNLOCK(...) #1

declare dso_local i32 @TRUNK_WLOCK(%struct.ifvlantrunk*) #1

declare dso_local i32 @TRUNK_WUNLOCK(%struct.ifvlantrunk*) #1

declare dso_local i32 @copyin(i32, %struct.vlanreq*, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @vlan_unconfig(%struct.ifnet*) #1

declare dso_local %struct.ifnet* @ifunit_ref(i8*) #1

declare dso_local i32 @vlan_config(%struct.ifvlan*, %struct.ifnet*, i32) #1

declare dso_local i32 @bzero(%struct.vlanreq*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @VLAN_XLOCK(...) #1

declare dso_local i32 @vlan_setflags(%struct.ifnet*, i32) #1

declare dso_local i32 @VLAN_XUNLOCK(...) #1

declare dso_local i32 @vlan_setmulti(%struct.ifnet*) #1

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local i32 @vlan_tag_recalculate(%struct.ifvlan*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, %struct.ifnet*, i32) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @vlan_capabilities(%struct.ifvlan*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
