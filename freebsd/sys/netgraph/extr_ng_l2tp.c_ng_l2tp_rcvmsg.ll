; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.ng_l2tp_config, i32 }
%struct.ng_l2tp_config = type { i32, i32, i32, i32 }
%struct.ng_mesg = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.ng_l2tp_sess_config = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.ng_l2tp_sess_config }
%struct.ng_l2tp_seq_config = type { i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_l2tp_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_l2tp_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ng_l2tp_config*, align 8
  %12 = alloca %struct.ng_l2tp_config*, align 8
  %13 = alloca %struct.ng_l2tp_sess_config*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.ng_l2tp_sess_config*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.ng_l2tp_seq_config*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.TYPE_10__* @NG_NODE_PRIVATE(i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %25 = call i32 @NGI_GET_MSG(i32 %23, %struct.ng_mesg* %24)
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %339 [
    i32 137, label %30
  ]

30:                                               ; preds = %3
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %32 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %336 [
    i32 130, label %35
    i32 134, label %120
    i32 128, label %139
    i32 132, label %168
    i32 131, label %208
    i32 138, label %208
    i32 135, label %208
    i32 133, label %241
    i32 139, label %241
    i32 136, label %241
    i32 129, label %295
  ]

35:                                               ; preds = %30
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %37 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.ng_l2tp_config*
  store %struct.ng_l2tp_config* %39, %struct.ng_l2tp_config** %11, align 8
  %40 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %41 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 16
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %10, align 4
  br label %338

48:                                               ; preds = %35
  %49 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %11, align 8
  %50 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %11, align 8
  %57 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %11, align 8
  %59 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %11, align 8
  %66 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %48
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %11, align 8
  %80 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %102, label %87

87:                                               ; preds = %78, %72
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %11, align 8
  %95 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.ng_l2tp_config, %struct.ng_l2tp_config* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %96, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %93, %78
  %103 = load i32, i32* @EBUSY, align 4
  store i32 %103, i32* %10, align 4
  br label %338

104:                                              ; preds = %93, %87, %48
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @NGI_RETADDR(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %11, align 8
  %111 = call i32 @ng_l2tp_seq_adjust(%struct.TYPE_10__* %109, %struct.ng_l2tp_config* %110)
  store i32 %111, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %338

114:                                              ; preds = %104
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %11, align 8
  %118 = bitcast %struct.ng_l2tp_config* %116 to i8*
  %119 = bitcast %struct.ng_l2tp_config* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 16, i1 false)
  br label %338

120:                                              ; preds = %30
  %121 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %122 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %123 = load i32, i32* @M_NOWAIT, align 4
  %124 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %121, %struct.ng_mesg* %122, i32 16, i32 %123)
  %125 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %126 = icmp eq %struct.ng_mesg* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @ENOMEM, align 4
  store i32 %128, i32* %10, align 4
  br label %338

129:                                              ; preds = %120
  %130 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %131 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = bitcast i32* %132 to %struct.ng_l2tp_config*
  store %struct.ng_l2tp_config* %133, %struct.ng_l2tp_config** %12, align 8
  %134 = load %struct.ng_l2tp_config*, %struct.ng_l2tp_config** %12, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = bitcast %struct.ng_l2tp_config* %134 to i8*
  %138 = bitcast %struct.ng_l2tp_config* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 16, i1 false)
  br label %338

139:                                              ; preds = %30
  %140 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %141 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = bitcast i32* %142 to %struct.ng_l2tp_sess_config*
  store %struct.ng_l2tp_sess_config* %143, %struct.ng_l2tp_sess_config** %13, align 8
  %144 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %145 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = icmp ne i64 %148, 4
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %10, align 4
  br label %338

152:                                              ; preds = %139
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %154 = load %struct.ng_l2tp_sess_config*, %struct.ng_l2tp_sess_config** %13, align 8
  %155 = getelementptr inbounds %struct.ng_l2tp_sess_config, %struct.ng_l2tp_sess_config* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.TYPE_11__* @ng_l2tp_find_session(%struct.TYPE_10__* %153, i32 %156)
  store %struct.TYPE_11__* %157, %struct.TYPE_11__** %14, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %159 = icmp eq %struct.TYPE_11__* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* @ENOENT, align 4
  store i32 %161, i32* %10, align 4
  br label %338

