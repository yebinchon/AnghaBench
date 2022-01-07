; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_xerr_cam_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_xerr_cam_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XE_PARITY_ERR = common dso_local global i32 0, align 4
@CAM_UNCOR_PARITY = common dso_local global i32 0, align 4
@XE_EXTRA_DATA = common dso_local global i32 0, align 4
@XE_SODL_UNRUN = common dso_local global i32 0, align 4
@XE_SWIDE_OVRUN = common dso_local global i32 0, align 4
@CAM_DATA_RUN_ERR = common dso_local global i32 0, align 4
@XE_BAD_PHASE = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sym_xerr_cam_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_xerr_cam_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @XE_PARITY_ERR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %7
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @XE_EXTRA_DATA, align 4
  %17 = load i32, i32* @XE_SODL_UNRUN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @XE_SWIDE_OVRUN, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @CAM_DATA_RUN_ERR, align 4
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @XE_BAD_PHASE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %12
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
