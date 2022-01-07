; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_set_user_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_set_user_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, i8*, i32, i8* }
%struct.TYPE_12__ = type { i32, i32, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i8*, i32, i8* }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.ifvxlanparam = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@VXLAN_PARAM_WITH_LOCAL_ADDR4 = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_REMOTE_ADDR4 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_LOCAL_ADDR6 = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_REMOTE_ADDR6 = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_VNI = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@VXLAN_PARAM_WITH_LOCAL_PORT = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_REMOTE_PORT = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_PORT_RANGE = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_MULTICAST_IF = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_FTABLE_TIMEOUT = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_FTABLE_MAX = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_TTL = common dso_local global i32 0, align 4
@VXLAN_PARAM_WITH_LEARN = common dso_local global i32 0, align 4
@VXLAN_FLAG_LEARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, %struct.ifvxlanparam*)* @vxlan_set_user_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_set_user_config(%struct.vxlan_softc* %0, %struct.ifvxlanparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxlan_softc*, align 8
  %5 = alloca %struct.ifvxlanparam*, align 8
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %4, align 8
  store %struct.ifvxlanparam* %1, %struct.ifvxlanparam** %5, align 8
  %6 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %7 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VXLAN_PARAM_WITH_LOCAL_ADDR4, align 4
  %10 = load i32, i32* @VXLAN_PARAM_WITH_REMOTE_ADDR4, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %15, i32* %3, align 4
  br label %309

16:                                               ; preds = %2
  %17 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %18 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VXLAN_PARAM_WITH_LOCAL_ADDR6, align 4
  %21 = load i32, i32* @VXLAN_PARAM_WITH_REMOTE_ADDR6, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %26, i32* %3, align 4
  br label %309

27:                                               ; preds = %16
  %28 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %29 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VXLAN_PARAM_WITH_VNI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %36 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @vxlan_check_vni(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %42 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %45 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %49 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VXLAN_PARAM_WITH_LOCAL_ADDR4, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %56 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i32 4, i32* %58, align 8
  %59 = load i8*, i8** @AF_INET, align 8
  %60 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %61 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %60, i32 0, i32 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  store i8* %59, i8** %63, align 8
  %64 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %65 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %64, i32 0, i32 11
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %70 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  store i32 %68, i32* %72, align 8
  br label %100

73:                                               ; preds = %47
  %74 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %75 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @VXLAN_PARAM_WITH_LOCAL_ADDR6, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %73
  %81 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %82 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  %85 = load i8*, i8** @AF_INET6, align 8
  %86 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %87 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i8* %85, i8** %89, align 8
  %90 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %91 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %90, i32 0, i32 11
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %96 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %80, %73
  br label %100

100:                                              ; preds = %99, %54
  %101 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %102 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @VXLAN_PARAM_WITH_REMOTE_ADDR4, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %100
  %108 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %109 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 4, i32* %111, align 8
  %112 = load i8*, i8** @AF_INET, align 8
  %113 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %114 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  store i8* %112, i8** %116, align 8
  %117 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %118 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %117, i32 0, i32 10
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %123 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store i32 %121, i32* %125, align 8
  br label %153

126:                                              ; preds = %100
  %127 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %128 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @VXLAN_PARAM_WITH_REMOTE_ADDR6, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %126
  %134 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %135 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  store i32 4, i32* %137, align 8
  %138 = load i8*, i8** @AF_INET6, align 8
  %139 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %140 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  store i8* %138, i8** %142, align 8
  %143 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %144 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %149 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %133, %126
  br label %153

153:                                              ; preds = %152, %107
  %154 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %155 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @VXLAN_PARAM_WITH_LOCAL_PORT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %162 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @htons(i32 %163)
  %165 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %166 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  store i8* %164, i8** %168, align 8
  br label %169

169:                                              ; preds = %160, %153
  %170 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %171 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @VXLAN_PARAM_WITH_REMOTE_PORT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %178 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = call i8* @htons(i32 %179)
  %181 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %182 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  store i8* %180, i8** %184, align 8
  br label %185

185:                                              ; preds = %176, %169
  %186 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %187 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @VXLAN_PARAM_WITH_PORT_RANGE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %185
  %193 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %194 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %197 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp sle i64 %195, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %192
  %201 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %202 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %205 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  %206 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %207 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %210 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %200, %192
  br label %212

212:                                              ; preds = %211, %185
  %213 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %214 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @VXLAN_PARAM_WITH_MULTICAST_IF, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %212
  %220 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %221 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %224 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @IFNAMSIZ, align 4
  %227 = call i32 @strlcpy(i32 %222, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %219, %212
  %229 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %230 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @VXLAN_PARAM_WITH_FTABLE_TIMEOUT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %228
  %236 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %237 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = call i64 @vxlan_check_ftable_timeout(i32 %238)
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %235
  %242 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %243 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %246 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %241, %235
  br label %248

248:                                              ; preds = %247, %228
  %249 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %250 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @VXLAN_PARAM_WITH_FTABLE_MAX, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %248
  %256 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %257 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = call i64 @vxlan_check_ftable_max(i32 %258)
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %263 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %266 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  br label %267

267:                                              ; preds = %261, %255
  br label %268

268:                                              ; preds = %267, %248
  %269 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %270 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @VXLAN_PARAM_WITH_TTL, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %268
  %276 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %277 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @vxlan_check_ttl(i32 %278)
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %283 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %286 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %281, %275
  br label %288

288:                                              ; preds = %287, %268
  %289 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %290 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @VXLAN_PARAM_WITH_LEARN, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %308

295:                                              ; preds = %288
  %296 = load %struct.ifvxlanparam*, %struct.ifvxlanparam** %5, align 8
  %297 = getelementptr inbounds %struct.ifvxlanparam, %struct.ifvxlanparam* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %295
  %301 = load i32, i32* @VXLAN_FLAG_LEARN, align 4
  %302 = xor i32 %301, -1
  %303 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %304 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %300, %295
  br label %308

308:                                              ; preds = %307, %288
  store i32 0, i32* %3, align 4
  br label %309

309:                                              ; preds = %308, %25, %14
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i64 @vxlan_check_vni(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @vxlan_check_ftable_timeout(i32) #1

declare dso_local i64 @vxlan_check_ftable_max(i32) #1

declare dso_local i64 @vxlan_check_ttl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