162:                                              ; preds = %152
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load %struct.ng_l2tp_sess_config*, %struct.ng_l2tp_sess_config** %13, align 8
  %166 = bitcast %struct.ng_l2tp_sess_config* %164 to i8*
  %167 = bitcast %struct.ng_l2tp_sess_config* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 4, i1 false)
  br label %338

168:                                              ; preds = %30
  %169 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %170 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = icmp ne i64 %173, 4
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i32, i32* @EINVAL, align 4
  store i32 %176, i32* %10, align 4
  br label %338

177:                                              ; preds = %168
  %178 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %179 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @memcpy(i32* %16, i32* %180, i32 2)
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %183 = load i32, i32* %16, align 4
  %184 = call %struct.TYPE_11__* @ng_l2tp_find_session(%struct.TYPE_10__* %182, i32 %183)
  store %struct.TYPE_11__* %184, %struct.TYPE_11__** %17, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %186 = icmp eq %struct.TYPE_11__* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = load i32, i32* @ENOENT, align 4
  store i32 %188, i32* %10, align 4
  br label %338

189:                                              ; preds = %177
  %190 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %191 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %192 = load i32, i32* @M_NOWAIT, align 4
  %193 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %190, %struct.ng_mesg* %191, i32 4, i32 %192)
  %194 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %195 = icmp eq %struct.ng_mesg* %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = load i32, i32* @ENOMEM, align 4
  store i32 %197, i32* %10, align 4
  br label %338

198:                                              ; preds = %189
  %199 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %200 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = bitcast i32* %201 to %struct.ng_l2tp_sess_config*
  store %struct.ng_l2tp_sess_config* %202, %struct.ng_l2tp_sess_config** %15, align 8
  %203 = load %struct.ng_l2tp_sess_config*, %struct.ng_l2tp_sess_config** %15, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = bitcast %struct.ng_l2tp_sess_config* %203 to i8*
  %207 = bitcast %struct.ng_l2tp_sess_config* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %206, i8* align 4 %207, i64 4, i1 false)
  br label %338

208:                                              ; preds = %30, %30, %30
  %209 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %210 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 138
  br i1 %213, label %214, label %230

214:                                              ; preds = %208
  %215 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %216 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %217 = load i32, i32* @M_NOWAIT, align 4
  %218 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %215, %struct.ng_mesg* %216, i32 4, i32 %217)
  %219 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %220 = icmp eq %struct.ng_mesg* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = load i32, i32* @ENOMEM, align 4
  store i32 %222, i32* %10, align 4
  br label %338

223:                                              ; preds = %214
  %224 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %225 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = call i32 @memcpy(i32* %226, i32* %228, i32 4)
  br label %230

230:                                              ; preds = %223, %208
  %231 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %232 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 131
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = call i32 @memset(i32* %238, i32 0, i32 4)
  br label %240

240:                                              ; preds = %236, %230
  br label %338

241:                                              ; preds = %30, %30, %30
  %242 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %243 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = icmp ne i64 %246, 4
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = load i32, i32* @EINVAL, align 4
  store i32 %249, i32* %10, align 4
  br label %338

250:                                              ; preds = %241
  %251 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %252 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @bcopy(i32* %253, i32* %18, i32 4)
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %256 = load i32, i32* %18, align 4
  %257 = call %struct.TYPE_11__* @ng_l2tp_find_session(%struct.TYPE_10__* %255, i32 %256)
  store %struct.TYPE_11__* %257, %struct.TYPE_11__** %19, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %259 = icmp eq %struct.TYPE_11__* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %250
  %261 = load i32, i32* @ENOENT, align 4
  store i32 %261, i32* %10, align 4
  br label %338

262:                                              ; preds = %250
  %263 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %264 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 139
  br i1 %267, label %268, label %284

268:                                              ; preds = %262
  %269 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %270 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %271 = load i32, i32* @M_NOWAIT, align 4
  %272 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %269, %struct.ng_mesg* %270, i32 4, i32 %271)
  %273 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %274 = icmp eq %struct.ng_mesg* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %268
  %276 = load i32, i32* @ENOMEM, align 4
  store i32 %276, i32* %10, align 4
  br label %338

