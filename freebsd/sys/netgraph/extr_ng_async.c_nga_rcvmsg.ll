; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_async.c_nga_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_async.c_nga_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ng_async_cfg, i32, i8*, i32*, i32*, %struct.ng_async_stat }
%struct.ng_async_cfg = type { i32, i32, i32 }
%struct.ng_async_stat = type { i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NG_ASYNC_MIN_MRU = common dso_local global i32 0, align 4
@NG_ASYNC_MAX_MRU = common dso_local global i32 0, align 4
@M_NETGRAPH_ASYNC = common dso_local global i32 0, align 4
@MODE_HUNT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @nga_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nga_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_async_cfg*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %17 = call i32 @NGI_GET_MSG(i32 %15, %struct.ng_mesg* %16)
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %19 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %207 [
    i32 128, label %22
  ]

22:                                               ; preds = %3
  %23 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %24 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %203 [
    i32 130, label %27
    i32 132, label %46
    i32 129, label %50
    i32 131, label %184
  ]

27:                                               ; preds = %22
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %29 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %28, %struct.ng_mesg* %29, i32 4, i32 %30)
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %33 = icmp eq %struct.ng_mesg* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @ERROUT(i32 %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %39 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.ng_async_stat*
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = bitcast %struct.ng_async_stat* %41 to i8*
  %45 = bitcast %struct.ng_async_stat* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %45, i64 4, i1 false)
  br label %206

46:                                               ; preds = %22
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = call i32 @bzero(%struct.ng_async_stat* %48, i32 4)
  br label %206

50:                                               ; preds = %22
  %51 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %52 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.ng_async_cfg*
  store %struct.ng_async_cfg* %54, %struct.ng_async_cfg** %11, align 8
  %55 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %56 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 12
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @ERROUT(i32 %62)
  br label %64

64:                                               ; preds = %61, %50
  %65 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %66 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NG_ASYNC_MIN_MRU, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %88, label %70

70:                                               ; preds = %64
  %71 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %72 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NG_ASYNC_MAX_MRU, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %78 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NG_ASYNC_MIN_MRU, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %84 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NG_ASYNC_MAX_MRU, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %76, %70, %64
  %89 = load i32, i32* @EINVAL, align 4
  %90 = call i32 @ERROUT(i32 %89)
  br label %91

91:                                               ; preds = %88, %82
  %92 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %93 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %100 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %102 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %103, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %91
  %110 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %111 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ASYNC_BUF_SIZE(i32 %112)
  %114 = load i32, i32* @M_NETGRAPH_ASYNC, align 4
  %115 = load i32, i32* @M_NOWAIT, align 4
  %116 = call i32* @malloc(i32 %113, i32 %114, i32 %115)
  store i32* %116, i32** %12, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %109
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = call i32 @ERROUT(i32 %120)
  br label %122

122:                                              ; preds = %119, %109
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @M_NETGRAPH_ASYNC, align 4
  %127 = call i32 @free(i32* %125, i32 %126)
  %128 = load i32*, i32** %12, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %122, %91
  %132 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %133 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %134, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %131
  %141 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %142 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @SYNC_BUF_SIZE(i32 %143)
  %145 = load i32, i32* @M_NETGRAPH_ASYNC, align 4
  %146 = load i32, i32* @M_NOWAIT, align 4
  %147 = call i32* @malloc(i32 %144, i32 %145, i32 %146)
  store i32* %147, i32** %12, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %140
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = call i32 @ERROUT(i32 %151)
  br label %153

153:                                              ; preds = %150, %140
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @M_NETGRAPH_ASYNC, align 4
  %158 = call i32 @free(i32* %156, i32 %157)
  %159 = load i32*, i32** %12, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  store i32* %159, i32** %161, align 8
  %162 = load i8*, i8** @MODE_HUNT, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %153, %131
  %168 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %169 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %167
  %173 = load i8*, i8** @MODE_HUNT, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %172, %167
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load %struct.ng_async_cfg*, %struct.ng_async_cfg** %11, align 8
  %182 = bitcast %struct.ng_async_cfg* %180 to i8*
  %183 = bitcast %struct.ng_async_cfg* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 4 %183, i64 12, i1 false)
  br label %206

184:                                              ; preds = %22
  %185 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %186 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %187 = load i32, i32* @M_NOWAIT, align 4
  %188 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %185, %struct.ng_mesg* %186, i32 12, i32 %187)
  %189 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %190 = icmp ne %struct.ng_mesg* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %184
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = call i32 @ERROUT(i32 %192)
  br label %194

194:                                              ; preds = %191, %184
  %195 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %196 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to %struct.ng_async_cfg*
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = bitcast %struct.ng_async_cfg* %198 to i8*
  %202 = bitcast %struct.ng_async_cfg* %200 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %201, i8* align 8 %202, i64 12, i1 false)
  br label %206

203:                                              ; preds = %22
  %204 = load i32, i32* @EINVAL, align 4
  %205 = call i32 @ERROUT(i32 %204)
  br label %206

206:                                              ; preds = %203, %194, %178, %46, %37
  br label %210

207:                                              ; preds = %3
  %208 = load i32, i32* @EINVAL, align 4
  %209 = call i32 @ERROUT(i32 %208)
  br label %210

210:                                              ; preds = %207, %206
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %216 = call i32 @NG_RESPOND_MSG(i32 %212, i32 %213, i32 %214, %struct.ng_mesg* %215)
  %217 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %218 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %217)
  %219 = load i32, i32* %9, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @ERROUT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bzero(%struct.ng_async_stat*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ASYNC_BUF_SIZE(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @SYNC_BUF_SIZE(i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
