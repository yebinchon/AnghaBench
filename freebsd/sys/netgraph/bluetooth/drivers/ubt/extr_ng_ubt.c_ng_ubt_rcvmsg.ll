; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ng_ubt_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ng_ubt_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubt_softc = type { i32, i32, i32, %struct.ng_bt_mbufq, %struct.ng_bt_mbufq, %struct.ng_bt_mbufq, i32* }
%struct.ng_bt_mbufq = type { i32, i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [119 x i8] c"Hook: %s\0ATask flags: %#x\0ADebug: %d\0ACMD queue: [have:%d,max:%d]\0AACL queue: [have:%d,max:%d]\0ASCO queue: [have:%d,max:%d]\00", align 1
@NG_UBT_HOOK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_ubt_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ubt_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubt_softc*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca %struct.ng_bt_mbufq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.ubt_softc* @NG_NODE_PRIVATE(i32 %14)
  store %struct.ubt_softc* %15, %struct.ubt_softc** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %237 [
    i32 139, label %23
    i32 137, label %86
  ]

23:                                               ; preds = %3
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %83 [
    i32 138, label %28
  ]

28:                                               ; preds = %23
  %29 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %31 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %29, %struct.ng_mesg* %30, i32 %31, i32 %32)
  %34 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %35 = icmp eq %struct.ng_mesg* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %11, align 4
  br label %85

38:                                               ; preds = %28
  %39 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %40 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %43 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %44 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i8*, i8** @NG_UBT_HOOK, align 8
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i8* [ %48, %47 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %49 ]
  %52 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %53 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %56 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %59 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.ng_bt_mbufq, %struct.ng_bt_mbufq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %63 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.ng_bt_mbufq, %struct.ng_bt_mbufq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %67 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.ng_bt_mbufq, %struct.ng_bt_mbufq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %71 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.ng_bt_mbufq, %struct.ng_bt_mbufq* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %75 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.ng_bt_mbufq, %struct.ng_bt_mbufq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %79 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.ng_bt_mbufq, %struct.ng_bt_mbufq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snprintf(i64 %41, i32 %42, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %54, i32 %57, i32 %61, i32 %65, i32 %69, i32 %73, i32 %77, i32 %81)
  br label %85

83:                                               ; preds = %23
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %83, %50, %36
  br label %239

86:                                               ; preds = %3
  %87 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %88 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %234 [
    i32 129, label %91
    i32 136, label %108
    i32 128, label %125
    i32 135, label %163
    i32 134, label %215
    i32 130, label %231
  ]

91:                                               ; preds = %86
  %92 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %93 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %96, 4
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @EMSGSIZE, align 4
  store i32 %99, i32* %11, align 4
  br label %236

100:                                              ; preds = %91
  %101 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %102 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %107 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %236

108:                                              ; preds = %86
  %109 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %110 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %111 = load i32, i32* @M_NOWAIT, align 4
  %112 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %109, %struct.ng_mesg* %110, i32 4, i32 %111)
  %113 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %114 = icmp eq %struct.ng_mesg* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @ENOMEM, align 4
  store i32 %116, i32* %11, align 4
  br label %236

117:                                              ; preds = %108
  %118 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %119 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %122 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  store i32 %120, i32* %124, align 4
  br label %236

125:                                              ; preds = %86
  %126 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %127 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp ne i64 %130, 8
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @EMSGSIZE, align 4
  store i32 %133, i32* %11, align 4
  br label %236

134:                                              ; preds = %125
  %135 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %136 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to %struct.TYPE_4__*
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %12, align 4
  %141 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %142 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.TYPE_4__*
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %12, align 4
  switch i32 %147, label %157 [
    i32 132, label %148
    i32 133, label %151
    i32 131, label %154
  ]

148:                                              ; preds = %134
  %149 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %150 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %149, i32 0, i32 5
  store %struct.ng_bt_mbufq* %150, %struct.ng_bt_mbufq** %10, align 8
  br label %159

151:                                              ; preds = %134
  %152 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %153 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %152, i32 0, i32 4
  store %struct.ng_bt_mbufq* %153, %struct.ng_bt_mbufq** %10, align 8
  br label %159

154:                                              ; preds = %134
  %155 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %156 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %155, i32 0, i32 3
  store %struct.ng_bt_mbufq* %156, %struct.ng_bt_mbufq** %10, align 8
  br label %159

