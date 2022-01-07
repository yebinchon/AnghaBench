; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_write_node_role_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_write_node_role_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_btsocket_hci_raw_node_role_switch = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_SET_ROLE_SWITCH = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_write_node_role_switch(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ng_btsocket_hci_raw_node_role_switch, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = call i32 @memset(%struct.ng_btsocket_hci_raw_node_role_switch* %8, i32 0, i32 4)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %26 [
    i32 1, label %12
  ]

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @USAGE, align 4
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_role_switch, %struct.ng_btsocket_hci_raw_node_role_switch* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @USAGE, align 4
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SIOC_HCI_RAW_NODE_SET_ROLE_SWITCH, align 4
  %31 = call i64 @ioctl(i32 %29, i32 %30, %struct.ng_btsocket_hci_raw_node_role_switch* %8, i32 4)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @OK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %33, %26, %18
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.ng_btsocket_hci_raw_node_role_switch*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_hci_raw_node_role_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
