; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { %struct.resource_i* }
%struct.resource_i = type { %struct.rman* }
%struct.rman = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rman_release_resource(%struct.resource* %0) #0 {
  %2 = alloca %struct.resource*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource_i*, align 8
  %5 = alloca %struct.rman*, align 8
  store %struct.resource* %0, %struct.resource** %2, align 8
  %6 = load %struct.resource*, %struct.resource** %2, align 8
  %7 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %8 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  store %struct.resource_i* %8, %struct.resource_i** %4, align 8
  %9 = load %struct.resource_i*, %struct.resource_i** %4, align 8
  %10 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %9, i32 0, i32 0
  %11 = load %struct.rman*, %struct.rman** %10, align 8
  store %struct.rman* %11, %struct.rman** %5, align 8
  %12 = load %struct.rman*, %struct.rman** %5, align 8
  %13 = getelementptr inbounds %struct.rman, %struct.rman* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mtx_lock(i32 %14)
  %16 = load %struct.rman*, %struct.rman** %5, align 8
  %17 = load %struct.resource_i*, %struct.resource_i** %4, align 8
  %18 = call i32 @int_rman_release_resource(%struct.rman* %16, %struct.resource_i* %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.rman*, %struct.rman** %5, align 8
  %20 = getelementptr inbounds %struct.rman, %struct.rman* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mtx_unlock(i32 %21)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @int_rman_release_resource(%struct.rman*, %struct.resource_i*) #1

declare dso_local i32 @mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
