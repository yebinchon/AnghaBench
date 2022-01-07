; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_del_mac_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_del_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32 }
%struct.iavf_mac_filter = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@IXL_FILTER_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_sc*, i32*)* @iavf_del_mac_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_del_mac_filter(%struct.iavf_sc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_sc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iavf_mac_filter*, align 8
  store %struct.iavf_sc* %0, %struct.iavf_sc** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call %struct.iavf_mac_filter* @iavf_find_mac_filter(%struct.iavf_sc* %7, i32* %8)
  store %struct.iavf_mac_filter* %9, %struct.iavf_mac_filter** %6, align 8
  %10 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  %11 = icmp eq %struct.iavf_mac_filter* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @IXL_FILTER_DEL, align 4
  %16 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  %17 = getelementptr inbounds %struct.iavf_mac_filter, %struct.iavf_mac_filter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.iavf_mac_filter* @iavf_find_mac_filter(%struct.iavf_sc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
