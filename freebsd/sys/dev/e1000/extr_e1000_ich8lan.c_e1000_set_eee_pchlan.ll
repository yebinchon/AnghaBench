; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_set_eee_pchlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_set_eee_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_set_eee_pchlan\00", align 1
@I82579_EEE_LP_ABILITY = common dso_local global i32 0, align 4
@I82579_EEE_PCS_STATUS = common dso_local global i32 0, align 4
@I82579_EEE_ADVERTISEMENT = common dso_local global i32 0, align 4
@I217_EEE_LP_ABILITY = common dso_local global i32 0, align 4
@I217_EEE_PCS_STATUS = common dso_local global i32 0, align 4
@I217_EEE_ADVERTISEMENT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@I82579_LPI_CTRL = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_ENABLE_MASK = common dso_local global i32 0, align 4
@I82579_EEE_1000_SUPPORTED = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_1000_ENABLE = common dso_local global i32 0, align 4
@I82579_EEE_100_SUPPORTED = common dso_local global i32 0, align 4
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@NWAY_LPAR_100TX_FD_CAPS = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_100_ENABLE = common dso_local global i32 0, align 4
@I82579_LPI_PLL_SHUT = common dso_local global i32 0, align 4
@I82579_LPI_100_PLL_SHUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_set_eee_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %14, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @I82579_EEE_LP_ABILITY, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @I82579_EEE_PCS_STATUS, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @I82579_EEE_ADVERTISEMENT, align 4
  store i32 %23, i32* %9, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @I217_EEE_LP_ABILITY, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @I217_EEE_PCS_STATUS, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @I217_EEE_ADVERTISEMENT, align 4
  store i32 %27, i32* %9, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %29, i64* %2, align 8
  br label %180

30:                                               ; preds = %24, %20
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.3*
  %38 = call i64 %35(%struct.e1000_hw.3* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %2, align 8
  br label %180

43:                                               ; preds = %30
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %47, align 8
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = bitcast %struct.e1000_hw* %49 to %struct.e1000_hw.2*
  %51 = load i32, i32* @I82579_LPI_CTRL, align 4
  %52 = call i64 %48(%struct.e1000_hw.2* %50, i32 %51, i32* %10)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %170

56:                                               ; preds = %43
  %57 = load i32, i32* @I82579_LPI_CTRL_ENABLE_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %130, label %65

65:                                               ; preds = %56
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %68, i32 0, i32 0
  %70 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %66, i32 %67, i32* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %170

74:                                               ; preds = %65
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %75, i32 %76, i32* %8)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %170

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %84 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %82, %85
  %87 = load i32, i32* @I82579_EEE_1000_SUPPORTED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @I82579_LPI_CTRL_1000_ENABLE, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %81
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %95, %98
  %100 = load i32, i32* @I82579_EEE_100_SUPPORTED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %94
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %107, align 8
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = bitcast %struct.e1000_hw* %109 to %struct.e1000_hw.2*
  %111 = load i32, i32* @PHY_LP_ABILITY, align 4
  %112 = call i64 %108(%struct.e1000_hw.2* %110, i32 %111, i32* %11)
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @NWAY_LPAR_100TX_FD_CAPS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %103
  %118 = load i32, i32* @I82579_LPI_CTRL_100_ENABLE, align 4
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  br label %128

121:                                              ; preds = %103
  %122 = load i32, i32* @I82579_EEE_100_SUPPORTED, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %125 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %121, %117
  br label %129

129:                                              ; preds = %128, %94
  br label %130

130:                                              ; preds = %129, %56
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %132 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 129
  br i1 %135, label %136, label %152

136:                                              ; preds = %130
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %138 = load i32, i32* @I82579_LPI_PLL_SHUT, align 4
  %139 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %137, i32 %138, i32* %11)
  store i64 %139, i64* %5, align 8
  %140 = load i64, i64* %5, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %170

143:                                              ; preds = %136
  %144 = load i32, i32* @I82579_LPI_100_PLL_SHUT, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %11, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %149 = load i32, i32* @I82579_LPI_PLL_SHUT, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i64 @e1000_write_emi_reg_locked(%struct.e1000_hw* %148, i32 %149, i32 %150)
  store i64 %151, i64* %5, align 8
  br label %152

152:                                              ; preds = %143, %130
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %153, i32 %154, i32* %11)
  store i64 %155, i64* %5, align 8
  %156 = load i64, i64* %5, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %170

159:                                              ; preds = %152
  %160 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %161 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %163, align 8
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %166 = bitcast %struct.e1000_hw* %165 to %struct.e1000_hw.1*
  %167 = load i32, i32* @I82579_LPI_CTRL, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i64 %164(%struct.e1000_hw.1* %166, i32 %167, i32 %168)
  store i64 %169, i64* %5, align 8
  br label %170

170:                                              ; preds = %159, %158, %142, %80, %73, %55
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %172 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %174, align 8
  %176 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %177 = bitcast %struct.e1000_hw* %176 to %struct.e1000_hw.0*
  %178 = call i32 %175(%struct.e1000_hw.0* %177)
  %179 = load i64, i64* %5, align 8
  store i64 %179, i64* %2, align 8
  br label %180

180:                                              ; preds = %170, %41, %28
  %181 = load i64, i64* %2, align 8
  ret i64 %181
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_read_emi_reg_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