157:                                              ; preds = %134
  %158 = load i32, i32* @EINVAL, align 4
  store i32 %158, i32* %11, align 4
  br label %240

159:                                              ; preds = %154, %151, %148
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.ng_bt_mbufq*, %struct.ng_bt_mbufq** %10, align 8
  %162 = getelementptr inbounds %struct.ng_bt_mbufq, %struct.ng_bt_mbufq* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %236

163:                                              ; preds = %86
  %164 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %165 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ne i64 %168, 8
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i32, i32* @EMSGSIZE, align 4
  store i32 %171, i32* %11, align 4
  br label %236

172:                                              ; preds = %163
  %173 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %174 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to %struct.TYPE_4__*
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  switch i32 %179, label %189 [
    i32 132, label %180
    i32 133, label %183
    i32 131, label %186
  ]

180:                                              ; preds = %172
  %181 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %182 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %181, i32 0, i32 5
  store %struct.ng_bt_mbufq* %182, %struct.ng_bt_mbufq** %10, align 8
  br label %191

183:                                              ; preds = %172
  %184 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %185 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %184, i32 0, i32 4
  store %struct.ng_bt_mbufq* %185, %struct.ng_bt_mbufq** %10, align 8
  br label %191

186:                                              ; preds = %172
  %187 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %188 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %187, i32 0, i32 3
  store %struct.ng_bt_mbufq* %188, %struct.ng_bt_mbufq** %10, align 8
  br label %191

189:                                              ; preds = %172
  %190 = load i32, i32* @EINVAL, align 4
  store i32 %190, i32* %11, align 4
  br label %240

191:                                              ; preds = %186, %183, %180
  %192 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %193 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %194 = load i32, i32* @M_NOWAIT, align 4
  %195 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %192, %struct.ng_mesg* %193, i32 8, i32 %194)
  %196 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %197 = icmp eq %struct.ng_mesg* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = load i32, i32* @ENOMEM, align 4
  store i32 %199, i32* %11, align 4
  br label %236

200:                                              ; preds = %191
  %201 = load i32, i32* %12, align 4
  %202 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %203 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to %struct.TYPE_4__*
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i32 %201, i32* %206, align 4
  %207 = load %struct.ng_bt_mbufq*, %struct.ng_bt_mbufq** %10, align 8
  %208 = getelementptr inbounds %struct.ng_bt_mbufq, %struct.ng_bt_mbufq* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %211 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to %struct.TYPE_4__*
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  store i32 %209, i32* %214, align 4
  br label %236

215:                                              ; preds = %86
  %216 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %217 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %218 = load i32, i32* @M_NOWAIT, align 4
  %219 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %216, %struct.ng_mesg* %217, i32 4, i32 %218)
  %220 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %221 = icmp eq %struct.ng_mesg* %220, null
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = load i32, i32* @ENOMEM, align 4
  store i32 %223, i32* %11, align 4
  br label %236

224:                                              ; preds = %215
  %225 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %226 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %225, i32 0, i32 2
  %227 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %228 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @bcopy(i32* %226, i64 %229, i32 4)
  br label %236

231:                                              ; preds = %86
  %232 = load %struct.ubt_softc*, %struct.ubt_softc** %7, align 8
  %233 = call i32 @UBT_STAT_RESET(%struct.ubt_softc* %232)
  br label %236

234:                                              ; preds = %86
  %235 = load i32, i32* @EINVAL, align 4
  store i32 %235, i32* %11, align 4
  br label %236

236:                                              ; preds = %234, %231, %224, %222, %200, %198, %170, %159, %132, %117, %115, %100, %98
  br label %239

237:                                              ; preds = %3
  %238 = load i32, i32* @EINVAL, align 4
  store i32 %238, i32* %11, align 4
  br label %239

239:                                              ; preds = %237, %236, %85
  br label %240

240:                                              ; preds = %239, %189, %157
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %245 = call i32 @NG_RESPOND_MSG(i32 %241, i32 %242, i32 %243, %struct.ng_mesg* %244)
  %246 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %247 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %246)
  %248 = load i32, i32* %11, align 4
  ret i32 %248
}

declare dso_local %struct.ubt_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @snprintf(i64, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i64, i32) #1

declare dso_local i32 @UBT_STAT_RESET(%struct.ubt_softc*) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
