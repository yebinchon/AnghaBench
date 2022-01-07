; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_resume_workarounds_pchlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_resume_workarounds_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"e1000_resume_workarounds_pchlan\00", align 1
@e1000_pch2lan = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to init PHY flow ret_val=%d\0A\00", align 1
@e1000_phy_i217 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to setup iRST\0A\00", align 1
@I217_LPI_GPIO_CTRL = common dso_local global i32 0, align 4
@I217_LPI_GPIO_CTRL_AUTO_EN_LPI = common dso_local global i32 0, align 4
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@I217_MEMPWR = common dso_local global i32 0, align 4
@I217_MEMPWR_DISABLE_SMB_RELEASE = common dso_local global i32 0, align 4
@I217_PROXY_CTRL = common dso_local global i32 0, align 4
@I217_CGFREG = common dso_local global i32 0, align 4
@I217_CGFREG_ENABLE_MTA_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Error %d in resume workarounds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_resume_workarounds_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_pch2lan, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %14, i64* %2, align 8
  br label %157

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = call i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %2, align 8
  br label %157

24:                                               ; preds = %15
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @e1000_phy_i217, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %155

31:                                               ; preds = %24
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %35, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = bitcast %struct.e1000_hw* %37 to %struct.e1000_hw.3*
  %39 = call i64 %36(%struct.e1000_hw.3* %38)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %157

45:                                               ; preds = %31
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %49, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = bitcast %struct.e1000_hw* %51 to %struct.e1000_hw.2*
  %53 = load i32, i32* @I217_LPI_GPIO_CTRL, align 4
  %54 = call i64 %50(%struct.e1000_hw.2* %52, i32 %53, i32* %5)
  %55 = load i32, i32* @I217_LPI_GPIO_CTRL_AUTO_EN_LPI, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32 (%struct.e1000_hw.1*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32)** %62, align 8
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = bitcast %struct.e1000_hw* %64 to %struct.e1000_hw.1*
  %66 = load i32, i32* @I217_LPI_GPIO_CTRL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %63(%struct.e1000_hw.1* %65, i32 %66, i32 %67)
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = load i32, i32* @E1000_FWSM, align 4
  %71 = call i32 @E1000_READ_REG(%struct.e1000_hw* %69, i32 %70)
  %72 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %45
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %79, align 8
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = bitcast %struct.e1000_hw* %81 to %struct.e1000_hw.2*
  %83 = load i32, i32* @I217_MEMPWR, align 4
  %84 = call i64 %80(%struct.e1000_hw.2* %82, i32 %83, i32* %5)
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %139

88:                                               ; preds = %75
  %89 = load i32, i32* @I217_MEMPWR_DISABLE_SMB_RELEASE, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32 (%struct.e1000_hw.1*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32)** %95, align 8
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = bitcast %struct.e1000_hw* %97 to %struct.e1000_hw.1*
  %99 = load i32, i32* @I217_MEMPWR, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 %96(%struct.e1000_hw.1* %98, i32 %99, i32 %100)
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32 (%struct.e1000_hw.1*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32)** %105, align 8
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = bitcast %struct.e1000_hw* %107 to %struct.e1000_hw.1*
  %109 = load i32, i32* @I217_PROXY_CTRL, align 4
  %110 = call i32 %106(%struct.e1000_hw.1* %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %88, %45
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %115, align 8
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = bitcast %struct.e1000_hw* %117 to %struct.e1000_hw.2*
  %119 = load i32, i32* @I217_CGFREG, align 4
  %120 = call i64 %116(%struct.e1000_hw.2* %118, i32 %119, i32* %5)
  store i64 %120, i64* %4, align 8
  %121 = load i64, i64* %4, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %139

124:                                              ; preds = %111
  %125 = load i32, i32* @I217_CGFREG_ENABLE_MTA_RESET, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %5, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32 (%struct.e1000_hw.1*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32)** %132, align 8
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = bitcast %struct.e1000_hw* %134 to %struct.e1000_hw.1*
  %136 = load i32, i32* @I217_CGFREG, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 %133(%struct.e1000_hw.1* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %124, %123, %87
  %140 = load i64, i64* %4, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i64, i64* %4, align 8
  %144 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %147 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %149, align 8
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = bitcast %struct.e1000_hw* %151 to %struct.e1000_hw.0*
  %153 = call i32 %150(%struct.e1000_hw.0* %152)
  %154 = load i64, i64* %4, align 8
  store i64 %154, i64* %2, align 8
  br label %157

155:                                              ; preds = %24
  %156 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %156, i64* %2, align 8
  br label %157

157:                                              ; preds = %155, %145, %42, %20, %13
  %158 = load i64, i64* %2, align 8
  ret i64 %158
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
