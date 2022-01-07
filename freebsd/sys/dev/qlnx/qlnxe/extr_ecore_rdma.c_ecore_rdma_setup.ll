; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_rdma_start_in_params = type { i32 }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RDMA setup\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_rdma_start_in_params*)* @ecore_rdma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_rdma_setup(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_rdma_start_in_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_rdma_start_in_params*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_rdma_start_in_params* %2, %struct.ecore_rdma_start_in_params** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %10 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %11 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %9, i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %7, align 8
  %14 = call i32 @ecore_rdma_init_devinfo(%struct.ecore_hwfn* %12, %struct.ecore_rdma_start_in_params* %13)
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = call i32 @ecore_rdma_init_port(%struct.ecore_hwfn* %15)
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %7, align 8
  %19 = call i32 @ecore_rdma_init_events(%struct.ecore_hwfn* %17, %struct.ecore_rdma_start_in_params* %18)
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %21 = call i32 @ecore_rdma_reserve_lkey(%struct.ecore_hwfn* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ECORE_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %30 = call i32 @ecore_rdma_init_hw(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %27
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %38 = call i64 @IS_IWARP(%struct.ecore_hwfn* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %42 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %7, align 8
  %43 = call i32 @ecore_iwarp_setup(%struct.ecore_hwfn* %41, %struct.ecore_rdma_start_in_params* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ECORE_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %64

49:                                               ; preds = %40
  br label %59

50:                                               ; preds = %36
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %52 = call i32 @ecore_roce_setup(%struct.ecore_hwfn* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ECORE_SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %49
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %61 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %62 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %7, align 8
  %63 = call i32 @ecore_rdma_start_fw(%struct.ecore_hwfn* %60, %struct.ecore_ptt* %61, %struct.ecore_rdma_start_in_params* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %56, %47, %34, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_rdma_init_devinfo(%struct.ecore_hwfn*, %struct.ecore_rdma_start_in_params*) #1

declare dso_local i32 @ecore_rdma_init_port(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_rdma_init_events(%struct.ecore_hwfn*, %struct.ecore_rdma_start_in_params*) #1

declare dso_local i32 @ecore_rdma_reserve_lkey(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_rdma_init_hw(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iwarp_setup(%struct.ecore_hwfn*, %struct.ecore_rdma_start_in_params*) #1

declare dso_local i32 @ecore_roce_setup(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_rdma_start_fw(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_rdma_start_in_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
