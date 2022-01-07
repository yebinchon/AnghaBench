; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_setup_copper_link_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_setup_copper_link_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_setup_copper_link_ich8lan\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_TIMEOUTS = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_INBAND_PARAM = common dso_local global i32 0, align 4
@IFE_PHY_MDIX_CONTROL = common dso_local global i32 0, align 4
@IFE_PMC_AUTO_MDIX = common dso_local global i32 0, align 4
@IFE_PMC_FORCE_MDIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = load i32, i32* @E1000_CTRL, align 4
  %10 = call i32 @E1000_READ_REG(%struct.e1000_hw* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @E1000_CTRL_SLU, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %15 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = load i32, i32* @E1000_CTRL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i32, i32* @E1000_KMRNCTRLSTA_TIMEOUTS, align 4
  %26 = call i64 @e1000_write_kmrn_reg_generic(%struct.e1000_hw* %24, i32 %25, i32 65535)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %2, align 8
  br label %136

31:                                               ; preds = %1
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %34 = call i64 @e1000_read_kmrn_reg_generic(%struct.e1000_hw* %32, i32 %33, i32* %6)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %136

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, 63
  store i32 %41, i32* %6, align 4
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @e1000_write_kmrn_reg_generic(%struct.e1000_hw* %42, i32 %43, i32 %44)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %2, align 8
  br label %136

50:                                               ; preds = %39
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %132 [
    i32 128, label %55
    i32 130, label %63
    i32 132, label %63
    i32 133, label %71
    i32 131, label %71
    i32 129, label %79
  ]

55:                                               ; preds = %50
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = call i64 @e1000_copper_link_setup_igp(%struct.e1000_hw* %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* %5, align 8
  store i64 %61, i64* %2, align 8
  br label %136

62:                                               ; preds = %55
  br label %133

63:                                               ; preds = %50, %50
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = call i64 @e1000_copper_link_setup_m88(%struct.e1000_hw* %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* %5, align 8
  store i64 %69, i64* %2, align 8
  br label %136

70:                                               ; preds = %63
  br label %133

71:                                               ; preds = %50, %50
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = call i64 @e1000_copper_link_setup_82577(%struct.e1000_hw* %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* %5, align 8
  store i64 %77, i64* %2, align 8
  br label %136

78:                                               ; preds = %71
  br label %133

79:                                               ; preds = %50
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %83, align 8
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = bitcast %struct.e1000_hw* %85 to %struct.e1000_hw.1*
  %87 = load i32, i32* @IFE_PHY_MDIX_CONTROL, align 4
  %88 = call i64 %84(%struct.e1000_hw.1* %86, i32 %87, i32* %6)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i64, i64* %5, align 8
  store i64 %92, i64* %2, align 8
  br label %136

93:                                               ; preds = %79
  %94 = load i32, i32* @IFE_PMC_AUTO_MDIX, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %112 [
    i32 1, label %102
    i32 2, label %107
    i32 0, label %111
  ]

102:                                              ; preds = %93
  %103 = load i32, i32* @IFE_PMC_FORCE_MDIX, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %116

107:                                              ; preds = %93
  %108 = load i32, i32* @IFE_PMC_FORCE_MDIX, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %116

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %93, %111
  %113 = load i32, i32* @IFE_PMC_AUTO_MDIX, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %112, %107, %102
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %120, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = bitcast %struct.e1000_hw* %122 to %struct.e1000_hw.0*
  %124 = load i32, i32* @IFE_PHY_MDIX_CONTROL, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i64 %121(%struct.e1000_hw.0* %123, i32 %124, i32 %125)
  store i64 %126, i64* %5, align 8
  %127 = load i64, i64* %5, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i64, i64* %5, align 8
  store i64 %130, i64* %2, align 8
  br label %136

131:                                              ; preds = %116
  br label %133

132:                                              ; preds = %50
  br label %133

133:                                              ; preds = %132, %131, %78, %70, %62
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = call i64 @e1000_setup_copper_link_generic(%struct.e1000_hw* %134)
  store i64 %135, i64* %2, align 8
  br label %136

136:                                              ; preds = %133, %129, %91, %76, %68, %60, %48, %37, %29
  %137 = load i64, i64* %2, align 8
  ret i64 %137
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_write_kmrn_reg_generic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_generic(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_copper_link_setup_igp(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_setup_m88(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_setup_82577(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_setup_copper_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
