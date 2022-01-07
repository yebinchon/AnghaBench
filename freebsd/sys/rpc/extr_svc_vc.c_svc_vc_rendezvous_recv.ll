; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_rendezvous_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_rendezvous_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.rpc_msg = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.socket = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SO_RCV = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.rpc_msg*, %struct.sockaddr**, %struct.mbuf**)* @svc_vc_rendezvous_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_vc_rendezvous_recv(%struct.TYPE_10__* %0, %struct.rpc_msg* %1, %struct.sockaddr** %2, %struct.mbuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.rpc_msg*, align 8
  %8 = alloca %struct.sockaddr**, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %7, align 8
  store %struct.sockaddr** %2, %struct.sockaddr*** %8, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %9, align 8
  store %struct.socket* null, %struct.socket** %10, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = call i32 @sx_xlock(i32* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = call i32 @svc_vc_accept(%struct.TYPE_11__* %19, %struct.socket** %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @EWOULDBLOCK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = call i32 @SOLISTEN_LOCK(%struct.TYPE_11__* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = call i64 @TAILQ_EMPTY(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = call i32 @xprt_inactive_self(%struct.TYPE_10__* %36)
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = call i32 @SOLISTEN_UNLOCK(%struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = call i32 @sx_xunlock(i32* %44)
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %5, align 4
  br label %115

47:                                               ; preds = %4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = call i32 @SOLISTEN_LOCK(%struct.TYPE_11__* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* @SO_RCV, align 4
  %66 = call i32 @soupcall_clear(%struct.TYPE_11__* %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %50
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = call i32 @SOLISTEN_UNLOCK(%struct.TYPE_11__* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = call i32 @xprt_inactive_self(%struct.TYPE_10__* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = call i32 @sx_xunlock(i32* %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %5, align 4
  br label %115

78:                                               ; preds = %47
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = call i32 @sx_xunlock(i32* %80)
  store %struct.sockaddr* null, %struct.sockaddr** %11, align 8
  %82 = load %struct.socket*, %struct.socket** %10, align 8
  %83 = call i32 @soaccept(%struct.socket* %82, %struct.sockaddr** %11)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %88 = icmp ne %struct.sockaddr* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %91 = load i32, i32* @M_SONAME, align 4
  %92 = call i32 @free(%struct.sockaddr* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %5, align 4
  br label %115

95:                                               ; preds = %78
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.socket*, %struct.socket** %10, align 8
  %100 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %101 = call %struct.TYPE_10__* @svc_vc_create_conn(i32 %98, %struct.socket* %99, %struct.sockaddr* %100)
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %13, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %103 = icmp ne %struct.TYPE_10__* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %95
  %105 = load %struct.socket*, %struct.socket** %10, align 8
  %106 = call i32 @soclose(%struct.socket* %105)
  br label %110

107:                                              ; preds = %95
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %109 = call i32 @SVC_RELEASE(%struct.TYPE_10__* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %112 = load i32, i32* @M_SONAME, align 4
  %113 = call i32 @free(%struct.sockaddr* %111, i32 %112)
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %93, %67, %38
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @svc_vc_accept(%struct.TYPE_11__*, %struct.socket**) #1

declare dso_local i32 @SOLISTEN_LOCK(%struct.TYPE_11__*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @xprt_inactive_self(%struct.TYPE_10__*) #1

declare dso_local i32 @SOLISTEN_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @soupcall_clear(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @soaccept(%struct.socket*, %struct.sockaddr**) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local %struct.TYPE_10__* @svc_vc_create_conn(i32, %struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @SVC_RELEASE(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
