; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_config_specific.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_config_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i8*, i32, i32, i32, i32*, i32*, i8*, i8*, i32 }

@iwn4965_base_params = common dso_local global i32 0, align 4
@iwn4965_sensitivity_limits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"iwn4965fw\00", align 1
@IWN_ANT_AB = common dso_local global i8* null, align 8
@IWN_ANT_ABC = common dso_local global i8* null, align 8
@IWN_FLAG_BTCOEX = common dso_local global i32 0, align 4
@iwn1000_sensitivity_limits = common dso_local global i32 0, align 4
@iwn1000_base_params = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"iwn1000fw\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"adapter type id : 0x%04x sub id :0x%04x rev %d not supported (subdevice)\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"iwn6000fw\00", align 1
@iwn6000_sensitivity_limits = common dso_local global i32 0, align 4
@iwn_6000_base_params = common dso_local global i32 0, align 4
@iwn_6000i_base_params = common dso_local global i32 0, align 4
@IWN_FLAG_INTERNAL_PA = common dso_local global i32 0, align 4
@IWN_ANT_BC = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"iwn6000g2afw\00", align 1
@iwn_6000g2_base_params = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"iwn6000g2bfw\00", align 1
@iwn6235_sensitivity_limits = common dso_local global i32 0, align 4
@iwn_6235_base_params = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"iwn6050fw\00", align 1
@iwn_6050_base_params = common dso_local global i32 0, align 4
@iwn_6150_base_params = common dso_local global i32 0, align 4
@iwn_6000g2b_base_params = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"iwn100fw\00", align 1
@iwn2030_sensitivity_limits = common dso_local global i32 0, align 4
@iwn2000_base_params = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"iwn105fw\00", align 1
@iwn2030_base_params = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"iwn135fw\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"iwn2000fw\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"adapter type id : 0x%04x sub id :0x%04x rev %d not supported (subdevice) \0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"iwn2030fw\00", align 1
@iwn5000_sensitivity_limits = common dso_local global i32 0, align 4
@iwn5000_base_params = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"iwn5000fw\00", align 1
@IWN_ANT_B = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"iwn5150fw\00", align 1
@iwn_5x50_base_params = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [75 x i8] c"adapter type id : 0x%04x sub id : 0x%04xrev 0x%08x not supported (device)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwn_softc*, i32)* @iwn_config_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn_config_specific(%struct.iwn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwn_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.iwn_softc* %0, %struct.iwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %460 [
    i32 300, label %7
    i32 299, label %7
    i32 298, label %7
    i32 297, label %7
    i32 314, label %25
    i32 313, label %25
    i32 281, label %50
    i32 279, label %50
    i32 282, label %50
    i32 280, label %50
    i32 278, label %89
    i32 277, label %89
    i32 288, label %114
    i32 287, label %114
    i32 286, label %139
    i32 285, label %139
    i32 284, label %170
    i32 283, label %170
    i32 276, label %195
    i32 275, label %195
    i32 274, label %195
    i32 273, label %195
    i32 308, label %220
    i32 307, label %220
    i32 312, label %245
    i32 311, label %245
    i32 310, label %270
    i32 309, label %270
    i32 306, label %295
    i32 305, label %295
    i32 304, label %320
    i32 303, label %320
    i32 302, label %345
    i32 301, label %345
    i32 296, label %370
    i32 295, label %370
    i32 294, label %370
    i32 293, label %370
    i32 292, label %422
    i32 291, label %422
    i32 290, label %422
    i32 289, label %422
  ]

7:                                                ; preds = %2, %2, %2, %2
  %8 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %9 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %8, i32 0, i32 4
  store i32* @iwn4965_base_params, i32** %9, align 8
  %10 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %11 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %10, i32 0, i32 5
  store i32* @iwn4965_sensitivity_limits, i32** %11, align 8
  %12 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %13 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load i8*, i8** @IWN_ANT_AB, align 8
  %15 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %16 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %15, i32 0, i32 7
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @IWN_ANT_ABC, align 8
  %18 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %19 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @IWN_FLAG_BTCOEX, align 4
  %21 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %22 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %473

