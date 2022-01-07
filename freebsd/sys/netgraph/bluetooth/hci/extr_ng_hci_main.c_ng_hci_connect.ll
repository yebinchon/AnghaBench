; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/hci/extr_ng_hci_main.c_ng_hci_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/hci/extr_ng_hci_main.c_ng_hci_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32 }

@ng_hci_upper_rcvmsg = common dso_local global i32 0, align 4
@ng_hci_acl_rcvdata = common dso_local global i32 0, align 4
@ng_hci_sco_rcvdata = common dso_local global i32 0, align 4
@ng_hci_raw_rcvdata = common dso_local global i32 0, align 4
@ng_hci_node_is_up = common dso_local global i32 0, align 4
@NG_HCI_UNIT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ng_hci_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_hci_connect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @NG_HOOK_NODE(i64 %4)
  %6 = call i32 @NG_NODE_PRIVATE(i32 %5)
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = load i32, i32* @ng_hci_upper_rcvmsg, align 4
  %23 = call i32 @NG_HOOK_SET_RCVMSG(i64 %21, i32 %22)
  %24 = load i64, i64* %2, align 8
  %25 = load i32, i32* @ng_hci_acl_rcvdata, align 4
  %26 = call i32 @NG_HOOK_SET_RCVDATA(i64 %24, i32 %25)
  br label %45

27:                                               ; preds = %14
  %28 = load i64, i64* %2, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i64, i64* %2, align 8
  %35 = load i32, i32* @ng_hci_upper_rcvmsg, align 4
  %36 = call i32 @NG_HOOK_SET_RCVMSG(i64 %34, i32 %35)
  %37 = load i64, i64* %2, align 8
  %38 = load i32, i32* @ng_hci_sco_rcvdata, align 4
  %39 = call i32 @NG_HOOK_SET_RCVDATA(i64 %37, i32 %38)
  br label %44

40:                                               ; preds = %27
  %41 = load i64, i64* %2, align 8
  %42 = load i32, i32* @ng_hci_raw_rcvdata, align 4
  %43 = call i32 @NG_HOOK_SET_RCVDATA(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i64, i64* %2, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %2, align 8
  %56 = load i32, i32* @ng_hci_node_is_up, align 4
  %57 = call i32 @ng_send_fn(i32 %54, i64 %55, i32 %56, i32* null, i32 0)
  br label %58

58:                                               ; preds = %51, %45
  br label %65

59:                                               ; preds = %1
  %60 = load i32, i32* @NG_HCI_UNIT_CONNECTED, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %58
  ret i32 0
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i64) #1

declare dso_local i32 @NG_HOOK_SET_RCVMSG(i64, i32) #1

declare dso_local i32 @NG_HOOK_SET_RCVDATA(i64, i32) #1

declare dso_local i32 @ng_send_fn(i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
