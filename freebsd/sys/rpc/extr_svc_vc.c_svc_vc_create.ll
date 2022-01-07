; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_vc.c_svc_vc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32*, i32*, %struct.socket*, i32* }
%struct.socket = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.sockaddr = type { i32 }

@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISDISCONNECTED = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xprt->xp_lock\00", align 1
@svc_vc_rendezvous_ops = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@svc_vc_rendezvous_soupcall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @svc_vc_create(i32* %0, %struct.socket* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = call i32 @SOCK_LOCK(%struct.socket* %13)
  %15 = load %struct.socket*, %struct.socket** %7, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SS_ISCONNECTED, align 4
  %19 = load i32, i32* @SS_ISDISCONNECTED, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = call i32 @SOCK_UNLOCK(%struct.socket* %24)
  %26 = load %struct.socket*, %struct.socket** %7, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CURVNET_SET(i32 %28)
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %35, align 8
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = call i32 %36(%struct.socket* %37, %struct.sockaddr** %11)
  store i32 %38, i32* %12, align 4
  %39 = call i32 (...) @CURVNET_RESTORE()
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %121

43:                                               ; preds = %23
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.socket*, %struct.socket** %7, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %47 = call %struct.TYPE_12__* @svc_vc_create_conn(i32* %44, %struct.socket* %45, %struct.sockaddr* %46)
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %10, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %49 = load i32, i32* @M_SONAME, align 4
  %50 = call i32 @free(%struct.sockaddr* %48, i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %5, align 8
  br label %121

52:                                               ; preds = %4
  %53 = load %struct.socket*, %struct.socket** %7, align 8
  %54 = call i32 @SOCK_UNLOCK(%struct.socket* %53)
  %55 = call %struct.TYPE_12__* (...) @svc_xprt_alloc()
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %10, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = call i32 @sx_init(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 7
  store i32* %59, i32** %61, align 8
  %62 = load %struct.socket*, %struct.socket** %7, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 6
  store %struct.socket* %62, %struct.socket** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 5
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  store i32* @svc_vc_rendezvous_ops, i32** %70, align 8
  %71 = load %struct.socket*, %struct.socket** %7, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @CURVNET_SET(i32 %73)
  %75 = load %struct.socket*, %struct.socket** %7, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %80, align 8
  %82 = load %struct.socket*, %struct.socket** %7, align 8
  %83 = call i32 %81(%struct.socket* %82, %struct.sockaddr** %11)
  store i32 %83, i32* %12, align 4
  %84 = call i32 (...) @CURVNET_RESTORE()
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %52
  br label %115

88:                                               ; preds = %52
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %92 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %93 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(i32* %90, %struct.sockaddr* %91, i32 %94)
  %96 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %97 = load i32, i32* @M_SONAME, align 4
  %98 = call i32 @free(%struct.sockaddr* %96, i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %100 = call i32 @xprt_register(%struct.TYPE_12__* %99)
  %101 = load %struct.socket*, %struct.socket** %7, align 8
  %102 = load i32, i32* @curthread, align 4
  %103 = call i32 @solisten(%struct.socket* %101, i32 -1, i32 %102)
  %104 = load %struct.socket*, %struct.socket** %7, align 8
  %105 = call i32 @SOLISTEN_LOCK(%struct.socket* %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.socket*, %struct.socket** %7, align 8
  %109 = load i32, i32* @svc_vc_rendezvous_soupcall, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = call i32 @solisten_upcall_set(%struct.socket* %108, i32 %109, %struct.TYPE_12__* %110)
  %112 = load %struct.socket*, %struct.socket** %7, align 8
  %113 = call i32 @SOLISTEN_UNLOCK(%struct.socket* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %5, align 8
  br label %121

115:                                              ; preds = %87
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = call i32 @sx_destroy(i32* %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = call i32 @svc_xprt_free(%struct.TYPE_12__* %119)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %121

121:                                              ; preds = %115, %88, %43, %42
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %122
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local %struct.TYPE_12__* @svc_vc_create_conn(i32*, %struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local %struct.TYPE_12__* @svc_xprt_alloc(...) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @xprt_register(%struct.TYPE_12__*) #1

declare dso_local i32 @solisten(%struct.socket*, i32, i32) #1

declare dso_local i32 @SOLISTEN_LOCK(%struct.socket*) #1

declare dso_local i32 @solisten_upcall_set(%struct.socket*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @SOLISTEN_UNLOCK(%struct.socket*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @svc_xprt_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
