; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pipe.c_ngp_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pipe.c_ngp_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ng_mesg = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ng_pipe_stats = type { %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.ng_pipe_run = type { %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.ng_pipe_cfg = type { i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_14__ }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_OHSIZE = common dso_local global i32 0, align 4
@NGM_LINK_IS_DOWN = common dso_local global i32 0, align 4
@NGM_LINK_IS_UP = common dso_local global i32 0, align 4
@NGM_FLOW_COOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ngp_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngp_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_pipe_stats*, align 8
  %12 = alloca %struct.ng_pipe_run*, align 8
  %13 = alloca %struct.ng_pipe_cfg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.TYPE_12__* @NG_NODE_PRIVATE(i32 %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %22 = call i32 @NGI_GET_MSG(i32 %20, %struct.ng_mesg* %21)
  %23 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %24 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %429 [
    i32 133, label %27
  ]

27:                                               ; preds = %3
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %29 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %426 [
    i32 129, label %32
    i32 134, label %32
    i32 132, label %32
    i32 130, label %80
    i32 131, label %106
    i32 128, label %173
  ]

32:                                               ; preds = %27, %27, %27
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %34 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 134
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %40 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %41 = load i32, i32* @M_NOWAIT, align 4
  %42 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %39, %struct.ng_mesg* %40, i32 8, i32 %41)
  %43 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %44 = icmp eq %struct.ng_mesg* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %14, align 4
  br label %428

47:                                               ; preds = %38
  %48 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %49 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.ng_pipe_stats*
  store %struct.ng_pipe_stats* %51, %struct.ng_pipe_stats** %11, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load %struct.ng_pipe_stats*, %struct.ng_pipe_stats** %11, align 8
  %56 = getelementptr inbounds %struct.ng_pipe_stats, %struct.ng_pipe_stats* %55, i32 0, i32 1
  %57 = call i32 @bcopy(%struct.TYPE_13__* %54, %struct.TYPE_14__* %56, i32 4)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load %struct.ng_pipe_stats*, %struct.ng_pipe_stats** %11, align 8
  %62 = getelementptr inbounds %struct.ng_pipe_stats, %struct.ng_pipe_stats* %61, i32 0, i32 0
  %63 = call i32 @bcopy(%struct.TYPE_13__* %60, %struct.TYPE_14__* %62, i32 4)
  br label %64

64:                                               ; preds = %47, %32
  %65 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %66 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 129
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = call i32 @bzero(%struct.TYPE_13__* %73, i32 8)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = call i32 @bzero(%struct.TYPE_13__* %77, i32 8)
  br label %79

79:                                               ; preds = %70, %64
  br label %428

80:                                               ; preds = %27
  %81 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %82 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %83 = load i32, i32* @M_NOWAIT, align 4
  %84 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %81, %struct.ng_mesg* %82, i32 8, i32 %83)
  %85 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %86 = icmp eq %struct.ng_mesg* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %14, align 4
  br label %428

89:                                               ; preds = %80
  %90 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %91 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.ng_pipe_run*
  store %struct.ng_pipe_run* %93, %struct.ng_pipe_run** %12, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load %struct.ng_pipe_run*, %struct.ng_pipe_run** %12, align 8
  %98 = getelementptr inbounds %struct.ng_pipe_run, %struct.ng_pipe_run* %97, i32 0, i32 1
  %99 = call i32 @bcopy(%struct.TYPE_13__* %96, %struct.TYPE_14__* %98, i32 4)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load %struct.ng_pipe_run*, %struct.ng_pipe_run** %12, align 8
  %104 = getelementptr inbounds %struct.ng_pipe_run, %struct.ng_pipe_run* %103, i32 0, i32 0
  %105 = call i32 @bcopy(%struct.TYPE_13__* %102, %struct.TYPE_14__* %104, i32 4)
  br label %428

106:                                              ; preds = %27
  %107 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %108 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %109 = load i32, i32* @M_NOWAIT, align 4
  %110 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %107, %struct.ng_mesg* %108, i32 24, i32 %109)
  %111 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %112 = icmp eq %struct.ng_mesg* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @ENOMEM, align 4
  store i32 %114, i32* %14, align 4
  br label %428