25:                                               ; preds = %2, %2
  %26 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %27 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %36 [
    i32 272, label %29
    i32 268, label %29
    i32 267, label %29
    i32 266, label %29
    i32 265, label %29
    i32 264, label %29
    i32 263, label %29
    i32 262, label %29
    i32 261, label %29
    i32 271, label %29
    i32 270, label %29
    i32 269, label %29
  ]

29:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %30 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %31 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %30, i32 0, i32 5
  store i32* @iwn1000_sensitivity_limits, i32** %31, align 8
  %32 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %33 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %32, i32 0, i32 4
  store i32* @iwn1000_base_params, i32** %33, align 8
  %34 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %35 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  br label %49

36:                                               ; preds = %25
  %37 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %38 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %42 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %45 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  %48 = load i32, i32* @ENOTSUP, align 4
  store i32 %48, i32* %3, align 4
  br label %474

49:                                               ; preds = %29
  br label %473

50:                                               ; preds = %2, %2, %2, %2
  %51 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %52 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %54 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %53, i32 0, i32 5
  store i32* @iwn6000_sensitivity_limits, i32** %54, align 8
  %55 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %56 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %75 [
    i32 165, label %58
    i32 163, label %58
    i32 157, label %58
    i32 162, label %61
    i32 159, label %61
    i32 156, label %61
    i32 161, label %61
    i32 158, label %61
    i32 164, label %61
    i32 160, label %61
  ]

58:                                               ; preds = %50, %50, %50
  %59 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %60 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %59, i32 0, i32 4
  store i32* @iwn_6000_base_params, i32** %60, align 8
  br label %88

61:                                               ; preds = %50, %50, %50, %50, %50, %50, %50
  %62 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %63 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %62, i32 0, i32 4
  store i32* @iwn_6000i_base_params, i32** %63, align 8
  %64 = load i32, i32* @IWN_FLAG_INTERNAL_PA, align 4
  %65 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %66 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i8*, i8** @IWN_ANT_BC, align 8
  %70 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %71 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @IWN_ANT_BC, align 8
  %73 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %74 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  br label %88

75:                                               ; preds = %50
  %76 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %77 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %81 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %84 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82, i32 %85)
  %87 = load i32, i32* @ENOTSUP, align 4
  store i32 %87, i32* %3, align 4
  br label %474

88:                                               ; preds = %61, %58
  br label %473

89:                                               ; preds = %2, %2
  %90 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %91 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %100 [
    i32 155, label %93
    i32 149, label %93
    i32 147, label %93
    i32 151, label %93
    i32 148, label %93
    i32 146, label %93
    i32 150, label %93
    i32 145, label %93
    i32 144, label %93
    i32 154, label %93
    i32 153, label %93
    i32 152, label %93
  ]

93:                                               ; preds = %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89
  %94 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %95 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %95, align 8
  %96 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %97 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %96, i32 0, i32 5
  store i32* @iwn6000_sensitivity_limits, i32** %97, align 8
  %98 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %99 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %98, i32 0, i32 4
  store i32* @iwn_6000g2_base_params, i32** %99, align 8
  br label %113

100:                                              ; preds = %89
  %101 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %102 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %106 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %109 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %107, i32 %110)
  %112 = load i32, i32* @ENOTSUP, align 4
  store i32 %112, i32* %3, align 4
  br label %474

113:                                              ; preds = %93
  br label %473

114:                                              ; preds = %2, %2
  %115 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %116 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %125 [
    i32 182, label %118
    i32 181, label %118
    i32 180, label %118
    i32 179, label %118
    i32 178, label %118
  ]

