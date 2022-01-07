; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_ng_netflow.c_ng_netflow_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_ng_netflow.c_ng_netflow_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.ng_netflow_iface*, i32, i32 }
%struct.ng_netflow_iface = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.ng_netflow_info = type { i32 }
%struct.ng_netflow_ifinfo = type { i32 }
%struct.ng_netflow_setdlt = type { i64, i32 }
%struct.ng_netflow_setifindex = type { i64, i32 }
%struct.ng_netflow_settimeouts = type { i32, i32 }
%struct.ng_netflow_setconfig = type { i64, i32 }
%struct.ng_netflow_settemplate = type { i32, i32 }
%struct.ng_netflow_setmtu = type { i32 }
%struct.ng_netflow_v9info = type { i32 }
%struct.ngnf_show_header = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NG_NETFLOW_MAXIFACES = common dso_local global i64 0, align 8
@MIN_MTU = common dso_local global i32 0, align 4
@MAX_MTU = common dso_local global i32 0, align 4
@NGRESP_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_netflow_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_netflow_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_netflow_info*, align 8
  %12 = alloca %struct.ng_netflow_ifinfo*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ng_netflow_setdlt*, align 8
  %15 = alloca %struct.ng_netflow_iface*, align 8
  %16 = alloca %struct.ng_netflow_setifindex*, align 8
  %17 = alloca %struct.ng_netflow_iface*, align 8
  %18 = alloca %struct.ng_netflow_settimeouts*, align 8
  %19 = alloca %struct.ng_netflow_setconfig*, align 8
  %20 = alloca %struct.ng_netflow_settemplate*, align 8
  %21 = alloca %struct.ng_netflow_setmtu*, align 8
  %22 = alloca %struct.ng_netflow_v9info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.TYPE_10__* @NG_NODE_PRIVATE(i32 %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %27 = call i32 @NGI_GET_MSG(i32 %25, %struct.ng_mesg* %26)
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %29 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %378 [
    i32 138, label %32
  ]

32:                                               ; preds = %3
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %34 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %374 [
    i32 136, label %37
    i32 137, label %49
    i32 134, label %104
    i32 133, label %158
    i32 130, label %203
    i32 135, label %228
    i32 131, label %264
    i32 132, label %289
    i32 129, label %324
    i32 128, label %362
  ]

37:                                               ; preds = %32
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %39 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %38, %struct.ng_mesg* %39, i32 4, i32 %40)
  %42 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %43 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ng_netflow_info*
  store %struct.ng_netflow_info* %45, %struct.ng_netflow_info** %11, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %11, align 8
  %48 = call i32 @ng_netflow_copyinfo(%struct.TYPE_10__* %46, %struct.ng_netflow_info* %47)
  br label %377

49:                                               ; preds = %32
  %50 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %51 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 8
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @ERROUT(i32 %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %61 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64* %63, i64** %13, align 8
  %64 = load i64*, i64** %13, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NG_NETFLOW_MAXIFACES, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EINVAL, align 4
  %70 = call i32 @ERROUT(i32 %69)
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %73, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %74, i64 %76
  %78 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @EINVAL, align 4
  %83 = call i32 @ERROUT(i32 %82)
  br label %84

84:                                               ; preds = %81, %71
  %85 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %86 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %87 = load i32, i32* @M_NOWAIT, align 4
  %88 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %85, %struct.ng_mesg* %86, i32 4, i32 %87)
  %89 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %90 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.ng_netflow_ifinfo*
  store %struct.ng_netflow_ifinfo* %92, %struct.ng_netflow_ifinfo** %12, align 8
  %93 = load %struct.ng_netflow_ifinfo*, %struct.ng_netflow_ifinfo** %12, align 8
  %94 = bitcast %struct.ng_netflow_ifinfo* %93 to i8*
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %96, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %97, i64 %99
  %101 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %100, i32 0, i32 0
  %102 = bitcast %struct.TYPE_8__* %101 to i8*
  %103 = call i32 @memcpy(i8* %94, i8* %102, i32 12)
  br label %377

104:                                              ; preds = %32
  %105 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %106 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ne i64 %109, 16
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* @EINVAL, align 4
  %113 = call i32 @ERROUT(i32 %112)
  br label %114