277:                                              ; preds = %268
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %281 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @bcopy(i32* %279, i32* %282, i32 4)
  br label %284

284:                                              ; preds = %277, %262
  %285 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %286 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 133
  br i1 %289, label %290, label %294

290:                                              ; preds = %284
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = call i32 @bzero(i32* %292, i32 4)
  br label %294

294:                                              ; preds = %290, %284
  br label %338

295:                                              ; preds = %30
  %296 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %297 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = bitcast i32* %298 to %struct.ng_l2tp_seq_config*
  store %struct.ng_l2tp_seq_config* %299, %struct.ng_l2tp_seq_config** %20, align 8
  %300 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %301 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = icmp ne i64 %304, 32
  br i1 %305, label %306, label %308

306:                                              ; preds = %295
  %307 = load i32, i32* @EINVAL, align 4
  store i32 %307, i32* %10, align 4
  br label %338

308:                                              ; preds = %295
  %309 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %310 = getelementptr inbounds %struct.ng_l2tp_seq_config, %struct.ng_l2tp_seq_config* %309, i32 0, i32 3
  %311 = load i8*, i8** %310, align 8
  %312 = call i8* @htons(i8* %311)
  %313 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %314 = getelementptr inbounds %struct.ng_l2tp_seq_config, %struct.ng_l2tp_seq_config* %313, i32 0, i32 3
  store i8* %312, i8** %314, align 8
  %315 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %316 = getelementptr inbounds %struct.ng_l2tp_seq_config, %struct.ng_l2tp_seq_config* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = call i8* @htons(i8* %317)
  %319 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %320 = getelementptr inbounds %struct.ng_l2tp_seq_config, %struct.ng_l2tp_seq_config* %319, i32 0, i32 2
  store i8* %318, i8** %320, align 8
  %321 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %322 = getelementptr inbounds %struct.ng_l2tp_seq_config, %struct.ng_l2tp_seq_config* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = call i8* @htons(i8* %323)
  %325 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %326 = getelementptr inbounds %struct.ng_l2tp_seq_config, %struct.ng_l2tp_seq_config* %325, i32 0, i32 1
  store i8* %324, i8** %326, align 8
  %327 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %328 = getelementptr inbounds %struct.ng_l2tp_seq_config, %struct.ng_l2tp_seq_config* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = call i8* @htons(i8* %329)
  %331 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %332 = getelementptr inbounds %struct.ng_l2tp_seq_config, %struct.ng_l2tp_seq_config* %331, i32 0, i32 0
  store i8* %330, i8** %332, align 8
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %334 = load %struct.ng_l2tp_seq_config*, %struct.ng_l2tp_seq_config** %20, align 8
  %335 = call i32 @ng_l2tp_seq_set(%struct.TYPE_10__* %333, %struct.ng_l2tp_seq_config* %334)
  store i32 %335, i32* %10, align 4
  br label %338

336:                                              ; preds = %30
  %337 = load i32, i32* @EINVAL, align 4
  store i32 %337, i32* %10, align 4
  br label %338

338:                                              ; preds = %336, %308, %306, %294, %275, %260, %248, %240, %221, %198, %196, %187, %175, %162, %160, %150, %129, %127, %114, %113, %102, %46
  br label %341

339:                                              ; preds = %3
  %340 = load i32, i32* @EINVAL, align 4
  store i32 %340, i32* %10, align 4
  br label %341

341:                                              ; preds = %339, %338
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* %4, align 4
  %344 = load i32, i32* %5, align 4
  %345 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %346 = call i32 @NG_RESPOND_MSG(i32 %342, i32 %343, i32 %344, %struct.ng_mesg* %345)
  %347 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %348 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %347)
  %349 = load i32, i32* %10, align 4
  ret i32 %349
}

declare dso_local %struct.TYPE_10__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NGI_RETADDR(i32) #1

declare dso_local i32 @ng_l2tp_seq_adjust(%struct.TYPE_10__*, %struct.ng_l2tp_config*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @ng_l2tp_find_session(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i8* @htons(i8*) #1

declare dso_local i32 @ng_l2tp_seq_set(%struct.TYPE_10__*, %struct.ng_l2tp_seq_config*) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
