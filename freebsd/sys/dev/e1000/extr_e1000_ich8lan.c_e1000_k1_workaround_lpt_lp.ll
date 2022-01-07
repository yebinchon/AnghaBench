; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_k1_workaround_lpt_lp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_k1_workaround_lpt_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque

@E1000_FEXTNVM6 = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_K1_CONFIG = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_K1_ENABLE = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_REQ_PLL_CLK = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@I217_INBAND_CTRL = common dso_local global i32 0, align 4
@I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_MASK = common dso_local global i32 0, align 4
@I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_k1_workaround_lpt_lp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = load i32, i32* @E1000_FEXTNVM6, align 4
  %12 = call i32 @E1000_READ_REG(%struct.e1000_hw* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = load i32, i32* @E1000_STATUS, align 4
  %15 = call i32 @E1000_READ_REG(%struct.e1000_hw* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %19
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %31 = bitcast %struct.e1000_hw* %30 to %struct.e1000_hw.3*
  %32 = call i64 %29(%struct.e1000_hw.3* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %3, align 8
  br label %163

37:                                               ; preds = %24
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %40 = call i64 @e1000_read_kmrn_reg_locked(%struct.e1000_hw* %38, i32 %39, i32* %9)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %67

44:                                               ; preds = %37
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @E1000_KMRNCTRLSTA_K1_ENABLE, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i64 @e1000_write_kmrn_reg_locked(%struct.e1000_hw* %45, i32 %46, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %67

55:                                               ; preds = %44
  %56 = call i32 @usec_delay(i32 10)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = load i32, i32* @E1000_FEXTNVM6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %57, i32 %58, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %64 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @e1000_write_kmrn_reg_locked(%struct.e1000_hw* %63, i32 %64, i32 %65)
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %55, %54, %43
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %71, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %74 = bitcast %struct.e1000_hw* %73 to %struct.e1000_hw.2*
  %75 = call i32 %72(%struct.e1000_hw.2* %74)
  br label %161

76:                                               ; preds = %19, %2
  %77 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 5
  br i1 %85, label %99, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @E1000_STATUS_FD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %86, %76
  br label %156

100:                                              ; preds = %94, %89
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %104, align 8
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %107 = bitcast %struct.e1000_hw* %106 to %struct.e1000_hw.1*
  %108 = load i32, i32* @I217_INBAND_CTRL, align 4
  %109 = call i64 %105(%struct.e1000_hw.1* %107, i32 %108, i32* %9)
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i64, i64* %8, align 8
  store i64 %113, i64* %3, align 8
  br label %163

114:                                              ; preds = %100
  %115 = load i32, i32* @I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_MASK, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %9, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load i32, i32* @I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT, align 4
  %125 = shl i32 5, %124
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %140

132:                                              ; preds = %114
  %133 = load i32, i32* @I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT, align 4
  %134 = shl i32 50, %133
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* @E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION, align 4
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %132, %123
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %144, align 8
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %147 = bitcast %struct.e1000_hw* %146 to %struct.e1000_hw.0*
  %148 = load i32, i32* @I217_INBAND_CTRL, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i64 %145(%struct.e1000_hw.0* %147, i32 %148, i32 %149)
  store i64 %150, i64* %8, align 8
  %151 = load i64, i64* %8, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %140
  %154 = load i64, i64* %8, align 8
  store i64 %154, i64* %3, align 8
  br label %163

155:                                              ; preds = %140
  br label %156

156:                                              ; preds = %155, %99
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %158 = load i32, i32* @E1000_FEXTNVM6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %67
  %162 = load i64, i64* %8, align 8
  store i64 %162, i64* %3, align 8
  br label %163

163:                                              ; preds = %161, %153, %112, %35
  %164 = load i64, i64* %3, align 8
  ret i64 %164
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_kmrn_reg_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
