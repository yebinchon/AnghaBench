; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_dg.c_svc_dg_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_dg.c_svc_dg_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32 }
%struct.rpc_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i32 0, align 4
@MSG_ACCEPTED = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, %struct.rpc_msg*, %struct.sockaddr*, %struct.mbuf*, i32*)* @svc_dg_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @svc_dg_reply(%struct.TYPE_7__* %0, %struct.rpc_msg* %1, %struct.sockaddr* %2, %struct.mbuf* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.rpc_msg*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @MT_DATA, align 4
  %18 = call %struct.mbuf* @m_gethdr(i32 %16, i32 %17)
  store %struct.mbuf* %18, %struct.mbuf** %12, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %20 = load i32, i32* @XDR_ENCODE, align 4
  %21 = call i32 @xdrmbuf_create(i32* %11, %struct.mbuf* %19, i32 %20)
  %22 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %23 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MSG_ACCEPTED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %5
  %29 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %30 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %38 = call i64 @xdr_replymsg(i32* %11, %struct.rpc_msg* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %13, align 8
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %44 = call i32 @xdrmbuf_append(i32* %11, %struct.mbuf* %43)
  br label %45

45:                                               ; preds = %42, %40
  br label %49

46:                                               ; preds = %28, %5
  %47 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %48 = call i64 @xdr_replymsg(i32* %11, %struct.rpc_msg* %47)
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %54 = call i32 @m_fixhdr(%struct.mbuf* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %60 = load i32, i32* @curthread, align 4
  %61 = call i32 @sosend(i32 %57, %struct.sockaddr* %58, i32* null, %struct.mbuf* %59, i32* null, i32 0, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %52
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %64, %52
  br label %70

67:                                               ; preds = %49
  %68 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %69 = call i32 @m_freem(%struct.mbuf* %68)
  br label %70

70:                                               ; preds = %67, %66
  %71 = call i32 @XDR_DESTROY(i32* %11)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load i64, i64* %13, align 8
  ret i64 %74
}

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @xdrmbuf_create(i32*, %struct.mbuf*, i32) #1

declare dso_local i64 @xdr_replymsg(i32*, %struct.rpc_msg*) #1

declare dso_local i32 @xdrmbuf_append(i32*, %struct.mbuf*) #1

declare dso_local i32 @m_fixhdr(%struct.mbuf*) #1

declare dso_local i32 @sosend(i32, %struct.sockaddr*, i32*, %struct.mbuf*, i32*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
