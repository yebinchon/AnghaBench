; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_info_port_num_ah_e5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_info_port_num_ah_e5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { i32 }
%struct.ecore_ptt = type { i32 }

@MISCS_REG_ECO_RESERVED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unknown port mode in ECO_RESERVED %08x\0A\00", align 1
@MAX_NUM_PORTS_K2 = common dso_local global i32 0, align 4
@CNIG_REG_NIG_PORT0_CONF_K2_E5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"All NIG ports are inactive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_hw_info_port_num_ah_e5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_hw_info_port_num_ah_e5(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.ecore_dev*, %struct.ecore_dev** %9, align 8
  store %struct.ecore_dev* %10, %struct.ecore_dev** %5, align 8
  %11 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %14 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %19 = load i64, i64* @MISCS_REG_ECO_RESERVED, align 8
  %20 = call i32 @ecore_rd(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 61440
  %23 = ashr i32 %22, 12
  switch i32 %23, label %33 [
    i32 1, label %24
    i32 3, label %27
    i32 15, label %30
  ]

24:                                               ; preds = %16
  %25 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %37

27:                                               ; preds = %16
  %28 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %28, i32 0, i32 0
  store i32 2, i32* %29, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %31, i32 0, i32 0
  store i32 4, i32* %32, align 4
  br label %37

33:                                               ; preds = %16
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %34, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30, %27, %24
  br label %65

38:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MAX_NUM_PORTS_K2, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %45 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %46 = load i64, i64* @CNIG_REG_NIG_PORT0_CONF_K2_E5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = call i32 @ecore_rd(%struct.ecore_hwfn* %44, %struct.ecore_ptt* %45, i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %57 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %39

64:                                               ; preds = %39
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %67 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %72 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %71, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %74 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %65
  ret void
}

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
