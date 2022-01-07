; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_validate_queue_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_validate_queue_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_vf_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ecore_vf_queue_cid* }
%struct.ecore_vf_queue_cid = type { i64, i32 }

@ECORE_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@MAX_QUEUES_PER_QZONE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i64 0, align 8
@ECORE_IOV_VALIDATE_Q_ENABLE = common dso_local global i32 0, align 4
@ECORE_IOV_VALIDATE_Q_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_vf_info*, i64, i32, i32)* @ecore_iov_validate_queue_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_validate_queue_mode(%struct.ecore_vf_info* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_vf_queue_cid*, align 8
  store %struct.ecore_vf_info* %0, %struct.ecore_vf_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @ECORE_IOV_VALIDATE_Q_NA, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %58

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MAX_QUEUES_PER_QZONE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ecore_vf_queue_cid*, %struct.ecore_vf_queue_cid** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ecore_vf_queue_cid, %struct.ecore_vf_queue_cid* %28, i64 %30
  store %struct.ecore_vf_queue_cid* %31, %struct.ecore_vf_queue_cid** %11, align 8
  %32 = load %struct.ecore_vf_queue_cid*, %struct.ecore_vf_queue_cid** %11, align 8
  %33 = getelementptr inbounds %struct.ecore_vf_queue_cid, %struct.ecore_vf_queue_cid* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OSAL_NULL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %50

38:                                               ; preds = %21
  %39 = load %struct.ecore_vf_queue_cid*, %struct.ecore_vf_queue_cid** %11, align 8
  %40 = getelementptr inbounds %struct.ecore_vf_queue_cid, %struct.ecore_vf_queue_cid* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ECORE_IOV_VALIDATE_Q_ENABLE, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %58

50:                                               ; preds = %44, %37
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ECORE_IOV_VALIDATE_Q_DISABLE, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %45, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