114:                                              ; preds = %111, %104
  %115 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %116 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.ng_netflow_setdlt*
  store %struct.ng_netflow_setdlt* %118, %struct.ng_netflow_setdlt** %14, align 8
  %119 = load %struct.ng_netflow_setdlt*, %struct.ng_netflow_setdlt** %14, align 8
  %120 = getelementptr inbounds %struct.ng_netflow_setdlt, %struct.ng_netflow_setdlt* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @NG_NETFLOW_MAXIFACES, align 8
  %123 = icmp uge i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i32, i32* @EINVAL, align 4
  %126 = call i32 @ERROUT(i32 %125)
  br label %127

127:                                              ; preds = %124, %114
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %129, align 8
  %131 = load %struct.ng_netflow_setdlt*, %struct.ng_netflow_setdlt** %14, align 8
  %132 = getelementptr inbounds %struct.ng_netflow_setdlt, %struct.ng_netflow_setdlt* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %130, i64 %133
  store %struct.ng_netflow_iface* %134, %struct.ng_netflow_iface** %15, align 8
  %135 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %15, align 8
  %136 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load i32, i32* @EINVAL, align 4
  %141 = call i32 @ERROUT(i32 %140)
  br label %142

142:                                              ; preds = %139, %127
  %143 = load %struct.ng_netflow_setdlt*, %struct.ng_netflow_setdlt** %14, align 8
  %144 = getelementptr inbounds %struct.ng_netflow_setdlt, %struct.ng_netflow_setdlt* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  switch i32 %145, label %154 [
    i32 140, label %146
    i32 139, label %150
  ]

146:                                              ; preds = %142
  %147 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %15, align 8
  %148 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 140, i32* %149, align 8
  br label %157

150:                                              ; preds = %142
  %151 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %15, align 8
  %152 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i32 139, i32* %153, align 8
  br label %157

154:                                              ; preds = %142
  %155 = load i32, i32* @EINVAL, align 4
  %156 = call i32 @ERROUT(i32 %155)
  br label %157

157:                                              ; preds = %154, %150, %146
  br label %377

158:                                              ; preds = %32
  %159 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %160 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp ne i64 %163, 16
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* @EINVAL, align 4
  %167 = call i32 @ERROUT(i32 %166)
  br label %168

168:                                              ; preds = %165, %158
  %169 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %170 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to %struct.ng_netflow_setifindex*
  store %struct.ng_netflow_setifindex* %172, %struct.ng_netflow_setifindex** %16, align 8
  %173 = load %struct.ng_netflow_setifindex*, %struct.ng_netflow_setifindex** %16, align 8
  %174 = getelementptr inbounds %struct.ng_netflow_setifindex, %struct.ng_netflow_setifindex* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @NG_NETFLOW_MAXIFACES, align 8
  %177 = icmp uge i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %168
  %179 = load i32, i32* @EINVAL, align 4
  %180 = call i32 @ERROUT(i32 %179)
  br label %181

181:                                              ; preds = %178, %168
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  %184 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %183, align 8
  %185 = load %struct.ng_netflow_setifindex*, %struct.ng_netflow_setifindex** %16, align 8
  %186 = getelementptr inbounds %struct.ng_netflow_setifindex, %struct.ng_netflow_setifindex* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %184, i64 %187
  store %struct.ng_netflow_iface* %188, %struct.ng_netflow_iface** %17, align 8
  %189 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %17, align 8
  %190 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %181
  %194 = load i32, i32* @EINVAL, align 4
  %195 = call i32 @ERROUT(i32 %194)
  br label %196

196:                                              ; preds = %193, %181
  %197 = load %struct.ng_netflow_setifindex*, %struct.ng_netflow_setifindex** %16, align 8
  %198 = getelementptr inbounds %struct.ng_netflow_setifindex, %struct.ng_netflow_setifindex* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %17, align 8
  %201 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 8
  br label %377

203:                                              ; preds = %32
  %204 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %205 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp ne i64 %208, 8
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load i32, i32* @EINVAL, align 4
  %212 = call i32 @ERROUT(i32 %211)
  br label %213

