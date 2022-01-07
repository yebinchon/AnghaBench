; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_table_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rib_head = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rt_freeentry = common dso_local global i32 0, align 4
@M_RTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_table_destroy(%struct.rib_head* %0) #0 {
  %2 = alloca %struct.rib_head*, align 8
  store %struct.rib_head* %0, %struct.rib_head** %2, align 8
  %3 = load %struct.rib_head*, %struct.rib_head** %2, align 8
  %4 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* @rt_freeentry, align 4
  %7 = load %struct.rib_head*, %struct.rib_head** %2, align 8
  %8 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @rn_walktree(i32* %5, i32 %6, i32* %9)
  %11 = load %struct.rib_head*, %struct.rib_head** %2, align 8
  %12 = call i32 @RIB_LOCK_DESTROY(%struct.rib_head* %11)
  %13 = load %struct.rib_head*, %struct.rib_head** %2, align 8
  %14 = load i32, i32* @M_RTABLE, align 4
  %15 = call i32 @free(%struct.rib_head* %13, i32 %14)
  ret void
}

declare dso_local i32 @rn_walktree(i32*, i32, i32*) #1

declare dso_local i32 @RIB_LOCK_DESTROY(%struct.rib_head*) #1

declare dso_local i32 @free(%struct.rib_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
