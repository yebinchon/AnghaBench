; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_rmnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_rmnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@V_ng_eiface_unit = common dso_local global i32 0, align 4
@M_NETGRAPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_eiface_rmnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_eiface_rmnode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.TYPE_4__* @NG_NODE_PRIVATE(i32 %5)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CURVNET_SET_QUIET(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @ifmedia_removeall(i32* %15)
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = call i32 @ether_ifdetach(%struct.ifnet* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = call i32 @if_free(%struct.ifnet* %19)
  %21 = call i32 (...) @CURVNET_RESTORE()
  %22 = load i32, i32* @V_ng_eiface_unit, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @free_unr(i32 %22, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = load i32, i32* @M_NETGRAPH, align 4
  %29 = call i32 @free(%struct.TYPE_4__* %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @NG_NODE_SET_PRIVATE(i32 %30, i32* null)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @NG_NODE_UNREF(i32 %32)
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @CURVNET_SET_QUIET(i32) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, i32*) #1

declare dso_local i32 @NG_NODE_UNREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
