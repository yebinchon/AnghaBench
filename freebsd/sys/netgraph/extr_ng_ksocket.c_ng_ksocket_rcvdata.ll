; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.sa_tag = type { i64, %struct.sockaddr }

@curthread = common dso_local global %struct.thread* null, align 8
@NGM_KSOCKET_COOKIE = common dso_local global i32 0, align 4
@NG_KSOCKET_TAG_SOCKADDR = common dso_local global i32 0, align 4
@M_BCAST = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@uint32_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_ksocket_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ksocket_rcvdata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.sa_tag*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %13, %struct.thread** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @NG_HOOK_NODE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.socket*, %struct.socket** %19, align 8
  store %struct.socket* %20, %struct.socket** %8, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %9, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %23 = call i32 @NGI_GET_M(i32 %21, %struct.mbuf* %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @NG_FREE_ITEM(i32 %24)
  %26 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %27 = load i32, i32* @NGM_KSOCKET_COOKIE, align 4
  %28 = load i32, i32* @NG_KSOCKET_TAG_SOCKADDR, align 4
  %29 = call i64 @m_tag_locate(%struct.mbuf* %26, i32 %27, i32 %28, i32* null)
  %30 = inttoptr i64 %29 to %struct.sa_tag*
  store %struct.sa_tag* %30, %struct.sa_tag** %12, align 8
  %31 = icmp ne %struct.sa_tag* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load %struct.sa_tag*, %struct.sa_tag** %12, align 8
  %34 = getelementptr inbounds %struct.sa_tag, %struct.sa_tag* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @NG_NODE_ID(i32 %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.sa_tag*, %struct.sa_tag** %12, align 8
  %41 = getelementptr inbounds %struct.sa_tag, %struct.sa_tag* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %32
  %45 = load %struct.sa_tag*, %struct.sa_tag** %12, align 8
  %46 = getelementptr inbounds %struct.sa_tag, %struct.sa_tag* %45, i32 0, i32 1
  store %struct.sockaddr* %46, %struct.sockaddr** %9, align 8
  br label %47

47:                                               ; preds = %44, %39, %2
  %48 = load i32, i32* @M_BCAST, align 4
  %49 = load i32, i32* @M_MCAST, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.socket*, %struct.socket** %8, align 8
  %57 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %59 = load %struct.thread*, %struct.thread** %5, align 8
  %60 = call i32 @sosend(%struct.socket* %56, %struct.sockaddr* %57, i32 0, %struct.mbuf* %58, i32 0, i32 0, %struct.thread* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i64 @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i64 @NG_NODE_ID(i32) #1

declare dso_local i32 @sosend(%struct.socket*, %struct.sockaddr*, i32, %struct.mbuf*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
