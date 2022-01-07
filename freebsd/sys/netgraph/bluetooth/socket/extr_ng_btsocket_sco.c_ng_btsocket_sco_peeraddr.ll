; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_sco.c_ng_btsocket_sco_peeraddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_sco.c_ng_btsocket_sco_peeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr_sco = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ng_btsocket_sco_node = common dso_local global i32* null, align 8
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_sco_peeraddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sockaddr_sco, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.TYPE_3__* @so2sco_pcb(%struct.socket* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i32*, i32** @ng_btsocket_sco_node, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.sockaddr_sco, %struct.sockaddr_sco* %7, i32 0, i32 2
  %26 = call i32 @bcopy(i32* %24, i32* %25, i32 4)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = getelementptr inbounds %struct.sockaddr_sco, %struct.sockaddr_sco* %7, i32 0, i32 0
  store i32 12, i32* %30, align 4
  %31 = load i32, i32* @AF_BLUETOOTH, align 4
  %32 = getelementptr inbounds %struct.sockaddr_sco, %struct.sockaddr_sco* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.sockaddr_sco* %7 to %struct.sockaddr*
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call %struct.sockaddr* @sodupsockaddr(%struct.sockaddr* %33, i32 %34)
  %36 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %35, %struct.sockaddr** %36, align 8
  %37 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %37, align 8
  %39 = icmp eq %struct.sockaddr* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %19
  %41 = load i32, i32* @ENOMEM, align 4
  br label %43

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %17, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_3__* @so2sco_pcb(%struct.socket*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.sockaddr* @sodupsockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