213:                                              ; preds = %210, %203
  %214 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %215 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to %struct.ng_netflow_settimeouts*
  store %struct.ng_netflow_settimeouts* %217, %struct.ng_netflow_settimeouts** %18, align 8
  %218 = load %struct.ng_netflow_settimeouts*, %struct.ng_netflow_settimeouts** %18, align 8
  %219 = getelementptr inbounds %struct.ng_netflow_settimeouts, %struct.ng_netflow_settimeouts* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  %223 = load %struct.ng_netflow_settimeouts*, %struct.ng_netflow_settimeouts** %18, align 8
  %224 = getelementptr inbounds %struct.ng_netflow_settimeouts, %struct.ng_netflow_settimeouts* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  br label %377

228:                                              ; preds = %32
  %229 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %230 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = icmp ne i64 %233, 16
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load i32, i32* @EINVAL, align 4
  %237 = call i32 @ERROUT(i32 %236)
  br label %238

238:                                              ; preds = %235, %228
  %239 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %240 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to %struct.ng_netflow_setconfig*
  store %struct.ng_netflow_setconfig* %242, %struct.ng_netflow_setconfig** %19, align 8
  %243 = load %struct.ng_netflow_setconfig*, %struct.ng_netflow_setconfig** %19, align 8
  %244 = getelementptr inbounds %struct.ng_netflow_setconfig, %struct.ng_netflow_setconfig* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @NG_NETFLOW_MAXIFACES, align 8
  %247 = icmp uge i64 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %238
  %249 = load i32, i32* @EINVAL, align 4
  %250 = call i32 @ERROUT(i32 %249)
  br label %251

251:                                              ; preds = %248, %238
  %252 = load %struct.ng_netflow_setconfig*, %struct.ng_netflow_setconfig** %19, align 8
  %253 = getelementptr inbounds %struct.ng_netflow_setconfig, %struct.ng_netflow_setconfig* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 3
  %257 = load %struct.ng_netflow_iface*, %struct.ng_netflow_iface** %256, align 8
  %258 = load %struct.ng_netflow_setconfig*, %struct.ng_netflow_setconfig** %19, align 8
  %259 = getelementptr inbounds %struct.ng_netflow_setconfig, %struct.ng_netflow_setconfig* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %257, i64 %260
  %262 = getelementptr inbounds %struct.ng_netflow_iface, %struct.ng_netflow_iface* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  store i32 %254, i32* %263, align 4
  br label %377

264:                                              ; preds = %32
  %265 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %266 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = icmp ne i64 %269, 8
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = load i32, i32* @EINVAL, align 4
  %273 = call i32 @ERROUT(i32 %272)
  br label %274

274:                                              ; preds = %271, %264
  %275 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %276 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = inttoptr i64 %277 to %struct.ng_netflow_settemplate*
  store %struct.ng_netflow_settemplate* %278, %struct.ng_netflow_settemplate** %20, align 8
  %279 = load %struct.ng_netflow_settemplate*, %struct.ng_netflow_settemplate** %20, align 8
  %280 = getelementptr inbounds %struct.ng_netflow_settemplate, %struct.ng_netflow_settemplate* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 8
  %284 = load %struct.ng_netflow_settemplate*, %struct.ng_netflow_settemplate** %20, align 8
  %285 = getelementptr inbounds %struct.ng_netflow_settemplate, %struct.ng_netflow_settemplate* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  br label %377

289:                                              ; preds = %32
  %290 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %291 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = icmp ne i64 %294, 4
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load i32, i32* @EINVAL, align 4
  %298 = call i32 @ERROUT(i32 %297)
  br label %299

299:                                              ; preds = %296, %289
  %300 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %301 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = inttoptr i64 %302 to %struct.ng_netflow_setmtu*
  store %struct.ng_netflow_setmtu* %303, %struct.ng_netflow_setmtu** %21, align 8
  %304 = load %struct.ng_netflow_setmtu*, %struct.ng_netflow_setmtu** %21, align 8
  %305 = getelementptr inbounds %struct.ng_netflow_setmtu, %struct.ng_netflow_setmtu* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @MIN_MTU, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %315, label %309

