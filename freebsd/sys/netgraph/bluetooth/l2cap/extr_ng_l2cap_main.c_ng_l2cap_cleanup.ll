; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_main.c_ng_l2cap_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_main.c_ng_l2cap_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@NG_L2CAP_CON_LP_TIMO = common dso_local global i32 0, align 4
@NG_L2CAP_CON_AUTO_DISCON_TIMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ng_l2cap_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_l2cap_cleanup(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %4

4:                                                ; preds = %34, %1
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = call i32 @LIST_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %37

10:                                               ; preds = %4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = call %struct.TYPE_9__* @LIST_FIRST(i32* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NG_L2CAP_CON_LP_TIMO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = call i32 @ng_l2cap_lp_untimeout(%struct.TYPE_9__* %21)
  br label %34

23:                                               ; preds = %10
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NG_L2CAP_CON_AUTO_DISCON_TIMO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i32 @ng_l2cap_discon_untimeout(%struct.TYPE_9__* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i32 @ng_l2cap_con_fail(%struct.TYPE_9__* %35, i32 22)
  br label %4

37:                                               ; preds = %4
  ret void
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.TYPE_9__* @LIST_FIRST(i32*) #1

declare dso_local i32 @ng_l2cap_lp_untimeout(%struct.TYPE_9__*) #1

declare dso_local i32 @ng_l2cap_discon_untimeout(%struct.TYPE_9__*) #1

declare dso_local i32 @ng_l2cap_con_fail(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
