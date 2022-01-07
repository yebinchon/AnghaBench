; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_write_phy_register_clause45.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_write_phy_register_clause45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_MDIADD_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_DEVADD_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_PHYADD_SHIFT = common dso_local global i32 0, align 4
@I40E_MDIO_CLAUSE45_OPCODE_ADDRESS_MASK = common dso_local global i32 0, align 4
@I40E_MDIO_CLAUSE45_STCODE_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_MDICMD_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_MDIINPROGEN_MASK = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_DEBUG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PHY: Can't write command to external PHY.\0A\00", align 1
@I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT = common dso_local global i32 0, align 4
@I40E_MDIO_CLAUSE45_OPCODE_WRITE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_write_phy_register_clause45(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1000, i32* %13, align 4
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %17 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @I40E_GLGEN_MSCA_MDIADD_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @I40E_GLGEN_MSCA_DEVADD_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @I40E_GLGEN_MSCA_PHYADD_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* @I40E_MDIO_CLAUSE45_OPCODE_ADDRESS_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @I40E_MDIO_CLAUSE45_STCODE_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @I40E_GLGEN_MSCA_MDICMD_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @I40E_GLGEN_MSCA_MDIINPROGEN_MASK, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @I40E_GLGEN_MSCA(i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @wr32(%struct.i40e_hw* %39, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %59, %5
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @I40E_GLGEN_MSCA(i32 %46)
  %48 = call i32 @rd32(%struct.i40e_hw* %45, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @I40E_GLGEN_MSCA_MDICMD_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %54, i32* %11, align 4
  br label %62

55:                                               ; preds = %44
  %56 = call i32 @i40e_usec_delay(i32 10)
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %44, label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %67 = load i32, i32* @I40E_DEBUG_PHY, align 4
  %68 = call i32 @i40e_debug(%struct.i40e_hw* %66, i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %118

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT, align 4
  %72 = shl i32 %70, %71
  store i32 %72, i32* %12, align 4
  %73 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @I40E_GLGEN_MSRWD(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @wr32(%struct.i40e_hw* %73, i32 %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @I40E_GLGEN_MSCA_DEVADD_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @I40E_GLGEN_MSCA_PHYADD_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %80, %83
  %85 = load i32, i32* @I40E_MDIO_CLAUSE45_OPCODE_WRITE_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @I40E_MDIO_CLAUSE45_STCODE_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @I40E_GLGEN_MSCA_MDICMD_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @I40E_GLGEN_MSCA_MDIINPROGEN_MASK, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %93, i32* %11, align 4
  store i32 1000, i32* %13, align 4
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @I40E_GLGEN_MSCA(i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @wr32(%struct.i40e_hw* %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %114, %69
  %100 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @I40E_GLGEN_MSCA(i32 %101)
  %103 = call i32 @rd32(%struct.i40e_hw* %100, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @I40E_GLGEN_MSCA_MDICMD_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %109, i32* %11, align 4
  br label %117

110:                                              ; preds = %99
  %111 = call i32 @i40e_usec_delay(i32 10)
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %99, label %117

117:                                              ; preds = %114, %108
  br label %118

118:                                              ; preds = %117, %65
  %119 = load i32, i32* %11, align 4
  ret i32 %119
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_GLGEN_MSCA(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*) #1

declare dso_local i32 @I40E_GLGEN_MSRWD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
