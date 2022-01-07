; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_get_mac_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_get_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_mac_filter = type { i32 }
%struct.iavf_sc = type { i32 }

@M_IAVF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iavf_mac_filter* (%struct.iavf_sc*)* @iavf_get_mac_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iavf_mac_filter* @iavf_get_mac_filter(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.iavf_mac_filter*, align 8
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %4 = load i32, i32* @M_IAVF, align 4
  %5 = load i32, i32* @M_NOWAIT, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.iavf_mac_filter* @malloc(i32 4, i32 %4, i32 %7)
  store %struct.iavf_mac_filter* %8, %struct.iavf_mac_filter** %3, align 8
  %9 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %3, align 8
  %10 = icmp ne %struct.iavf_mac_filter* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %13 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %3, align 8
  %16 = load i32, i32* @next, align 4
  %17 = call i32 @SLIST_INSERT_HEAD(i32 %14, %struct.iavf_mac_filter* %15, i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %3, align 8
  ret %struct.iavf_mac_filter* %19
}

declare dso_local %struct.iavf_mac_filter* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32, %struct.iavf_mac_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
