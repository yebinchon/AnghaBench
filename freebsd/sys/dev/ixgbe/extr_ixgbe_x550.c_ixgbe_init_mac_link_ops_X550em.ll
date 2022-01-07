; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_mac_link_ops_X550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_mac_link_ops_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.ixgbe_mac_info }
%struct.ixgbe_mac_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ixgbe_hw.0*)*, i8*, i32, i32, i32, i32*, i32*, i32* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"ixgbe_init_mac_link_ops_X550em\00", align 1
@ixgbe_setup_mac_link_multispeed_fiber = common dso_local global i8* null, align 8
@ixgbe_set_soft_rate_select_speed = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SFP_N = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SFP = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_sfp_x550a = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_sfp_x550em = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_1G_T = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_a = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T_L = common dso_local global i32 0, align 4
@ixgbe_setup_sgmii_fw = common dso_local global i8* null, align 8
@ixgbe_check_mac_link_generic = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_t_X550em = common dso_local global i8* null, align 8
@ixgbe_check_link_t_X550em = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SGMII = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SGMII_L = common dso_local global i32 0, align 4
@ixgbe_setup_sgmii = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_init_mac_link_ops_X550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 1
  store %struct.ixgbe_mac_info* %5, %struct.ixgbe_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %10, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = bitcast %struct.ixgbe_hw* %12 to %struct.ixgbe_hw.0*
  %14 = call i32 %11(%struct.ixgbe_hw.0* %13)
  switch i32 %14, label %124 [
    i32 128, label %15
    i32 129, label %55
    i32 130, label %106
  ]

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  store i32* null, i32** %18, align 8
  %19 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 6
  store i32* null, i32** %21, align 8
  %22 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = load i8*, i8** @ixgbe_setup_mac_link_multispeed_fiber, align 8
  %26 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* @ixgbe_set_soft_rate_select_speed, align 4
  %30 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SFP_N, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %15
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SFP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %15
  %45 = load i32, i32* @ixgbe_setup_mac_link_sfp_x550a, align 4
  %46 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  br label %54

49:                                               ; preds = %38
  %50 = load i32, i32* @ixgbe_setup_mac_link_sfp_x550em, align 4
  %51 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %44
  br label %125

55:                                               ; preds = %1
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IXGBE_DEV_ID_X550EM_X_1G_T, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %125

62:                                               ; preds = %55
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ixgbe_mac_X550EM_a, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %62
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T_L, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75, %69
  %82 = load i8*, i8** @ixgbe_setup_sgmii_fw, align 8
  %83 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* @ixgbe_check_mac_link_generic, align 4
  %87 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  br label %95

90:                                               ; preds = %75
  %91 = load i8*, i8** @ixgbe_setup_mac_link_t_X550em, align 8
  %92 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %93 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %81
  br label %105

96:                                               ; preds = %62
  %97 = load i8*, i8** @ixgbe_setup_mac_link_t_X550em, align 8
  %98 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load i32, i32* @ixgbe_check_link_t_X550em, align 4
  %102 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %103 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  br label %105

105:                                              ; preds = %96, %95
  br label %125

106:                                              ; preds = %1
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %108 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SGMII, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %114 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SGMII_L, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112, %106
  %119 = load i8*, i8** @ixgbe_setup_sgmii, align 8
  %120 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %121 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  br label %123

123:                                              ; preds = %118, %112
  br label %125

124:                                              ; preds = %1
  br label %125

125:                                              ; preds = %124, %123, %105, %61, %54
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
