; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_qlm_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_qlm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32, i8*, i32 }

@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_CRTL = common dso_local global i32 0, align 4
@SPU_PMD_CRTL_TRAIN_EN = common dso_local global i32 0, align 4
@QLM_MODE_SGMII = common dso_local global i8* null, align 8
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BGX%d QLM mode: SGMII\0A\00", align 1
@QLM_MODE_XAUI_1X4 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"BGX%d QLM mode: XAUI\0A\00", align 1
@QLM_MODE_RXAUI_2X2 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"BGX%d QLM mode: RXAUI\0A\00", align 1
@QLM_MODE_XFI_4X1 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"BGX%d QLM mode: XFI\0A\00", align 1
@QLM_MODE_10G_KR_4X1 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"BGX%d QLM mode: 10G_KR\0A\00", align 1
@QLM_MODE_XLAUI_1X4 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"BGX%d QLM mode: XLAUI\0A\00", align 1
@QLM_MODE_40G_KR4_1X4 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"BGX%d QLM mode: 40G_KR4\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"BGX%d QLM default mode: SGMII\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*)* @bgx_get_qlm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_get_qlm_mode(%struct.bgx* %0) #0 {
  %2 = alloca %struct.bgx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %2, align 8
  %6 = load %struct.bgx*, %struct.bgx** %2, align 8
  %7 = getelementptr inbounds %struct.bgx, %struct.bgx* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bgx*, %struct.bgx** %2, align 8
  %10 = load i32, i32* @BGX_CMRX_CFG, align 4
  %11 = call i32 @bgx_reg_read(%struct.bgx* %9, i32 0, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 7
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bgx*, %struct.bgx** %2, align 8
  %16 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %17 = call i32 @bgx_reg_read(%struct.bgx* %15, i32 0, i32 %16)
  %18 = load i32, i32* @SPU_PMD_CRTL_TRAIN_EN, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %120 [
    i32 131, label %21
    i32 130, label %34
    i32 132, label %47
    i32 129, label %60
    i32 128, label %90
  ]

21:                                               ; preds = %1
  %22 = load i8*, i8** @QLM_MODE_SGMII, align 8
  %23 = load %struct.bgx*, %struct.bgx** %2, align 8
  %24 = getelementptr inbounds %struct.bgx, %struct.bgx* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @bootverbose, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.bgx*, %struct.bgx** %2, align 8
  %30 = getelementptr inbounds %struct.bgx, %struct.bgx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  br label %133

34:                                               ; preds = %1
  %35 = load i8*, i8** @QLM_MODE_XAUI_1X4, align 8
  %36 = load %struct.bgx*, %struct.bgx** %2, align 8
  %37 = getelementptr inbounds %struct.bgx, %struct.bgx* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @bootverbose, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.bgx*, %struct.bgx** %2, align 8
  %43 = getelementptr inbounds %struct.bgx, %struct.bgx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  br label %133

47:                                               ; preds = %1
  %48 = load i8*, i8** @QLM_MODE_RXAUI_2X2, align 8
  %49 = load %struct.bgx*, %struct.bgx** %2, align 8
  %50 = getelementptr inbounds %struct.bgx, %struct.bgx* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @bootverbose, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.bgx*, %struct.bgx** %2, align 8
  %56 = getelementptr inbounds %struct.bgx, %struct.bgx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %47
  br label %133

60:                                               ; preds = %1
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** @QLM_MODE_XFI_4X1, align 8
  %65 = load %struct.bgx*, %struct.bgx** %2, align 8
  %66 = getelementptr inbounds %struct.bgx, %struct.bgx* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @bootverbose, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.bgx*, %struct.bgx** %2, align 8
  %72 = getelementptr inbounds %struct.bgx, %struct.bgx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  br label %89

76:                                               ; preds = %60
  %77 = load i8*, i8** @QLM_MODE_10G_KR_4X1, align 8
  %78 = load %struct.bgx*, %struct.bgx** %2, align 8
  %79 = getelementptr inbounds %struct.bgx, %struct.bgx* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @bootverbose, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.bgx*, %struct.bgx** %2, align 8
  %85 = getelementptr inbounds %struct.bgx, %struct.bgx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %75
  br label %133

90:                                               ; preds = %1
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** @QLM_MODE_XLAUI_1X4, align 8
  %95 = load %struct.bgx*, %struct.bgx** %2, align 8
  %96 = getelementptr inbounds %struct.bgx, %struct.bgx* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @bootverbose, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.bgx*, %struct.bgx** %2, align 8
  %102 = getelementptr inbounds %struct.bgx, %struct.bgx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %119

106:                                              ; preds = %90
  %107 = load i8*, i8** @QLM_MODE_40G_KR4_1X4, align 8
  %108 = load %struct.bgx*, %struct.bgx** %2, align 8
  %109 = getelementptr inbounds %struct.bgx, %struct.bgx* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @bootverbose, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.bgx*, %struct.bgx** %2, align 8
  %115 = getelementptr inbounds %struct.bgx, %struct.bgx* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  br label %119

119:                                              ; preds = %118, %105
  br label %133

120:                                              ; preds = %1
  %121 = load i8*, i8** @QLM_MODE_SGMII, align 8
  %122 = load %struct.bgx*, %struct.bgx** %2, align 8
  %123 = getelementptr inbounds %struct.bgx, %struct.bgx* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @bootverbose, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.bgx*, %struct.bgx** %2, align 8
  %129 = getelementptr inbounds %struct.bgx, %struct.bgx* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %126, %120
  br label %133

133:                                              ; preds = %132, %119, %89, %59, %46, %33
  ret void
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
