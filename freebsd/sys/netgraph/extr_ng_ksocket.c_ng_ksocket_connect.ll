; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.socket* }
%struct.socket = type { i32, i32, i32 }

@SO_RCV = common dso_local global i32 0, align 4
@ng_ksocket_incoming = common dso_local global i32 0, align 4
@SO_SND = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@KSF_CLONED = common dso_local global i32 0, align 4
@ng_ksocket_incoming2 = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_ksocket_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ksocket_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.socket*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @NG_HOOK_NODE(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.socket*, %struct.socket** %11, align 8
  store %struct.socket* %12, %struct.socket** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 2
  %17 = call i32 @SOCKBUF_LOCK(i32* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.socket*, %struct.socket** %19, align 8
  %21 = load i32, i32* @SO_RCV, align 4
  %22 = load i32, i32* @ng_ksocket_incoming, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @soupcall_set(%struct.socket* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.socket*, %struct.socket** %26, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 2
  %29 = call i32 @SOCKBUF_UNLOCK(i32* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.socket*, %struct.socket** %31, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  %34 = call i32 @SOCKBUF_LOCK(i32* %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.socket*, %struct.socket** %36, align 8
  %38 = load i32, i32* @SO_SND, align 4
  %39 = load i32, i32* @ng_ksocket_incoming, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @soupcall_set(%struct.socket* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %struct.socket*, %struct.socket** %43, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 1
  %46 = call i32 @SOCKBUF_UNLOCK(i32* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.socket*, %struct.socket** %48, align 8
  %50 = call i32 @SOCK_LOCK(%struct.socket* %49)
  %51 = load i32, i32* @SS_NBIO, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.socket*, %struct.socket** %53, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.socket*, %struct.socket** %59, align 8
  %61 = call i32 @SOCK_UNLOCK(%struct.socket* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @KSF_CLONED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %1
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.socket*, %struct.socket** %5, align 8
  %71 = load i32, i32* @M_NOWAIT, align 4
  %72 = call i32 @ng_send_fn(i32 %69, i32* null, i32* @ng_ksocket_incoming2, %struct.socket* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %1
  ret i32 0
}

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soupcall_set(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @ng_send_fn(i32, i32*, i32*, %struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
