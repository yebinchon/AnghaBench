; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr_rfcomm = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_rfcomm_sockaddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sockaddr_rfcomm, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.TYPE_3__* @so2rfcomm_pcb(%struct.socket* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 3
  %18 = call i32 @bcopy(i32* %16, i32* %17, i32 4)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 0
  store i32 16, i32* %23, align 4
  %24 = load i32, i32* @AF_BLUETOOTH, align 4
  %25 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.sockaddr_rfcomm* %7 to %struct.sockaddr*
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = call %struct.sockaddr* @sodupsockaddr(%struct.sockaddr* %26, i32 %27)
  %29 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %28, %struct.sockaddr** %29, align 8
  %30 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %30, align 8
  %32 = icmp eq %struct.sockaddr* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %14
  %34 = load i32, i32* @ENOMEM, align 4
  br label %36

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_3__* @so2rfcomm_pcb(%struct.socket*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local %struct.sockaddr* @sodupsockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
