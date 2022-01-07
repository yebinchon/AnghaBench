; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_main.c_ng_l2cap_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_main.c_ng_l2cap_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.mbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @ng_l2cap_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_l2cap_rcvdata(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @NG_HOOK_NODE(i64 %8)
  %10 = call i32 @NG_NODE_PRIVATE(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = call i32 @NGI_GET_M(i32 %13, %struct.mbuf* %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @NG_FREE_ITEM(i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = call i32 @ng_l2cap_lp_receive(%struct.TYPE_4__* %24, %struct.mbuf* %25)
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = call i32 @ng_l2cap_l2ca_write_req(%struct.TYPE_4__* %34, %struct.mbuf* %35)
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = call i32 @NG_FREE_M(%struct.mbuf* %38)
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i64) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @ng_l2cap_lp_receive(%struct.TYPE_4__*, %struct.mbuf*) #1

declare dso_local i32 @ng_l2cap_l2ca_write_req(%struct.TYPE_4__*, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
