; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_table_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rib_head = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@M_RTABLE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@rn_addroute = common dso_local global i32 0, align 4
@rn_delete = common dso_local global i32 0, align 4
@rn_match = common dso_local global i32 0, align 4
@rn_lookup = common dso_local global i32 0, align 4
@rn_walktree = common dso_local global i32 0, align 4
@rn_walktree_from = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rib_head* @rt_table_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rib_head*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @M_RTABLE, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.rib_head* @malloc(i32 56, i32 %4, i32 %7)
  store %struct.rib_head* %8, %struct.rib_head** %3, align 8
  %9 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %10 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %9, i32 0, i32 7
  %11 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %12 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @rn_inithead_internal(%struct.TYPE_4__* %10, i32 %13, i32 %14)
  %16 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %17 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %20 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @rn_inithead_internal(%struct.TYPE_4__* %18, i32 %22, i32 0)
  %24 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %25 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %24, i32 0, i32 6
  %26 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %27 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %30 = call i32 @RIB_LOCK_INIT(%struct.rib_head* %29)
  %31 = load i32, i32* @rn_addroute, align 4
  %32 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %33 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @rn_delete, align 4
  %35 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %36 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @rn_match, align 4
  %38 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %39 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @rn_lookup, align 4
  %41 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %42 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @rn_walktree, align 4
  %44 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %45 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @rn_walktree_from, align 4
  %47 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  %48 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.rib_head*, %struct.rib_head** %3, align 8
  ret %struct.rib_head* %49
}

declare dso_local %struct.rib_head* @malloc(i32, i32, i32) #1

declare dso_local i32 @rn_inithead_internal(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @RIB_LOCK_INIT(%struct.rib_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
