; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_write_debug_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_write_debug_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_btsocket_hci_raw_node_debug = type { i32 }

@USAGE = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_SET_DEBUG = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_write_debug_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_write_debug_level(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ng_btsocket_hci_raw_node_debug, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = call i32 @memset(%struct.ng_btsocket_hci_raw_node_debug* %8, i32 0, i32 4)
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %17 [
    i32 1, label %11
  ]

11:                                               ; preds = %3
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @atoi(i8* %14)
  %16 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_debug, %struct.ng_btsocket_hci_raw_node_debug* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @USAGE, align 4
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SIOC_HCI_RAW_NODE_SET_DEBUG, align 4
  %22 = call i64 @ioctl(i32 %20, i32 %21, %struct.ng_btsocket_hci_raw_node_debug* %8, i32 4)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @OK, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %24, %17
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @memset(%struct.ng_btsocket_hci_raw_node_debug*, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_hci_raw_node_debug*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
