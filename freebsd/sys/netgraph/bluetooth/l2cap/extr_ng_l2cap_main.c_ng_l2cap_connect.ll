; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_main.c_ng_l2cap_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_main.c_ng_l2cap_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@ng_l2cap_lower_rcvmsg = common dso_local global i32 0, align 4
@ng_l2cap_upper_rcvmsg = common dso_local global i32 0, align 4
@ng_l2cap_send_hook_info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ng_l2cap_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_l2cap_connect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @NG_HOOK_NODE(i64 %5)
  %7 = call i32 @NG_NODE_PRIVATE(i32 %6)
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i64, i64* %2, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = load i32, i32* @ng_l2cap_lower_rcvmsg, align 4
  %18 = call i32 @NG_HOOK_SET_RCVMSG(i64 %16, i32 %17)
  br label %44

19:                                               ; preds = %1
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25, %19
  %32 = load i64, i64* %2, align 8
  %33 = load i32, i32* @ng_l2cap_upper_rcvmsg, align 4
  %34 = call i32 @NG_HOOK_SET_RCVMSG(i64 %32, i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %2, align 8
  %39 = load i32, i32* @ng_l2cap_send_hook_info, align 4
  %40 = call i32 @ng_send_fn(i32 %37, i64 %38, i32 %39, i32* null, i32 0)
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %31
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i64) #1

declare dso_local i32 @NG_HOOK_SET_RCVMSG(i64, i32) #1

declare dso_local i32 @ng_send_fn(i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
