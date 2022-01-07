; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr_hci = type { i64, i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@ng_btsocket_hci_raw_node = common dso_local global i32* null, align 8
@AF_BLUETOOTH = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_hci_raw_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.sockaddr_hci*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.TYPE_3__* @so2hci_raw_pcb(%struct.socket* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_hci*
  store %struct.sockaddr_hci* %13, %struct.sockaddr_hci** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load i32*, i32** @ng_btsocket_hci_raw_node, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %18
  %24 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %9, align 8
  %25 = icmp eq %struct.sockaddr_hci* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %23
  %29 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %9, align 8
  %30 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_BLUETOOTH, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %9, align 8
  %38 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 24
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %64

44:                                               ; preds = %36
  %45 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %44
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @mtx_lock(i32* %55)
  %57 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %9, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @bcopy(%struct.sockaddr_hci* %57, i32* %59, i32 4)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @mtx_unlock(i32* %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %53, %51, %42, %34, %26, %21, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_3__* @so2hci_raw_pcb(%struct.socket*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bcopy(%struct.sockaddr_hci*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
