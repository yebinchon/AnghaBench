; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_evnt.c_send_l2cap_con_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_evnt.c_send_l2cap_con_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@NG_L2CAP_CON_RSP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @send_l2cap_con_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_l2cap_con_rej(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NG_L2CAP_CON_RSP, align 4
  %16 = call %struct.TYPE_5__* @ng_l2cap_new_cmd(i32 %13, i32* null, i32 %14, i32 %15, i32 0)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %6, align 4
  br label %46

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @_ng_l2cap_con_rsp(i32* %24, i32 %27, i32 %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = call i32 @ng_l2cap_free_cmd(%struct.TYPE_5__* %37)
  %39 = load i32, i32* @ENOBUFS, align 4
  store i32 %39, i32* %6, align 4
  br label %46

40:                                               ; preds = %21
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %43 = call i32 @ng_l2cap_link_cmd(i32 %41, %struct.TYPE_5__* %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ng_l2cap_lp_deliver(i32 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %36, %19
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_5__* @ng_l2cap_new_cmd(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_ng_l2cap_con_rsp(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ng_l2cap_free_cmd(%struct.TYPE_5__*) #1

declare dso_local i32 @ng_l2cap_link_cmd(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ng_l2cap_lp_deliver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
