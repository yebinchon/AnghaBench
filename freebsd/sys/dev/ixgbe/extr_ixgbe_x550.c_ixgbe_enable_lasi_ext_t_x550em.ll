; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_enable_lasi_ext_t_x550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_enable_lasi_ext_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@ixgbe_mac_X550EM_a = common dso_local global i64 0, align 8
@IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_MDIO_PMA_TX_VEN_LASI_INT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_HI_TEMP_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_DEV_FAULT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_ALARM_1_INT = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_enable_lasi_ext_t_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_enable_lasi_ext_t_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = call i64 @ixgbe_get_lasi_ext_t_x550em(%struct.ixgbe_hw* %7, i32* %6)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ixgbe_mac_X550EM_a, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.0*
  %23 = load i32, i32* @IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK, align 4
  %24 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %25 = call i64 %20(%struct.ixgbe_hw.0* %22, i32 %23, i32 %24, i32* %5)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @IXGBE_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %160

31:                                               ; preds = %15
  %32 = load i32, i32* @IXGBE_MDIO_PMA_TX_VEN_LASI_INT_EN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %38, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = bitcast %struct.ixgbe_hw* %40 to %struct.ixgbe_hw.1*
  %42 = load i32, i32* @IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK, align 4
  %43 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 %39(%struct.ixgbe_hw.1* %41, i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @IXGBE_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %160

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.0*
  %60 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_MASK, align 4
  %61 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %62 = call i64 %57(%struct.ixgbe_hw.0* %59, i32 %60, i32 %61, i32* %5)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @IXGBE_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i64, i64* %4, align 8
  store i64 %67, i64* %2, align 8
  br label %160

68:                                               ; preds = %52
  %69 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_HI_TEMP_EN, align 4
  %70 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_DEV_FAULT_EN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %77, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = bitcast %struct.ixgbe_hw* %79 to %struct.ixgbe_hw.1*
  %81 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_MASK, align 4
  %82 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i64 %78(%struct.ixgbe_hw.1* %80, i32 %81, i32 %82, i32 %83)
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @IXGBE_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %68
  %89 = load i64, i64* %4, align 8
  store i64 %89, i64* %2, align 8
  br label %160

90:                                               ; preds = %68
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %94, align 8
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %97 = bitcast %struct.ixgbe_hw* %96 to %struct.ixgbe_hw.0*
  %98 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK, align 4
  %99 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %100 = call i64 %95(%struct.ixgbe_hw.0* %97, i32 %98, i32 %99, i32* %5)
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @IXGBE_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i64, i64* %4, align 8
  store i64 %105, i64* %2, align 8
  br label %160

106:                                              ; preds = %90
  %107 = load i32, i32* @IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN, align 4
  %108 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALARM_1_INT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %115, align 8
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = bitcast %struct.ixgbe_hw* %117 to %struct.ixgbe_hw.1*
  %119 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK, align 4
  %120 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i64 %116(%struct.ixgbe_hw.1* %118, i32 %119, i32 %120, i32 %121)
  store i64 %122, i64* %4, align 8
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @IXGBE_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %106
  %127 = load i64, i64* %4, align 8
  store i64 %127, i64* %2, align 8
  br label %160

128:                                              ; preds = %106
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %132, align 8
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %135 = bitcast %struct.ixgbe_hw* %134 to %struct.ixgbe_hw.0*
  %136 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK, align 4
  %137 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %138 = call i64 %133(%struct.ixgbe_hw.0* %135, i32 %136, i32 %137, i32* %5)
  store i64 %138, i64* %4, align 8
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* @IXGBE_SUCCESS, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = load i64, i64* %4, align 8
  store i64 %143, i64* %2, align 8
  br label %160

144:                                              ; preds = %128
  %145 = load i32, i32* @IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN, align 4
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %149 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32)** %151, align 8
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %154 = bitcast %struct.ixgbe_hw* %153 to %struct.ixgbe_hw.1*
  %155 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK, align 4
  %156 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i64 %152(%struct.ixgbe_hw.1* %154, i32 %155, i32 %156, i32 %157)
  store i64 %158, i64* %4, align 8
  %159 = load i64, i64* %4, align 8
  store i64 %159, i64* %2, align 8
  br label %160

160:                                              ; preds = %144, %142, %126, %104, %88, %66, %49, %29
  %161 = load i64, i64* %2, align 8
  ret i64 %161
}

declare dso_local i64 @ixgbe_get_lasi_ext_t_x550em(%struct.ixgbe_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