115:                                              ; preds = %106
  %116 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %117 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to %struct.ng_pipe_cfg*
  store %struct.ng_pipe_cfg* %119, %struct.ng_pipe_cfg** %13, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %124 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %123, i32 0, i32 5
  %125 = call i32 @bcopy(%struct.TYPE_13__* %122, %struct.TYPE_14__* %124, i32 4)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %130 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %129, i32 0, i32 4
  %131 = call i32 @bcopy(%struct.TYPE_13__* %128, %struct.TYPE_14__* %130, i32 4)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %136 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %141 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %146 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %148 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %152 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %115
  %157 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %158 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %162 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %164 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  %166 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %167 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 4
  br label %172

169:                                              ; preds = %115
  %170 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %171 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %170, i32 0, i32 3
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %156
  br label %428

173:                                              ; preds = %27
  %174 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %175 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to %struct.ng_pipe_cfg*
  store %struct.ng_pipe_cfg* %177, %struct.ng_pipe_cfg** %13, align 8
  %178 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %179 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = icmp ne i64 %182, 24
  br i1 %183, label %184, label %186

184:                                              ; preds = %173
  %185 = load i32, i32* @EINVAL, align 4
  store i32 %185, i32* %14, align 4
  br label %428

186:                                              ; preds = %173
  %187 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %188 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  br label %211

194:                                              ; preds = %186
  %195 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %196 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %194
  %200 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %201 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %202, 10000000
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %206 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %204, %199, %194
  br label %211

211:                                              ; preds = %210, %191
  %212 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %213 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %227

216:                                              ; preds = %211
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  store i32 0, i32* %220, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  store i32 0, i32* %224, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  store i32 0, i32* %226, align 4
  br label %264

227:                                              ; preds = %211
  %228 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %229 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp sge i32 %230, 100
  br i1 %231, label %232, label %263

232:                                              ; preds = %227
  %233 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %234 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = icmp sle i32 %235, 1000000000
  br i1 %236, label %237, label %263

237:                                              ; preds = %232
  %238 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %239 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  store i32 %240, i32* %244, align 8
  %245 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %246 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  store i32 %247, i32* %251, align 8
  %252 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %253 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = icmp sge i32 %254, 10000000
  br i1 %255, label %256, label %259

256:                                              ; preds = %237
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  store i32 24, i32* %258, align 4
  br label %262

259:                                              ; preds = %237
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  store i32 10, i32* %261, align 4
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %232, %227
  br label %264

264:                                              ; preds = %263, %216
  %265 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %266 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  store i32 0, i32* %271, align 4
  br label %290

272:                                              ; preds = %264
  %273 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %274 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %272
  %278 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %279 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @MAX_OHSIZE, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %285 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  br label %289

289:                                              ; preds = %283, %277, %272
  br label %290

290:                                              ; preds = %289, %269
  %291 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %292 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 2
  store i32 0, i32* %297, align 8
  br label %315

298:                                              ; preds = %290
  %299 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %300 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %298
  %304 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %305 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = icmp slt i32 %306, 64
  br i1 %307, label %308, label %314

308:                                              ; preds = %303
  %309 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %310 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 8
  br label %314

314:                                              ; preds = %308, %303, %298
  br label %315

315:                                              ; preds = %314, %295
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %329, label %322

322:                                              ; preds = %315
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 1
  br label %329

329:                                              ; preds = %322, %315
  %330 = phi i1 [ true, %315 ], [ %328, %322 ]
  %331 = zext i1 %330 to i32
  store i32 %331, i32* %15, align 4
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 1
  %335 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %336 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %335, i32 0, i32 5
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %340 = call i32 @parse_cfg(%struct.TYPE_13__* %334, %struct.TYPE_14__* %336, %struct.TYPE_15__* %338, %struct.TYPE_12__* %339)
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 4
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 1
  %344 = load %struct.ng_pipe_cfg*, %struct.ng_pipe_cfg** %13, align 8
  %345 = getelementptr inbounds %struct.ng_pipe_cfg, %struct.ng_pipe_cfg* %344, i32 0, i32 4
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 4
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %349 = call i32 @parse_cfg(%struct.TYPE_13__* %343, %struct.TYPE_14__* %345, %struct.TYPE_15__* %347, %struct.TYPE_12__* %348)
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %363, label %356

