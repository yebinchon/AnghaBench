; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_generic.c_svc_tp_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_generic.c_svc_tp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type opaque
%struct.netconfig = type { i8* }
%struct.netbuf = type { %struct.netbuf* }
%struct.t_bind = type { i32, %struct.netbuf }
%struct.svc_req.0 = type opaque

@.str = private unnamed_addr constant [64 x i8] c"svc_tp_create: invalid netconfig structure for prog %u vers %u\0A\00", align 1
@M_RPC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"svc_tp_create: Could not register prog %u vers %u on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svc_tp_create(i32* %0, void (%struct.svc_req*, i32*)* %1, i64 %2, i64 %3, i8* %4, %struct.netconfig* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca void (%struct.svc_req*, i32*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.netconfig*, align 8
  %14 = alloca %struct.netconfig, align 8
  %15 = alloca %struct.netbuf*, align 8
  %16 = alloca %struct.t_bind, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store void (%struct.svc_req*, i32*)* %1, void (%struct.svc_req*, i32*)** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.netconfig* %5, %struct.netconfig** %13, align 8
  %18 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %19 = icmp eq %struct.netconfig* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i64, i64* %10, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* %11, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  store i32* null, i32** %7, align 8
  br label %88

26:                                               ; preds = %6
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call %struct.netbuf* @uaddr2taddr(%struct.netconfig* %30, i8* %31)
  store %struct.netbuf* %32, %struct.netbuf** %15, align 8
  %33 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %16, i32 0, i32 1
  %34 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %35 = bitcast %struct.netbuf* %33 to i8*
  %36 = bitcast %struct.netbuf* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %38 = load i32, i32* @M_RPC, align 4
  %39 = call i32 @free(%struct.netbuf* %37, i32 %38)
  %40 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %16, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %43 = call i32* @svc_tli_create(i32* %41, i32* null, %struct.netconfig* %42, %struct.t_bind* %16, i32 0, i32 0)
  store i32* %43, i32** %17, align 8
  %44 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %16, i32 0, i32 1
  %45 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %44, i32 0, i32 0
  %46 = load %struct.netbuf*, %struct.netbuf** %45, align 8
  %47 = load i32, i32* @M_RPC, align 4
  %48 = call i32 @free(%struct.netbuf* %46, i32 %47)
  br label %53

49:                                               ; preds = %26
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %52 = call i32* @svc_tli_create(i32* %50, i32* null, %struct.netconfig* %51, %struct.t_bind* null, i32 0, i32 0)
  store i32* %52, i32** %17, align 8
  br label %53

53:                                               ; preds = %49, %29
  %54 = load i32*, i32** %17, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32* null, i32** %7, align 8
  br label %88

57:                                               ; preds = %53
  %58 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %59 = bitcast %struct.netconfig* %14 to i8*
  %60 = bitcast %struct.netconfig* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 8, i1 false)
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @rpcb_unset(i64 %61, i64 %62, %struct.netconfig* %14)
  %64 = load i32*, i32** %17, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load void (%struct.svc_req*, i32*)*, void (%struct.svc_req*, i32*)** %9, align 8
  %68 = bitcast void (%struct.svc_req*, i32*)* %67 to void (%struct.svc_req.0*, i32*)*
  %69 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %70 = call i64 @svc_reg(i32* %64, i64 %65, i64 %66, void (%struct.svc_req.0*, i32*)* %68, %struct.netconfig* %69)
  %71 = load i64, i64* @FALSE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %57
  %74 = load i64, i64* %10, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %79 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %77, i8* %80)
  %82 = load i32*, i32** %17, align 8
  %83 = call i32 @xprt_unregister(i32* %82)
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @SVC_RELEASE(i32* %84)
  store i32* null, i32** %7, align 8
  br label %88

86:                                               ; preds = %57
  %87 = load i32*, i32** %17, align 8
  store i32* %87, i32** %7, align 8
  br label %88

88:                                               ; preds = %86, %73, %56, %20
  %89 = load i32*, i32** %7, align 8
  ret i32* %89
}

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local %struct.netbuf* @uaddr2taddr(%struct.netconfig*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.netbuf*, i32) #1

declare dso_local i32* @svc_tli_create(i32*, i32*, %struct.netconfig*, %struct.t_bind*, i32, i32) #1

declare dso_local i32 @rpcb_unset(i64, i64, %struct.netconfig*) #1

declare dso_local i64 @svc_reg(i32*, i64, i64, void (%struct.svc_req.0*, i32*)*, %struct.netconfig*) #1

declare dso_local i32 @xprt_unregister(i32*) #1

declare dso_local i32 @SVC_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
