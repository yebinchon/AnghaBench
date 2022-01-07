; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_write_phy_register_clause22.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_write_phy_register_clause22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_DEVADD_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_PHYADD_SHIFT = common dso_local global i32 0, align 4
@I40E_MDIO_CLAUSE22_OPCODE_WRITE_MASK = common dso_local global i32 0, align 4
@I40E_MDIO_CLAUSE22_STCODE_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_MSCA_MDICMD_MASK = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_write_phy_register_clause22(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1000, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @I40E_GLGEN_MSRWD(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @wr32(%struct.i40e_hw* %21, i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @I40E_GLGEN_MSCA_DEVADD_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @I40E_GLGEN_MSCA_PHYADD_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* @I40E_MDIO_CLAUSE22_OPCODE_WRITE_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @I40E_MDIO_CLAUSE22_STCODE_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @I40E_GLGEN_MSCA_MDICMD_MASK, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @I40E_GLGEN_MSCA(i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @wr32(%struct.i40e_hw* %39, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %59, %4
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @I40E_GLGEN_MSCA(i32 %46)
  %48 = call i32 @rd32(%struct.i40e_hw* %45, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @I40E_GLGEN_MSCA_MDICMD_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %54, i32* %9, align 4
  br label %62

55:                                               ; preds = %44
  %56 = call i32 @i40e_usec_delay(i32 10)
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %44, label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_GLGEN_MSRWD(i32) #1

declare dso_local i32 @I40E_GLGEN_MSCA(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
