; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_mbx.c_ixgbe_init_mbx_params_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_mbx.c_ixgbe_init_mbx_params_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.ixgbe_mbx_info }
%struct.TYPE_4__ = type { i64 }
%struct.ixgbe_mbx_info = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@ixgbe_mac_X550EM_x = common dso_local global i64 0, align 8
@ixgbe_mac_X550EM_a = common dso_local global i64 0, align 8
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@ixgbe_read_mbx_pf = common dso_local global i32 0, align 4
@ixgbe_write_mbx_pf = common dso_local global i32 0, align 4
@ixgbe_read_posted_mbx = common dso_local global i32 0, align 4
@ixgbe_write_posted_mbx = common dso_local global i32 0, align 4
@ixgbe_check_for_msg_pf = common dso_local global i32 0, align 4
@ixgbe_check_for_ack_pf = common dso_local global i32 0, align 4
@ixgbe_check_for_rst_pf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_init_mbx_params_pf(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mbx_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 1
  store %struct.ixgbe_mbx_info* %5, %struct.ixgbe_mbx_info** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ixgbe_mac_X550, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %12
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ixgbe_mac_X550EM_a, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ixgbe_mac_X540, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %92

41:                                               ; preds = %33, %26, %19, %12, %1
  %42 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %45 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  %47 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ixgbe_read_mbx_pf, align 4
  %50 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %51 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @ixgbe_write_mbx_pf, align 4
  %54 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @ixgbe_read_posted_mbx, align 4
  %58 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @ixgbe_write_posted_mbx, align 4
  %62 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %63 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @ixgbe_check_for_msg_pf, align 4
  %66 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %67 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @ixgbe_check_for_ack_pf, align 4
  %70 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @ixgbe_check_for_rst_pf, align 4
  %74 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %75 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %81 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %90 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %41, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
