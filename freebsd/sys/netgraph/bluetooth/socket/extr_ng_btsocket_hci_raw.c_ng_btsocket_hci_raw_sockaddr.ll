; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_hci = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ng_btsocket_hci_raw_node = common dso_local global i32* null, align 8
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_hci_raw_sockaddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.sockaddr_hci, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.TYPE_5__* @so2hci_raw_pcb(%struct.socket* %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32*, i32** @ng_btsocket_hci_raw_node, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %14
  %20 = call i32 @bzero(%struct.sockaddr_hci* %7, i32 12)
  %21 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %7, i32 0, i32 0
  store i32 12, i32* %21, align 4
  %22 = load i32, i32* @AF_BLUETOOTH, align 4
  %23 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @mtx_lock(i32* %25)
  %27 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strlcpy(i32 %28, i32 %32, i32 4)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = bitcast %struct.sockaddr_hci* %7 to %struct.sockaddr*
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call %struct.sockaddr* @sodupsockaddr(%struct.sockaddr* %37, i32 %38)
  %40 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %39, %struct.sockaddr** %40, align 8
  %41 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %41, align 8
  %43 = icmp eq %struct.sockaddr* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %19
  %45 = load i32, i32* @ENOMEM, align 4
  br label %47

46:                                               ; preds = %19
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %17, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_5__* @so2hci_raw_pcb(%struct.socket*) #1

declare dso_local i32 @bzero(%struct.sockaddr_hci*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.sockaddr* @sodupsockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
