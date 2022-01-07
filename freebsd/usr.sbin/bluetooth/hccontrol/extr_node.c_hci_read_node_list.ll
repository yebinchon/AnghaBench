; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_read_node_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_read_node_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_btsocket_hci_raw_node_list_names = type { i32, %struct.nodeinfo* }
%struct.nodeinfo = type { i8*, i32, i32 }

@MAX_NODE_NUM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_LIST_NAMES = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Name            ID       Num hooks\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%-15s %08x %9d\0A\00", align 1
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_read_node_list(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ng_btsocket_hci_raw_node_list_names, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* @MAX_NODE_NUM, align 4
  %11 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @MAX_NODE_NUM, align 4
  %13 = call i64 @calloc(i32 %12, i32 16)
  %14 = inttoptr i64 %13 to %struct.nodeinfo*
  %15 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 1
  store %struct.nodeinfo* %14, %struct.nodeinfo** %15, align 8
  %16 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 1
  %17 = load %struct.nodeinfo*, %struct.nodeinfo** %16, align 8
  %18 = icmp eq %struct.nodeinfo* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SIOC_HCI_RAW_NODE_LIST_NAMES, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 16)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 1
  %28 = load %struct.nodeinfo*, %struct.nodeinfo** %27, align 8
  %29 = call i32 @free(%struct.nodeinfo* %28)
  %30 = load i32, i32* @ERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %21
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %63, %31
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load i32, i32* @stdout, align 4
  %41 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 1
  %42 = load %struct.nodeinfo*, %struct.nodeinfo** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %42, i64 %44
  %46 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 1
  %49 = load %struct.nodeinfo*, %struct.nodeinfo** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %49, i64 %51
  %53 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 1
  %56 = load %struct.nodeinfo*, %struct.nodeinfo** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %56, i64 %58
  %60 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %54, i32 %61)
  br label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %34

66:                                               ; preds = %34
  %67 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %8, i32 0, i32 1
  %68 = load %struct.nodeinfo*, %struct.nodeinfo** %67, align 8
  %69 = call i32 @free(%struct.nodeinfo* %68)
  %70 = load i32, i32* @OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %26, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_hci_raw_node_list_names*, i32) #1

declare dso_local i32 @free(%struct.nodeinfo*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
