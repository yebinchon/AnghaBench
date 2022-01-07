; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_generic.c_clnt_call_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_generic.c_clnt_call_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_callextra = type { i32 }
%struct.timeval = type { i32 }
%struct.mbuf = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@RPC_CANTENCODEARGS = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@RPC_CANTDECODERES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clnt_call_private(i32* %0, %struct.rpc_callextra* %1, i32 %2, i32 (i32*, i8*)* %3, i8* %4, i32 (i32*, i8*)* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rpc_callextra*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (i32*, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32 (i32*, i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mbuf*, align 8
  %20 = alloca %struct.mbuf*, align 8
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %7, i32* %22, align 4
  store i32* %0, i32** %11, align 8
  store %struct.rpc_callextra* %1, %struct.rpc_callextra** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 (i32*, i8*)* %3, i32 (i32*, i8*)** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 (i32*, i8*)* %5, i32 (i32*, i8*)** %16, align 8
  store i8* %6, i8** %17, align 8
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @MT_DATA, align 4
  %25 = call %struct.mbuf* @m_getcl(i32 %23, i32 %24, i32 0)
  store %struct.mbuf* %25, %struct.mbuf** %19, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %27 = load i32, i32* @XDR_ENCODE, align 4
  %28 = call i32 @xdrmbuf_create(i32* %18, %struct.mbuf* %26, i32 %27)
  %29 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %14, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 %29(i32* %18, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %8
  %34 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %35 = call i32 @m_freem(%struct.mbuf* %34)
  %36 = load i32, i32* @RPC_CANTENCODEARGS, align 4
  store i32 %36, i32* %9, align 4
  br label %66

37:                                               ; preds = %8
  %38 = call i32 @XDR_DESTROY(i32* %18)
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.rpc_callextra*, %struct.rpc_callextra** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CLNT_CALL_MBUF(i32* %39, %struct.rpc_callextra* %40, i32 %41, %struct.mbuf* %42, %struct.mbuf** %20, i32 %44)
  store i32 %45, i32* %21, align 4
  %46 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %47 = call i32 @m_freem(%struct.mbuf* %46)
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* @RPC_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %37
  %52 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %53 = load i32, i32* @XDR_DECODE, align 4
  %54 = call i32 @xdrmbuf_create(i32* %18, %struct.mbuf* %52, i32 %53)
  %55 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %16, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = call i32 %55(i32* %18, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = call i32 @XDR_DESTROY(i32* %18)
  %61 = load i32, i32* @RPC_CANTDECODERES, align 4
  store i32 %61, i32* %9, align 4
  br label %66

62:                                               ; preds = %51
  %63 = call i32 @XDR_DESTROY(i32* %18)
  br label %64

64:                                               ; preds = %62, %37
  %65 = load i32, i32* %21, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %59, %33
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @xdrmbuf_create(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local i32 @CLNT_CALL_MBUF(i32*, %struct.rpc_callextra*, i32, %struct.mbuf*, %struct.mbuf**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
