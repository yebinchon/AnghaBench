; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_start_in_params = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"desired_cnq = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RDMA start - error, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_start(i8* %0, %struct.ecore_rdma_start_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_rdma_start_in_params*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_rdma_start_in_params* %1, %struct.ecore_rdma_start_in_params** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %10, %struct.ecore_hwfn** %6, align 8
  %11 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %13 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %14 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %12, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %19 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %18)
  store %struct.ecore_ptt* %19, %struct.ecore_ptt** %7, align 8
  %20 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %21 = icmp ne %struct.ecore_ptt* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %25 = call i32 @ecore_rdma_alloc(%struct.ecore_hwfn* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %47

29:                                               ; preds = %23
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %32 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %33 = call i32 @ecore_rdma_setup(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31, %struct.ecore_rdma_start_in_params* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %44

37:                                               ; preds = %29
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %39 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %40 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %38, %struct.ecore_ptt* %39)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %42 = call i32 @ecore_rdma_activate(%struct.ecore_hwfn* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %36
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %46 = call i32 @ecore_rdma_free(%struct.ecore_hwfn* %45)
  br label %47

47:                                               ; preds = %44, %28
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %49 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %50 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %48, %struct.ecore_ptt* %49)
  br label %51

51:                                               ; preds = %47, %22
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %53 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %52, i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %37
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_rdma_alloc(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_rdma_setup(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_rdma_start_in_params*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_rdma_activate(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_rdma_free(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