118:                                              ; preds = %114, %114, %114, %114, %114
  %119 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %120 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %119, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %120, align 8
  %121 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %122 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %121, i32 0, i32 5
  store i32* @iwn6235_sensitivity_limits, i32** %122, align 8
  %123 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %124 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %123, i32 0, i32 4
  store i32* @iwn_6235_base_params, i32** %124, align 8
  br label %138

125:                                              ; preds = %114
  %126 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %127 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %131 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %134 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %132, i32 %135)
  %137 = load i32, i32* @ENOTSUP, align 4
  store i32 %137, i32* %3, align 4
  br label %474

138:                                              ; preds = %118
  br label %473

139:                                              ; preds = %2, %2
  %140 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %141 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %156 [
    i32 177, label %143
    i32 175, label %143
    i32 173, label %143
    i32 176, label %143
    i32 174, label %143
    i32 172, label %143
  ]

143:                                              ; preds = %139, %139, %139, %139, %139, %139
  %144 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %145 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %144, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %145, align 8
  %146 = load i8*, i8** @IWN_ANT_AB, align 8
  %147 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %148 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %147, i32 0, i32 7
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** @IWN_ANT_AB, align 8
  %150 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %151 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  %152 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %153 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %152, i32 0, i32 5
  store i32* @iwn6000_sensitivity_limits, i32** %153, align 8
  %154 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %155 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %154, i32 0, i32 4
  store i32* @iwn_6050_base_params, i32** %155, align 8
  br label %169

156:                                              ; preds = %139
  %157 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %158 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %162 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %165 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @device_printf(i32 %159, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %163, i32 %166)
  %168 = load i32, i32* @ENOTSUP, align 4
  store i32 %168, i32* %3, align 4
  br label %474

169:                                              ; preds = %143
  br label %473

170:                                              ; preds = %2, %2
  %171 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %172 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %181 [
    i32 171, label %174
    i32 169, label %174
    i32 167, label %174
    i32 170, label %174
    i32 168, label %174
    i32 166, label %174
  ]

174:                                              ; preds = %170, %170, %170, %170, %170, %170
  %175 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %176 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %175, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %176, align 8
  %177 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %178 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %177, i32 0, i32 5
  store i32* @iwn6000_sensitivity_limits, i32** %178, align 8
  %179 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %180 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %179, i32 0, i32 4
  store i32* @iwn_6150_base_params, i32** %180, align 8
  br label %194

181:                                              ; preds = %170
  %182 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %183 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %187 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %190 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @device_printf(i32 %184, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %185, i32 %188, i32 %191)
  %193 = load i32, i32* @ENOTSUP, align 4
  store i32 %193, i32* %3, align 4
  br label %474

194:                                              ; preds = %174
  br label %473

195:                                              ; preds = %2, %2, %2, %2
  %196 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %197 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  switch i32 %198, label %206 [
    i32 143, label %199
    i32 134, label %199
    i32 132, label %199
    i32 135, label %199
    i32 133, label %199
    i32 131, label %199
    i32 130, label %199
    i32 142, label %199
    i32 138, label %199
    i32 129, label %199
    i32 141, label %199
    i32 137, label %199
    i32 128, label %199
    i32 140, label %199
    i32 136, label %199
    i32 139, label %199
  ]

199:                                              ; preds = %195, %195, %195, %195, %195, %195, %195, %195, %195, %195, %195, %195, %195, %195, %195, %195
  %200 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %201 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %200, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %201, align 8
  %202 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %203 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %202, i32 0, i32 5
  store i32* @iwn6000_sensitivity_limits, i32** %203, align 8
  %204 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %205 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %204, i32 0, i32 4
  store i32* @iwn_6000g2b_base_params, i32** %205, align 8
  br label %219

206:                                              ; preds = %195
  %207 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %208 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %212 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %215 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @device_printf(i32 %209, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %210, i32 %213, i32 %216)
  %218 = load i32, i32* @ENOTSUP, align 4
  store i32 %218, i32* %3, align 4
  br label %474

219:                                              ; preds = %199
  br label %473

