; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { %struct.resource_i* }
%struct.resource_i = type { i32, %struct.rman* }
%struct.rman = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rman_activate_resource(%struct.resource* %0) #0 {
  %2 = alloca %struct.resource*, align 8
  %3 = alloca %struct.resource_i*, align 8
  %4 = alloca %struct.rman*, align 8
  store %struct.resource* %0, %struct.resource** %2, align 8
  %5 = load %struct.resource*, %struct.resource** %2, align 8
  %6 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %7 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  store %struct.resource_i* %7, %struct.resource_i** %3, align 8
  %8 = load %struct.resource_i*, %struct.resource_i** %3, align 8
  %9 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %8, i32 0, i32 1
  %10 = load %struct.rman*, %struct.rman** %9, align 8
  store %struct.rman* %10, %struct.rman** %4, align 8
  %11 = load %struct.rman*, %struct.rman** %4, align 8
  %12 = getelementptr inbounds %struct.rman, %struct.rman* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mtx_lock(i32 %13)
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = load %struct.resource_i*, %struct.resource_i** %3, align 8
  %17 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.rman*, %struct.rman** %4, align 8
  %21 = getelementptr inbounds %struct.rman, %struct.rman* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mtx_unlock(i32 %22)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
