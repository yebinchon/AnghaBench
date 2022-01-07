; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_get_device_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_hw_info = type { i64 }

@pci_ids = common dso_local global %struct.ntb_hw_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ntb_hw_info* (i64)* @intel_ntb_get_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ntb_hw_info* @intel_ntb_get_device_info(i64 %0) #0 {
  %2 = alloca %struct.ntb_hw_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ntb_hw_info*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** @pci_ids, align 8
  store %struct.ntb_hw_info* %5, %struct.ntb_hw_info** %4, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** %4, align 8
  %8 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** @pci_ids, align 8
  %9 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** @pci_ids, align 8
  %10 = call i64 @nitems(%struct.ntb_hw_info* %9)
  %11 = getelementptr inbounds %struct.ntb_hw_info, %struct.ntb_hw_info* %8, i64 %10
  %12 = icmp ult %struct.ntb_hw_info* %7, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %6
  %14 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** %4, align 8
  %15 = getelementptr inbounds %struct.ntb_hw_info, %struct.ntb_hw_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** %4, align 8
  store %struct.ntb_hw_info* %20, %struct.ntb_hw_info** %2, align 8
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** %4, align 8
  %24 = getelementptr inbounds %struct.ntb_hw_info, %struct.ntb_hw_info* %23, i32 1
  store %struct.ntb_hw_info* %24, %struct.ntb_hw_info** %4, align 8
  br label %6

25:                                               ; preds = %6
  store %struct.ntb_hw_info* null, %struct.ntb_hw_info** %2, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %struct.ntb_hw_info*, %struct.ntb_hw_info** %2, align 8
  ret %struct.ntb_hw_info* %27
}

declare dso_local i64 @nitems(%struct.ntb_hw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
