; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.svc_req = type opaque
%struct.netconfig = type { i8* }
%struct.svc_callout = type { void (%struct.svc_req.0*, %struct.TYPE_9__*)*, i8*, i32, i32 }
%struct.svc_req.0 = type opaque
%struct.netbuf = type { i32, %struct.TYPE_8__* }

@M_RPC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@sc_link = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_reg(%struct.TYPE_9__* %0, i32 %1, i32 %2, void (%struct.svc_req*, %struct.TYPE_9__*)* %3, %struct.netconfig* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.svc_req*, %struct.TYPE_9__*)*, align 8
  %11 = alloca %struct.netconfig*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.svc_callout*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.netconfig, align 8
  %18 = alloca %struct.netbuf, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store void (%struct.svc_req*, %struct.TYPE_9__*)* %3, void (%struct.svc_req*, %struct.TYPE_9__*)** %10, align 8
  store %struct.netconfig* %4, %struct.netconfig** %11, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %12, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @M_RPC, align 4
  %31 = call i8* @strdup(i8* %29, i32 %30)
  store i8* %31, i8** %14, align 8
  store i32 1, i32* %15, align 4
  br label %47

32:                                               ; preds = %5
  %33 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %34 = icmp ne %struct.netconfig* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %37 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %42 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @M_RPC, align 4
  %45 = call i8* @strdup(i8* %43, i32 %44)
  store i8* %45, i8** %14, align 8
  store i32 1, i32* %15, align 4
  br label %46

46:                                               ; preds = %40, %35, %32
  br label %47

47:                                               ; preds = %46, %26
  %48 = load i8*, i8** %14, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %6, align 4
  br label %163

55:                                               ; preds = %50, %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = call i32 @mtx_lock(i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = call %struct.svc_callout* @svc_find(%struct.TYPE_10__* %59, i32 %60, i32 %61, i8* %62)
  store %struct.svc_callout* %63, %struct.svc_callout** %13, align 8
  %64 = icmp ne %struct.svc_callout* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %55
  %66 = load i8*, i8** %14, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* @M_RPC, align 4
  %71 = call i32 @free(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %74 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %73, i32 0, i32 0
  %75 = load void (%struct.svc_req.0*, %struct.TYPE_9__*)*, void (%struct.svc_req.0*, %struct.TYPE_9__*)** %74, align 8
  %76 = load void (%struct.svc_req*, %struct.TYPE_9__*)*, void (%struct.svc_req*, %struct.TYPE_9__*)** %10, align 8
  %77 = bitcast void (%struct.svc_req*, %struct.TYPE_9__*)* %76 to void (%struct.svc_req.0*, %struct.TYPE_9__*)*
  %78 = icmp eq void (%struct.svc_req.0*, %struct.TYPE_9__*)* %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %139

80:                                               ; preds = %72
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = call i32 @mtx_unlock(i32* %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %6, align 4
  br label %163

85:                                               ; preds = %55
  %86 = load i32, i32* @M_RPC, align 4
  %87 = load i32, i32* @M_NOWAIT, align 4
  %88 = call %struct.svc_callout* @malloc(i32 24, i32 %86, i32 %87)
  store %struct.svc_callout* %88, %struct.svc_callout** %13, align 8
  %89 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %90 = icmp eq %struct.svc_callout* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* @M_RPC, align 4
  %97 = call i32 @free(i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = call i32 @mtx_unlock(i32* %100)
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %6, align 4
  br label %163

103:                                              ; preds = %85
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %106 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %109 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load void (%struct.svc_req*, %struct.TYPE_9__*)*, void (%struct.svc_req*, %struct.TYPE_9__*)** %10, align 8
  %111 = bitcast void (%struct.svc_req*, %struct.TYPE_9__*)* %110 to void (%struct.svc_req.0*, %struct.TYPE_9__*)*
  %112 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %113 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %112, i32 0, i32 0
  store void (%struct.svc_req.0*, %struct.TYPE_9__*)* %111, void (%struct.svc_req.0*, %struct.TYPE_9__*)** %113, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %116 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load %struct.svc_callout*, %struct.svc_callout** %13, align 8
  %120 = load i32, i32* @sc_link, align 4
  %121 = call i32 @TAILQ_INSERT_TAIL(i32* %118, %struct.svc_callout* %119, i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %103
  %127 = load i32, i32* %15, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i8*, i8** %14, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i8*, i8** %14, align 8
  %134 = load i32, i32* @M_RPC, align 4
  %135 = call i8* @strdup(i8* %133, i32 %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %132, %129, %126, %103
  br label %139

139:                                              ; preds = %138, %79
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = call i32 @mtx_unlock(i32* %141)
  %143 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %144 = icmp ne %struct.netconfig* %143, null
  br i1 %144, label %145, label %161

145:                                              ; preds = %139
  %146 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %147 = bitcast %struct.netconfig* %17 to i8*
  %148 = bitcast %struct.netconfig* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 8, i1 false)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 1
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 0
  store i32 %155, i32* %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @rpcb_set(i32 %157, i32 %158, %struct.netconfig* %17, %struct.netbuf* %18)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  store i32 %160, i32* %6, align 4
  br label %163

161:                                              ; preds = %139
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %161, %145, %98, %80, %53
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.svc_callout* @svc_find(%struct.TYPE_10__*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.svc_callout* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.svc_callout*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rpcb_set(i32, i32, %struct.netconfig*, %struct.netbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