356:                                              ; preds = %329
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 1
  br label %363

363:                                              ; preds = %356, %329
  %364 = phi i1 [ true, %329 ], [ %362, %356 ]
  %365 = zext i1 %364 to i32
  store i32 %365, i32* %16, align 4
  %366 = load i32, i32* %15, align 4
  %367 = load i32, i32* %16, align 4
  %368 = icmp ne i32 %366, %367
  br i1 %368, label %369, label %425

369:                                              ; preds = %363
  %370 = load i32, i32* %16, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = load i32, i32* @NGM_LINK_IS_DOWN, align 4
  store i32 %373, i32* %17, align 4
  br label %376

374:                                              ; preds = %369
  %375 = load i32, i32* @NGM_LINK_IS_UP, align 4
  store i32 %375, i32* %17, align 4
  br label %376

376:                                              ; preds = %374, %372
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = icmp ne i32* %380, null
  br i1 %381, label %382, label %400

382:                                              ; preds = %376
  %383 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %384 = load i32, i32* @NGM_FLOW_COOKIE, align 4
  %385 = load i32, i32* %17, align 4
  %386 = load i32, i32* @M_NOWAIT, align 4
  %387 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %383, i32 %384, i32 %385, i32 0, i32 %386)
  %388 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %389 = icmp ne %struct.ng_mesg* %388, null
  br i1 %389, label %390, label %399

390:                                              ; preds = %382
  %391 = load i32, i32* %14, align 4
  %392 = load i32, i32* %4, align 4
  %393 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 4
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = call i32 @NG_SEND_MSG_HOOK(i32 %391, i32 %392, %struct.ng_mesg* %393, i32* %397, i32 0)
  br label %399

399:                                              ; preds = %390, %382
  br label %400

400:                                              ; preds = %399, %376
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = icmp ne i32* %404, null
  br i1 %405, label %406, label %424

406:                                              ; preds = %400
  %407 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %408 = load i32, i32* @NGM_FLOW_COOKIE, align 4
  %409 = load i32, i32* %17, align 4
  %410 = load i32, i32* @M_NOWAIT, align 4
  %411 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %407, i32 %408, i32 %409, i32 0, i32 %410)
  %412 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %413 = icmp ne %struct.ng_mesg* %412, null
  br i1 %413, label %414, label %423

414:                                              ; preds = %406
  %415 = load i32, i32* %14, align 4
  %416 = load i32, i32* %4, align 4
  %417 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 3
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = call i32 @NG_SEND_MSG_HOOK(i32 %415, i32 %416, %struct.ng_mesg* %417, i32* %421, i32 0)
  br label %423

423:                                              ; preds = %414, %406
  br label %424

424:                                              ; preds = %423, %400
  br label %425

425:                                              ; preds = %424, %363
  br label %428

426:                                              ; preds = %27
  %427 = load i32, i32* @EINVAL, align 4
  store i32 %427, i32* %14, align 4
  br label %428

428:                                              ; preds = %426, %425, %184, %172, %113, %89, %87, %79, %45
  br label %431

429:                                              ; preds = %3
  %430 = load i32, i32* @EINVAL, align 4
  store i32 %430, i32* %14, align 4
  br label %431

431:                                              ; preds = %429, %428
  %432 = load i32, i32* %14, align 4
  %433 = load i32, i32* %4, align 4
  %434 = load i32, i32* %5, align 4
  %435 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %436 = call i32 @NG_RESPOND_MSG(i32 %432, i32 %433, i32 %434, %struct.ng_mesg* %435)
  %437 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %438 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %437)
  %439 = load i32, i32* %14, align 4
  ret i32 %439
}

declare dso_local %struct.TYPE_12__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @parse_cfg(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_12__*) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @NG_SEND_MSG_HOOK(i32, i32, %struct.ng_mesg*, i32*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