220:                                              ; preds = %2, %2
  %221 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %222 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  switch i32 %223, label %231 [
    i32 250, label %224
    i32 248, label %224
    i32 246, label %224
    i32 249, label %224
    i32 247, label %224
    i32 245, label %224
  ]

224:                                              ; preds = %220, %220, %220, %220, %220, %220
  %225 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %226 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %225, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %226, align 8
  %227 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %228 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %227, i32 0, i32 5
  store i32* @iwn6000_sensitivity_limits, i32** %228, align 8
  %229 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %230 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %229, i32 0, i32 4
  store i32* @iwn_6000g2b_base_params, i32** %230, align 8
  br label %244

231:                                              ; preds = %220
  %232 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %233 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %237 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %240 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @device_printf(i32 %234, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %235, i32 %238, i32 %241)
  %243 = load i32, i32* @ENOTSUP, align 4
  store i32 %243, i32* %3, align 4
  br label %474

244:                                              ; preds = %224
  br label %473

245:                                              ; preds = %2, %2
  %246 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %247 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  switch i32 %248, label %256 [
    i32 260, label %249
    i32 259, label %249
    i32 258, label %249
    i32 257, label %249
    i32 256, label %249
    i32 255, label %249
  ]

249:                                              ; preds = %245, %245, %245, %245, %245, %245
  %250 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %251 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %250, i32 0, i32 5
  store i32* @iwn1000_sensitivity_limits, i32** %251, align 8
  %252 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %253 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %252, i32 0, i32 4
  store i32* @iwn1000_base_params, i32** %253, align 8
  %254 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %255 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %254, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %255, align 8
  br label %269

256:                                              ; preds = %245
  %257 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %258 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %262 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %265 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @device_printf(i32 %259, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %260, i32 %263, i32 %266)
  %268 = load i32, i32* @ENOTSUP, align 4
  store i32 %268, i32* %3, align 4
  br label %474

269:                                              ; preds = %249
  br label %473

270:                                              ; preds = %2, %2
  %271 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %272 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  switch i32 %273, label %281 [
    i32 254, label %274
    i32 253, label %274
    i32 252, label %274
    i32 251, label %274
  ]

274:                                              ; preds = %270, %270, %270, %270
  %275 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %276 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %275, i32 0, i32 5
  store i32* @iwn2030_sensitivity_limits, i32** %276, align 8
  %277 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %278 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %277, i32 0, i32 4
  store i32* @iwn2000_base_params, i32** %278, align 8
  %279 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %280 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %279, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %280, align 8
  br label %294

281:                                              ; preds = %270
  %282 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %283 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %287 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %290 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @device_printf(i32 %284, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %285, i32 %288, i32 %291)
  %293 = load i32, i32* @ENOTSUP, align 4
  store i32 %293, i32* %3, align 4
  br label %474

294:                                              ; preds = %274
  br label %473

295:                                              ; preds = %2, %2
  %296 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %297 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  switch i32 %298, label %306 [
    i32 244, label %299
    i32 243, label %299
    i32 242, label %299
  ]

299:                                              ; preds = %295, %295, %295
  %300 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %301 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %300, i32 0, i32 5
  store i32* @iwn2030_sensitivity_limits, i32** %301, align 8
  %302 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %303 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %302, i32 0, i32 4
  store i32* @iwn2030_base_params, i32** %303, align 8
  %304 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %305 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %304, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %305, align 8
  br label %319

306:                                              ; preds = %295
  %307 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %308 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %5, align 4
  %311 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %312 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %315 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @device_printf(i32 %309, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %310, i32 %313, i32 %316)
  %318 = load i32, i32* @ENOTSUP, align 4
  store i32 %318, i32* %3, align 4
  br label %474

319:                                              ; preds = %299
  br label %473

320:                                              ; preds = %2, %2
  %321 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %322 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  switch i32 %323, label %331 [
    i32 241, label %324
    i32 240, label %324
    i32 239, label %324
    i32 238, label %324
  ]

