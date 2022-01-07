; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_oem_bits_config_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_oem_bits_config_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32)*, i32 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.3*, i32, i32*)*, i64 (%struct.e1000_hw.4*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.e1000_hw.4 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_oem_bits_config_ich8lan\00", align 1
@e1000_pchlan = common dso_local global i64 0, align 8
@E1000_EXTCNF_CTRL = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE = common dso_local global i32 0, align 4
@E1000_FEXTNVM = common dso_local global i32 0, align 4
@E1000_FEXTNVM_SW_CONFIG_ICH8M = common dso_local global i32 0, align 4
@E1000_PHY_CTRL = common dso_local global i32 0, align 4
@HV_OEM_BITS = common dso_local global i32 0, align 4
@HV_OEM_BITS_GBE_DIS = common dso_local global i32 0, align 4
@HV_OEM_BITS_LPLU = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_D0A_LPLU = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_LPLU = common dso_local global i32 0, align 4
@HV_OEM_BITS_RESTART_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_oem_bits_config_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_pchlan, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %3, align 8
  br label %169

18:                                               ; preds = %2
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = load i64 (%struct.e1000_hw.4*)*, i64 (%struct.e1000_hw.4*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.4*
  %26 = call i64 %23(%struct.e1000_hw.4* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %169

31:                                               ; preds = %18
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e1000_pchlan, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %40 = load i32, i32* @E1000_EXTCNF_CTRL, align 4
  %41 = call i32 @E1000_READ_REG(%struct.e1000_hw* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %159

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %50 = load i32, i32* @E1000_FEXTNVM, align 4
  %51 = call i32 @E1000_READ_REG(%struct.e1000_hw* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @E1000_FEXTNVM_SW_CONFIG_ICH8M, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %159

57:                                               ; preds = %48
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %59 = load i32, i32* @E1000_PHY_CTRL, align 4
  %60 = call i32 @E1000_READ_REG(%struct.e1000_hw* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i64 (%struct.e1000_hw.3*, i32, i32*)*, i64 (%struct.e1000_hw.3*, i32, i32*)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.3*
  %68 = load i32, i32* @HV_OEM_BITS, align 4
  %69 = call i64 %65(%struct.e1000_hw.3* %67, i32 %68, i32* %8)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %159

73:                                               ; preds = %57
  %74 = load i32, i32* @HV_OEM_BITS_GBE_DIS, align 4
  %75 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @HV_OEM_BITS_GBE_DIS, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %91
  br label %124

101:                                              ; preds = %73
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %104 = load i32, i32* @E1000_PHY_CTRL_NOND0A_GBE_DISABLE, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @HV_OEM_BITS_GBE_DIS, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %108, %101
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %115 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %119, %112
  br label %124

124:                                              ; preds = %123, %100
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %129 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @e1000_pchlan, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %127, %124
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %136 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %138, align 8
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %141 = bitcast %struct.e1000_hw* %140 to %struct.e1000_hw.2*
  %142 = call i32 %139(%struct.e1000_hw.2* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %134
  %145 = load i32, i32* @HV_OEM_BITS_RESTART_AN, align 4
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %144, %134, %127
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %152, align 8
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %155 = bitcast %struct.e1000_hw* %154 to %struct.e1000_hw.1*
  %156 = load i32, i32* @HV_OEM_BITS, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i64 %153(%struct.e1000_hw.1* %155, i32 %156, i32 %157)
  store i64 %158, i64* %6, align 8
  br label %159

159:                                              ; preds = %148, %72, %56, %46
  %160 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %161 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %163, align 8
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %166 = bitcast %struct.e1000_hw* %165 to %struct.e1000_hw.0*
  %167 = call i32 %164(%struct.e1000_hw.0* %166)
  %168 = load i64, i64* %6, align 8
  store i64 %168, i64* %3, align 8
  br label %169

169:                                              ; preds = %159, %29, %16
  %170 = load i64, i64* %3, align 8
  ret i64 %170
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
