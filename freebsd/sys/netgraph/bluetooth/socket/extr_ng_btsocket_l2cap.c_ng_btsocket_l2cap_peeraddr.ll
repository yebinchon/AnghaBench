; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_peeraddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_peeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sockaddr_l2cap = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_node = common dso_local global i32* null, align 8
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@NG_L2CAP_ATT_CID = common dso_local global i32 0, align 4
@NG_L2CAP_SMP_CID = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_l2cap_peeraddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sockaddr_l2cap, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = call %struct.TYPE_3__* @so2l2cap_pcb(%struct.socket* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load i32*, i32** @ng_btsocket_l2cap_node, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 5
  %23 = call i32 @bcopy(i32* %21, i32* %22, i32 4)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @htole16(i32 %26)
  %28 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 0
  store i32 24, i32* %29, align 4
  %30 = load i32, i32* @AF_BLUETOOTH, align 4
  %31 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %41 [
    i32 129, label %35
    i32 128, label %38
  ]

35:                                               ; preds = %19
  %36 = load i32, i32* @NG_L2CAP_ATT_CID, align 4
  %37 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  br label %43

38:                                               ; preds = %19
  %39 = load i32, i32* @NG_L2CAP_SMP_CID, align 4
  %40 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  br label %43

41:                                               ; preds = %19
  %42 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 2
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %38, %35
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = bitcast %struct.sockaddr_l2cap* %7 to %struct.sockaddr*
  %49 = load i32, i32* @M_NOWAIT, align 4
  %50 = call %struct.sockaddr* @sodupsockaddr(%struct.sockaddr* %48, i32 %49)
  %51 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %50, %struct.sockaddr** %51, align 8
  %52 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %53 = load %struct.sockaddr*, %struct.sockaddr** %52, align 8
  %54 = icmp eq %struct.sockaddr* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @ENOMEM, align 4
  br label %58

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %17, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_3__* @so2l2cap_pcb(%struct.socket*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local %struct.sockaddr* @sodupsockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