324:                                              ; preds = %320, %320, %320, %320
  %325 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %326 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %325, i32 0, i32 5
  store i32* @iwn2030_sensitivity_limits, i32** %326, align 8
  %327 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %328 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %327, i32 0, i32 4
  store i32* @iwn2000_base_params, i32** %328, align 8
  %329 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %330 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %329, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %330, align 8
  br label %344

331:                                              ; preds = %320
  %332 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %333 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %5, align 4
  %336 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %337 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %340 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @device_printf(i32 %334, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0), i32 %335, i32 %338, i32 %341)
  %343 = load i32, i32* @ENOTSUP, align 4
  store i32 %343, i32* %3, align 4
  br label %474

344:                                              ; preds = %324
  br label %473

345:                                              ; preds = %2, %2
  %346 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %347 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  switch i32 %348, label %356 [
    i32 237, label %349
    i32 235, label %349
    i32 233, label %349
    i32 236, label %349
    i32 234, label %349
    i32 232, label %349
  ]

349:                                              ; preds = %345, %345, %345, %345, %345, %345
  %350 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %351 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %350, i32 0, i32 5
  store i32* @iwn2030_sensitivity_limits, i32** %351, align 8
  %352 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %353 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %352, i32 0, i32 4
  store i32* @iwn2030_base_params, i32** %353, align 8
  %354 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %355 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %354, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %355, align 8
  br label %369

356:                                              ; preds = %345
  %357 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %358 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* %5, align 4
  %361 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %362 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %365 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @device_printf(i32 %359, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %360, i32 %363, i32 %366)
  %368 = load i32, i32* @ENOTSUP, align 4
  store i32 %368, i32* %3, align 4
  br label %474

369:                                              ; preds = %349
  br label %473

370:                                              ; preds = %2, %2, %2, %2
  %371 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %372 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %371, i32 0, i32 5
  store i32* @iwn5000_sensitivity_limits, i32** %372, align 8
  %373 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %374 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %373, i32 0, i32 4
  store i32* @iwn5000_base_params, i32** %374, align 8
  %375 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %376 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %375, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %376, align 8
  %377 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %378 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  switch i32 %379, label %408 [
    i32 231, label %380
    i32 220, label %380
    i32 209, label %380
    i32 201, label %380
    i32 196, label %380
    i32 230, label %380
    i32 229, label %380
    i32 228, label %380
    i32 223, label %380
    i32 222, label %380
    i32 221, label %380
    i32 219, label %380
    i32 200, label %387
    i32 199, label %387
    i32 227, label %387
    i32 226, label %387
    i32 218, label %387
    i32 217, label %387
    i32 198, label %394
    i32 197, label %394
    i32 225, label %394
    i32 224, label %394
    i32 216, label %394
    i32 215, label %394
    i32 214, label %401
    i32 213, label %401
    i32 212, label %401
    i32 211, label %401
    i32 210, label %401
    i32 208, label %401
    i32 207, label %401
    i32 206, label %401
    i32 205, label %401
    i32 204, label %401
    i32 203, label %401
    i32 202, label %401
  ]

380:                                              ; preds = %370, %370, %370, %370, %370, %370, %370, %370, %370, %370, %370, %370
  %381 = load i8*, i8** @IWN_ANT_B, align 8
  %382 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %383 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %382, i32 0, i32 7
  store i8* %381, i8** %383, align 8
  %384 = load i8*, i8** @IWN_ANT_AB, align 8
  %385 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %386 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %385, i32 0, i32 6
  store i8* %384, i8** %386, align 8
  br label %421

387:                                              ; preds = %370, %370, %370, %370, %370, %370
  %388 = load i8*, i8** @IWN_ANT_B, align 8
  %389 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %390 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %389, i32 0, i32 7
  store i8* %388, i8** %390, align 8
  %391 = load i8*, i8** @IWN_ANT_AB, align 8
  %392 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %393 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %392, i32 0, i32 6
  store i8* %391, i8** %393, align 8
  br label %421

