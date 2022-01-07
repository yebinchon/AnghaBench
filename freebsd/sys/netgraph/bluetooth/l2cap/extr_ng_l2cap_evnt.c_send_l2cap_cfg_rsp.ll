; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_evnt.c_send_l2cap_cfg_rsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_evnt.c_send_l2cap_cfg_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@NG_L2CAP_CFG_RSP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.mbuf*)* @send_l2cap_cfg_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_l2cap_cfg_rsp(i32 %0, i32 %1, i32 %2, i32 %3, %struct.mbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NG_L2CAP_CFG_RSP, align 4
  %16 = call %struct.TYPE_5__* @ng_l2cap_new_cmd(i32 %13, i32* null, i32 %14, i32 %15, i32 0)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %12, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %21 = call i32 @NG_FREE_M(%struct.mbuf* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %6, align 4
  br label %48

23:                                               ; preds = %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %33 = call i32 @_ng_l2cap_cfg_rsp(i32* %26, i32 %29, i32 %30, i32 0, i32 %31, %struct.mbuf* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = call i32 @ng_l2cap_free_cmd(%struct.TYPE_5__* %39)
  %41 = load i32, i32* @ENOBUFS, align 4
  store i32 %41, i32* %6, align 4
  br label %48

42:                                               ; preds = %23
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = call i32 @ng_l2cap_link_cmd(i32 %43, %struct.TYPE_5__* %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ng_l2cap_lp_deliver(i32 %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %38, %19
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_5__* @ng_l2cap_new_cmd(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @_ng_l2cap_cfg_rsp(i32*, i32, i32, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @ng_l2cap_free_cmd(%struct.TYPE_5__*) #1

declare dso_local i32 @ng_l2cap_link_cmd(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ng_l2cap_lp_deliver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
