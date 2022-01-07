; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@M_NETGRAPH_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_bridge_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bridge_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @NG_HOOK_NODE(i32 %5)
  %7 = call %struct.TYPE_4__* @NG_NODE_PRIVATE(i32 %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @NG_HOOK_PRIVATE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ng_bridge_remove_hosts(%struct.TYPE_4__* %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @M_NETGRAPH_BRIDGE, align 4
  %15 = call i32 @free(i32 %13, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @NG_HOOK_NODE(i32 %20)
  %22 = call i64 @NG_NODE_NUMHOOKS(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @NG_HOOK_NODE(i32 %25)
  %27 = call i64 @NG_NODE_IS_VALID(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @NG_HOOK_NODE(i32 %35)
  %37 = call i32 @ng_rmnode_self(i32 %36)
  br label %38

38:                                               ; preds = %34, %29, %24, %1
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i32 @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @ng_bridge_remove_hosts(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