394:                                              ; preds = %370, %370, %370, %370, %370, %370
  %395 = load i8*, i8** @IWN_ANT_B, align 8
  %396 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %397 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %396, i32 0, i32 7
  store i8* %395, i8** %397, align 8
  %398 = load i8*, i8** @IWN_ANT_AB, align 8
  %399 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %400 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %399, i32 0, i32 6
  store i8* %398, i8** %400, align 8
  br label %421

401:                                              ; preds = %370, %370, %370, %370, %370, %370, %370, %370, %370, %370, %370, %370
  %402 = load i8*, i8** @IWN_ANT_ABC, align 8
  %403 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %404 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %403, i32 0, i32 7
  store i8* %402, i8** %404, align 8
  %405 = load i8*, i8** @IWN_ANT_ABC, align 8
  %406 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %407 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %406, i32 0, i32 6
  store i8* %405, i8** %407, align 8
  br label %421

408:                                              ; preds = %370
  %409 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %410 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* %5, align 4
  %413 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %414 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %417 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @device_printf(i32 %411, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %412, i32 %415, i32 %418)
  %420 = load i32, i32* @ENOTSUP, align 4
  store i32 %420, i32* %3, align 4
  br label %474

421:                                              ; preds = %401, %394, %387, %380
  br label %473

422:                                              ; preds = %2, %2, %2, %2
  %423 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %424 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %423, i32 0, i32 5
  store i32* @iwn5000_sensitivity_limits, i32** %424, align 8
  %425 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %426 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %425, i32 0, i32 4
  store i32* @iwn5000_base_params, i32** %426, align 8
  %427 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %428 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %427, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %428, align 8
  %429 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %430 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 4
  switch i32 %431, label %446 [
    i32 195, label %432
    i32 190, label %432
    i32 189, label %432
    i32 188, label %439
    i32 187, label %439
    i32 184, label %439
    i32 183, label %439
    i32 194, label %439
    i32 193, label %439
    i32 186, label %439
    i32 185, label %439
    i32 192, label %439
    i32 191, label %439
  ]

432:                                              ; preds = %422, %422, %422
  %433 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %434 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %433, i32 0, i32 5
  store i32* @iwn5000_sensitivity_limits, i32** %434, align 8
  %435 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %436 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %435, i32 0, i32 4
  store i32* @iwn5000_base_params, i32** %436, align 8
  %437 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %438 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %437, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %438, align 8
  br label %459

439:                                              ; preds = %422, %422, %422, %422, %422, %422, %422, %422, %422, %422
  %440 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %441 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %440, i32 0, i32 5
  store i32* @iwn5000_sensitivity_limits, i32** %441, align 8
  %442 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %443 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %442, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %443, align 8
  %444 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %445 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %444, i32 0, i32 4
  store i32* @iwn_5x50_base_params, i32** %445, align 8
  br label %459

446:                                              ; preds = %422
  %447 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %448 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* %5, align 4
  %451 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %452 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %455 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @device_printf(i32 %449, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %450, i32 %453, i32 %456)
  %458 = load i32, i32* @ENOTSUP, align 4
  store i32 %458, i32* %3, align 4
  br label %474

459:                                              ; preds = %439, %432
  br label %473

460:                                              ; preds = %2
  %461 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %462 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* %5, align 4
  %465 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %466 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %469 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @device_printf(i32 %463, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 %464, i32 %467, i32 %470)
  %472 = load i32, i32* @ENOTSUP, align 4
  store i32 %472, i32* %3, align 4
  br label %474

473:                                              ; preds = %459, %421, %369, %344, %319, %294, %269, %244, %219, %194, %169, %138, %113, %88, %49, %7
  store i32 0, i32* %3, align 4
  br label %474

474:                                              ; preds = %473, %460, %446, %408, %356, %331, %306, %281, %256, %231, %206, %181, %156, %125, %100, %75, %36
  %475 = load i32, i32* %3, align 4
  ret i32 %475
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
