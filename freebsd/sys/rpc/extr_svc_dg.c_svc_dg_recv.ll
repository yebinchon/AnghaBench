; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_dg.c_svc_dg_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_dg.c_svc_dg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rpc_msg = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.uio = type { i32, i32 }

@curthread = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.rpc_msg*, %struct.sockaddr**, %struct.mbuf**)* @svc_dg_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_dg_recv(%struct.TYPE_7__* %0, %struct.rpc_msg* %1, %struct.sockaddr** %2, %struct.mbuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.rpc_msg*, align 8
  %8 = alloca %struct.sockaddr**, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.uio, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %7, align 8
  store %struct.sockaddr** %2, %struct.sockaddr*** %8, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i32 @sx_xlock(i32* %17)
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  store i32 1000000000, i32* %19, align 4
  %20 = load i32, i32* @curthread, align 4
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  %22 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i32 @soreceive(%struct.TYPE_8__* %25, %struct.sockaddr** %11, %struct.uio* %10, %struct.mbuf** %12, i32* null, i32* %15)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @EWOULDBLOCK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i32 @SOCKBUF_LOCK(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = call i32 @soreadable(%struct.TYPE_8__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = call i32 @xprt_inactive_self(%struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %41, %30
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @SOCKBUF_UNLOCK(i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = call i32 @sx_xunlock(i32* %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %5, align 4
  br label %99

54:                                               ; preds = %4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @SOCKBUF_LOCK(i32* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* @SO_RCV, align 4
  %67 = call i32 @soupcall_clear(%struct.TYPE_8__* %65, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = call i32 @SOCKBUF_UNLOCK(i32* %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = call i32 @xprt_inactive_self(%struct.TYPE_7__* %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = call i32 @sx_xunlock(i32* %76)
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %5, align 4
  br label %99

79:                                               ; preds = %54
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call i32 @sx_xunlock(i32* %81)
  %83 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %84 = load i32, i32* @XDR_DECODE, align 4
  %85 = call i32 @xdrmbuf_create(i32* %13, %struct.mbuf* %83, i32 %84)
  %86 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %87 = call i32 @xdr_callmsg(i32* %13, %struct.rpc_msg* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %79
  %90 = call i32 @XDR_DESTROY(i32* %13)
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %5, align 4
  br label %99

92:                                               ; preds = %79
  %93 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %94 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  store %struct.sockaddr* %93, %struct.sockaddr** %94, align 8
  %95 = call %struct.mbuf* @xdrmbuf_getall(i32* %13)
  %96 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* %95, %struct.mbuf** %96, align 8
  %97 = call i32 @XDR_DESTROY(i32* %13)
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %92, %89, %57, %44
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @soreceive(%struct.TYPE_8__*, %struct.sockaddr**, %struct.uio*, %struct.mbuf**, i32*, i32*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soreadable(%struct.TYPE_8__*) #1

declare dso_local i32 @xprt_inactive_self(%struct.TYPE_7__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @soupcall_clear(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xdrmbuf_create(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @xdr_callmsg(i32*, %struct.rpc_msg*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local %struct.mbuf* @xdrmbuf_getall(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
