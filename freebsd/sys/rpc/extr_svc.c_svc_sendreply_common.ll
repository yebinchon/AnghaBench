; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_sendreply_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_sendreply_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i32*, i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.rpc_msg = type { i32 }
%struct.mbuf = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_req*, %struct.rpc_msg*, %struct.mbuf*)* @svc_sendreply_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_sendreply_common(%struct.svc_req* %0, %struct.rpc_msg* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.rpc_msg*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %5, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %10 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %11 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %10, i32 0, i32 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %14 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %19 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @m_freem(i32* %20)
  %22 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %23 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %38 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %39 = call i32 @svc_getrpccaller(%struct.svc_req* %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = call i32 @replay_setreply(i64 %36, %struct.rpc_msg* %37, i32 %39, %struct.mbuf* %40)
  br label %42

42:                                               ; preds = %31, %24
  %43 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %44 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %43, i32 0, i32 2
  %45 = call i32 @SVCAUTH_WRAP(i32* %44, %struct.mbuf** %7)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %73

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %52 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %53 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %56 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %57 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %56, i32 0, i32 1
  %58 = call i32 @SVC_REPLY(%struct.TYPE_5__* %50, %struct.rpc_msg* %51, i32* %54, %struct.mbuf* %55, i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %60 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %49
  %64 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %65 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @M_SONAME, align 4
  %68 = call i32 @free(i32* %66, i32 %67)
  %69 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %70 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %63, %49
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %47
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @replay_setreply(i64, %struct.rpc_msg*, i32, %struct.mbuf*) #1

declare dso_local i32 @svc_getrpccaller(%struct.svc_req*) #1

declare dso_local i32 @SVCAUTH_WRAP(i32*, %struct.mbuf**) #1

declare dso_local i32 @SVC_REPLY(%struct.TYPE_5__*, %struct.rpc_msg*, i32*, %struct.mbuf*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
