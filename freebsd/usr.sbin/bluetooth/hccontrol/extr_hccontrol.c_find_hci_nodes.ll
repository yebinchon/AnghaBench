; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_hccontrol.c_find_hci_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_hccontrol.c_find_hci_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodeinfo = type { i32 }
%struct.ng_btsocket_hci_raw_node_list_names = type { i32, %struct.nodeinfo* }
%struct.sockaddr_hci = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ubt0hci\00", align 1
@MAX_NODE_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not allocate memory\00", align 1
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_HCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not create socket\00", align 1
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Could not bind socket\00", align 1
@SIOC_HCI_RAW_NODE_LIST_NAMES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not get list of HCI nodes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nodeinfo**)* @find_hci_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_hci_nodes(%struct.nodeinfo** %0) #0 {
  %2 = alloca %struct.nodeinfo**, align 8
  %3 = alloca %struct.ng_btsocket_hci_raw_node_list_names, align 8
  %4 = alloca %struct.sockaddr_hci, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.nodeinfo** %0, %struct.nodeinfo*** %2, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @MAX_NODE_NUM, align 4
  %8 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* @MAX_NODE_NUM, align 4
  %10 = call i64 @calloc(i32 %9, i32 4)
  %11 = inttoptr i64 %10 to %struct.nodeinfo*
  %12 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %3, i32 0, i32 1
  store %struct.nodeinfo* %11, %struct.nodeinfo** %12, align 8
  %13 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %3, i32 0, i32 1
  %14 = load %struct.nodeinfo*, %struct.nodeinfo** %13, align 8
  %15 = icmp eq %struct.nodeinfo* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @err(i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i32, i32* @PF_BLUETOOTH, align 4
  %20 = load i32, i32* @SOCK_RAW, align 4
  %21 = load i32, i32* @BLUETOOTH_PROTO_HCI, align 4
  %22 = call i32 @socket(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @err(i32 9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %18
  %28 = call i32 @memset(%struct.sockaddr_hci* %4, i32 0, i32 12)
  %29 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %4, i32 0, i32 0
  store i32 12, i32* %29, align 4
  %30 = load i32, i32* @AF_BLUETOOTH, align 4
  %31 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %4, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strncpy(i32 %33, i8* %34, i32 4)
  %36 = load i32, i32* %5, align 4
  %37 = bitcast %struct.sockaddr_hci* %4 to %struct.sockaddr*
  %38 = call i64 @bind(i32 %36, %struct.sockaddr* %37, i32 12)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = call i32 @err(i32 10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %27
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SIOC_HCI_RAW_NODE_LIST_NAMES, align 4
  %45 = call i64 @ioctl(i32 %43, i32 %44, %struct.ng_btsocket_hci_raw_node_list_names* %3, i32 16)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @err(i32 11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @close(i32 %50)
  %52 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %3, i32 0, i32 1
  %53 = load %struct.nodeinfo*, %struct.nodeinfo** %52, align 8
  %54 = load %struct.nodeinfo**, %struct.nodeinfo*** %2, align 8
  store %struct.nodeinfo* %53, %struct.nodeinfo** %54, align 8
  %55 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  ret i32 %56
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_hci*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_hci_raw_node_list_names*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
