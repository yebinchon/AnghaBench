; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_info_port_num_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_info_port_num_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { i32 }
%struct.ecore_ptt = type { i32 }

@CNIG_REG_NW_PORT_MODE_BB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PORT MODE: %d not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_hw_info_port_num_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_hw_info_port_num_bb(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  store %struct.ecore_dev* %9, %struct.ecore_dev** %5, align 8
  %10 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %11 = call i64 @CHIP_REV_IS_FPGA(%struct.ecore_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %16 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %20 = call i64 @ECORE_IS_CMT(%struct.ecore_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %28

23:                                               ; preds = %18, %14
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %26 = load i32, i32* @CNIG_REG_NW_PORT_MODE_BB, align 4
  %27 = call i32 @ecore_rd(%struct.ecore_hwfn* %24, %struct.ecore_ptt* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %22
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %34 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %50

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %40 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %39, i32 0, i32 0
  store i32 2, i32* %40, align 4
  br label %49

41:                                               ; preds = %35
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %43 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %44 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %42, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %48 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %38
  br label %50

50:                                               ; preds = %49, %32
  ret void
}

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.ecore_dev*) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev*) #1

declare dso_local i64 @ECORE_IS_CMT(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
