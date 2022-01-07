; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"hwvol_config\00", align 1
@HV_BUTTON_FROM_GD = common dso_local global i32 0, align 4
@PCI_ALLEGRO_CONFIG = common dso_local global i32 0, align 4
@REDUCED_DEBOUNCE = common dso_local global i32 0, align 4
@HV_CTRL_ENABLE = common dso_local global i32 0, align 4
@PM_CTRL_ENABLE = common dso_local global i32 0, align 4
@CLK_DIV_BY_49 = common dso_local global i32 0, align 4
@USE_PCI_TIMING = common dso_local global i32 0, align 4
@ASSP_CONTROL_B = common dso_local global i32 0, align 4
@RESET_ASSP = common dso_local global i32 0, align 4
@INT_CLK_SELECT = common dso_local global i32 0, align 4
@ESS_MAESTRO3 = common dso_local global i64 0, align 8
@INT_CLK_MULT_ENABLE = common dso_local global i32 0, align 4
@INT_CLK_SRC_NOT_PCI = common dso_local global i32 0, align 4
@CLK_MULT_MODE_SELECT = common dso_local global i32 0, align 4
@CLK_MULT_MODE_SELECT_2 = common dso_local global i32 0, align 4
@ESS_ALLEGRO_1 = common dso_local global i64 0, align 8
@PCI_USER_CONFIG = common dso_local global i32 0, align 4
@IN_CLK_12MHZ_SELECT = common dso_local global i32 0, align 4
@ASSP_CONTROL_A = common dso_local global i32 0, align 4
@DSP_CLK_36MHZ_SELECT = common dso_local global i32 0, align 4
@ASSP_CLK_49MHZ_SELECT = common dso_local global i32 0, align 4
@ASSP_0_WS_ENABLE = common dso_local global i32 0, align 4
@RUN_ASSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @m3_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m3_config(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %6 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %7 = call i32 @M3_LOCK_ASSERT(%struct.sc_info* %6)
  %8 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %9 = call i32 @M3_UNLOCK(%struct.sc_info* %8)
  %10 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_get_name(i32 %12)
  %14 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %15 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_get_unit(i32 %16)
  %18 = call i64 @resource_int_value(i32 %13, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @HV_BUTTON_FROM_GD, align 4
  br label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @HV_BUTTON_FROM_GD, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %32 = call i32 @M3_LOCK(%struct.sc_info* %31)
  %33 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PCI_ALLEGRO_CONFIG, align 4
  %37 = call i32 @pci_read_config(i32 %35, i32 %36, i32 4)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @HV_BUTTON_FROM_GD, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @REDUCED_DEBOUNCE, align 4
  %43 = load i32, i32* @HV_CTRL_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @PM_CTRL_ENABLE, align 4
  %50 = load i32, i32* @CLK_DIV_BY_49, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @USE_PCI_TIMING, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PCI_ALLEGRO_CONFIG, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @pci_write_config(i32 %58, i32 %59, i32 %60, i32 4)
  %62 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %63 = load i32, i32* @ASSP_CONTROL_B, align 4
  %64 = load i32, i32* @RESET_ASSP, align 4
  %65 = call i32 @m3_wr_1(%struct.sc_info* %62, i32 %63, i32 %64)
  %66 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %67 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PCI_ALLEGRO_CONFIG, align 4
  %70 = call i32 @pci_read_config(i32 %68, i32 %69, i32 4)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @INT_CLK_SELECT, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ESS_MAESTRO3, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %30
  %81 = load i32, i32* @INT_CLK_MULT_ENABLE, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @INT_CLK_SRC_NOT_PCI, align 4
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %30
  %89 = load i32, i32* @CLK_MULT_MODE_SELECT, align 4
  %90 = load i32, i32* @CLK_MULT_MODE_SELECT_2, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %96 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PCI_ALLEGRO_CONFIG, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @pci_write_config(i32 %97, i32 %98, i32 %99, i32 4)
  %101 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %102 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ESS_ALLEGRO_1, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %88
  %107 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %108 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @PCI_USER_CONFIG, align 4
  %111 = call i32 @pci_read_config(i32 %109, i32 %110, i32 4)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* @IN_CLK_12MHZ_SELECT, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  %115 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %116 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @PCI_USER_CONFIG, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @pci_write_config(i32 %117, i32 %118, i32 %119, i32 4)
  br label %121

121:                                              ; preds = %106, %88
  %122 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %123 = load i32, i32* @ASSP_CONTROL_A, align 4
  %124 = call i32 @m3_rd_1(%struct.sc_info* %122, i32 %123)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* @DSP_CLK_36MHZ_SELECT, align 4
  %126 = load i32, i32* @ASSP_CLK_49MHZ_SELECT, align 4
  %127 = or i32 %125, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %3, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* @ASSP_CLK_49MHZ_SELECT, align 4
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* @ASSP_0_WS_ENABLE, align 4
  %135 = load i32, i32* %3, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %3, align 4
  %137 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %138 = load i32, i32* @ASSP_CONTROL_A, align 4
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @m3_wr_1(%struct.sc_info* %137, i32 %138, i32 %139)
  %141 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %142 = load i32, i32* @ASSP_CONTROL_B, align 4
  %143 = load i32, i32* @RUN_ASSP, align 4
  %144 = call i32 @m3_wr_1(%struct.sc_info* %141, i32 %142, i32 %143)
  ret void
}

declare dso_local i32 @M3_LOCK_ASSERT(%struct.sc_info*) #1

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @m3_wr_1(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @m3_rd_1(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
