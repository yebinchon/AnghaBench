; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_fabric.c_ocs_start_fabctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_fabric.c_ocs_start_fabctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FC_ADDR_CONTROLLER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@__ocs_fabctl_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ocs_start_fabctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_start_fabctl_node(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @FC_ADDR_CONTROLLER, align 4
  %7 = call i32* @ocs_node_find(i32* %5, i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @FC_ADDR_CONTROLLER, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32* @ocs_node_alloc(i32* %11, i32 %12, i32 %13, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %24

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @__ocs_fabctl_init, align 4
  %23 = call i32 @ocs_node_transition(i32* %21, i32 %22, i32* null)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32* @ocs_node_find(i32*, i32) #1

declare dso_local i32* @ocs_node_alloc(i32*, i32, i32, i32) #1

declare dso_local i32 @ocs_node_transition(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
