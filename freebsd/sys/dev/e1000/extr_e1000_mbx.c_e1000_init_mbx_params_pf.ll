; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_init_mbx_params_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_init_mbx_params_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_mbx_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_mbx_info = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@E1000_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@e1000_read_mbx_pf = common dso_local global i32 0, align 4
@e1000_write_mbx_pf = common dso_local global i32 0, align 4
@e1000_read_posted_mbx = common dso_local global i32 0, align 4
@e1000_write_posted_mbx = common dso_local global i32 0, align 4
@e1000_check_for_msg_pf = common dso_local global i32 0, align 4
@e1000_check_for_ack_pf = common dso_local global i32 0, align 4
@e1000_check_for_rst_pf = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_init_mbx_params_pf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mbx_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 1
  store %struct.e1000_mbx_info* %5, %struct.e1000_mbx_info** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %61 [
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1, %1
  %11 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %11, i32 0, i32 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %13, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %16 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @e1000_read_mbx_pf, align 4
  %19 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @e1000_write_mbx_pf, align 4
  %23 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @e1000_read_posted_mbx, align 4
  %27 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @e1000_write_posted_mbx, align 4
  %31 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @e1000_check_for_msg_pf, align 4
  %35 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @e1000_check_for_ack_pf, align 4
  %39 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @e1000_check_for_rst_pf, align 4
  %43 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %1, %10
  %62 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