309:                                              ; preds = %299
  %310 = load %struct.ng_netflow_setmtu*, %struct.ng_netflow_setmtu** %21, align 8
  %311 = getelementptr inbounds %struct.ng_netflow_setmtu, %struct.ng_netflow_setmtu* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @MAX_MTU, align 4
  %314 = icmp sgt i32 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %309, %299
  %316 = load i32, i32* @EINVAL, align 4
  %317 = call i32 @ERROUT(i32 %316)
  br label %318

318:                                              ; preds = %315, %309
  %319 = load %struct.ng_netflow_setmtu*, %struct.ng_netflow_setmtu** %21, align 8
  %320 = getelementptr inbounds %struct.ng_netflow_setmtu, %struct.ng_netflow_setmtu* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 8
  br label %377

324:                                              ; preds = %32
  %325 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %326 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = icmp ne i64 %329, 4
  br i1 %330, label %331, label %334

331:                                              ; preds = %324
  %332 = load i32, i32* @EINVAL, align 4
  %333 = call i32 @ERROUT(i32 %332)
  br label %334

334:                                              ; preds = %331, %324
  %335 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %336 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %337 = load i32, i32* @NGRESP_SIZE, align 4
  %338 = load i32, i32* @M_NOWAIT, align 4
  %339 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %335, %struct.ng_mesg* %336, i32 %337, i32 %338)
  %340 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %341 = icmp ne %struct.ng_mesg* %340, null
  br i1 %341, label %345, label %342

342:                                              ; preds = %334
  %343 = load i32, i32* @ENOMEM, align 4
  %344 = call i32 @ERROUT(i32 %343)
  br label %345

345:                                              ; preds = %342, %334
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %347 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %348 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = inttoptr i64 %349 to %struct.ngnf_show_header*
  %351 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %352 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = inttoptr i64 %353 to %struct.ngnf_show_header*
  %355 = call i32 @ng_netflow_flow_show(%struct.TYPE_10__* %346, %struct.ngnf_show_header* %350, %struct.ngnf_show_header* %354)
  store i32 %355, i32* %9, align 4
  %356 = load i32, i32* %9, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %345
  %359 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %360 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %359)
  br label %361

361:                                              ; preds = %358, %345
  br label %377

362:                                              ; preds = %32
  %363 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %364 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %365 = load i32, i32* @M_NOWAIT, align 4
  %366 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %363, %struct.ng_mesg* %364, i32 4, i32 %365)
  %367 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %368 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = inttoptr i64 %369 to %struct.ng_netflow_v9info*
  store %struct.ng_netflow_v9info* %370, %struct.ng_netflow_v9info** %22, align 8
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %372 = load %struct.ng_netflow_v9info*, %struct.ng_netflow_v9info** %22, align 8
  %373 = call i32 @ng_netflow_copyv9info(%struct.TYPE_10__* %371, %struct.ng_netflow_v9info* %372)
  br label %377

374:                                              ; preds = %32
  %375 = load i32, i32* @EINVAL, align 4
  %376 = call i32 @ERROUT(i32 %375)
  br label %377

377:                                              ; preds = %374, %362, %361, %318, %274, %251, %213, %196, %157, %84, %37
  br label %381

378:                                              ; preds = %3
  %379 = load i32, i32* @EINVAL, align 4
  %380 = call i32 @ERROUT(i32 %379)
  br label %381

381:                                              ; preds = %378, %377
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %9, align 4
  %384 = load i32, i32* %4, align 4
  %385 = load i32, i32* %5, align 4
  %386 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %387 = call i32 @NG_RESPOND_MSG(i32 %383, i32 %384, i32 %385, %struct.ng_mesg* %386)
  %388 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %389 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %388)
  %390 = load i32, i32* %9, align 4
  ret i32 %390
}

declare dso_local %struct.TYPE_10__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @ng_netflow_copyinfo(%struct.TYPE_10__*, %struct.ng_netflow_info*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ng_netflow_flow_show(%struct.TYPE_10__*, %struct.ngnf_show_header*, %struct.ngnf_show_header*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

declare dso_local i32 @ng_netflow_copyv9info(%struct.TYPE_10__*, %struct.ng_netflow_v9info*) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
