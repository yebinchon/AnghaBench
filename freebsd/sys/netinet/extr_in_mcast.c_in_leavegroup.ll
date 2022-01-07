; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_in_leavegroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_mcast.c_in_leavegroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_multi = type { i32 }
%struct.in_mfilter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_leavegroup(%struct.in_multi* %0, %struct.in_mfilter* %1) #0 {
  %3 = alloca %struct.in_multi*, align 8
  %4 = alloca %struct.in_mfilter*, align 8
  %5 = alloca i32, align 4
  store %struct.in_multi* %0, %struct.in_multi** %3, align 8
  store %struct.in_mfilter* %1, %struct.in_mfilter** %4, align 8
  %6 = call i32 (...) @IN_MULTI_LOCK()
  %7 = load %struct.in_multi*, %struct.in_multi** %3, align 8
  %8 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %9 = call i32 @in_leavegroup_locked(%struct.in_multi* %7, %struct.in_mfilter* %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @IN_MULTI_UNLOCK()
  %11 = load i32, i32* %5, align 4
  ret i32 %11
}

declare dso_local i32 @IN_MULTI_LOCK(...) #1

declare dso_local i32 @in_leavegroup_locked(%struct.in_multi*, %struct.in_mfilter*) #1

declare dso_local i32 @IN_MULTI_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
