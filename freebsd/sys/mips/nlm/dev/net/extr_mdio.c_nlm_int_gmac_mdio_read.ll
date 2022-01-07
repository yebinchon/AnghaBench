; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_int_gmac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_mdio.c_nlm_int_gmac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MDIO_CTRL_SMP = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_PHYADDR_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_DEVTYPE_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_OP_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_ST_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_XDIV_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_TA_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_MIIM_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_MCDIV_POS = common dso_local global i32 0, align 4
@INT_MDIO_CTRL = common dso_local global i64 0, align 8
@INT_MDIO_CTRL_CMD_LOAD = common dso_local global i32 0, align 4
@INT_MDIO_CTRL_LOAD_POS = common dso_local global i32 0, align 4
@INT_MDIO_RD_STAT = common dso_local global i64 0, align 8
@INT_MDIO_STAT_MBSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_int_gmac_mdio_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @INT_MDIO_CTRL_SMP, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @INT_MDIO_CTRL_PHYADDR_POS, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @INT_MDIO_CTRL_DEVTYPE_POS, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* @INT_MDIO_CTRL_OP_POS, align 4
  %25 = shl i32 2, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @INT_MDIO_CTRL_ST_POS, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @INT_MDIO_CTRL_XDIV_POS, align 4
  %31 = shl i32 7, %30
  %32 = or i32 %29, %31
  %33 = load i32, i32* @INT_MDIO_CTRL_TA_POS, align 4
  %34 = shl i32 2, %33
  %35 = or i32 %32, %34
  %36 = load i32, i32* @INT_MDIO_CTRL_MIIM_POS, align 4
  %37 = shl i32 2, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @INT_MDIO_CTRL_MCDIV_POS, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i64, i64* @INT_MDIO_CTRL, align 8
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = call i32 @NAE_REG(i32 %43, i32 %44, i64 %49)
  %51 = call i32 @nlm_read_nae_reg(i32 %42, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @INT_MDIO_CTRL_CMD_LOAD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %6
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* @INT_MDIO_CTRL, align 8
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = call i32 @NAE_REG(i32 %58, i32 %59, i64 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @INT_MDIO_CTRL_CMD_LOAD, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @nlm_write_nae_reg(i32 %57, i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %56, %6
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i64, i64* @INT_MDIO_CTRL, align 8
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = call i32 @NAE_REG(i32 %73, i32 %74, i64 %79)
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @nlm_write_nae_reg(i32 %72, i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i64, i64* @INT_MDIO_CTRL, align 8
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  %91 = call i32 @NAE_REG(i32 %84, i32 %85, i64 %90)
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @INT_MDIO_CTRL_LOAD_POS, align 4
  %94 = shl i32 1, %93
  %95 = or i32 %92, %94
  %96 = call i32 @nlm_write_nae_reg(i32 %83, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %111, %71
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i64, i64* @INT_MDIO_RD_STAT, align 8
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %102, 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %101, %104
  %106 = call i32 @NAE_REG(i32 %99, i32 %100, i64 %105)
  %107 = call i32 @nlm_read_nae_reg(i32 %98, i32 %106)
  %108 = load i32, i32* @INT_MDIO_STAT_MBSY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %97

112:                                              ; preds = %97
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i64, i64* @INT_MDIO_CTRL, align 8
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %116, %119
  %121 = call i32 @NAE_REG(i32 %114, i32 %115, i64 %120)
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @nlm_write_nae_reg(i32 %113, i32 %121, i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i64, i64* @INT_MDIO_RD_STAT, align 8
  %128 = load i32, i32* %8, align 4
  %129 = mul nsw i32 %128, 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %127, %130
  %132 = call i32 @NAE_REG(i32 %125, i32 %126, i64 %131)
  %133 = call i32 @nlm_read_nae_reg(i32 %124, i32 %132)
  ret i32 %133
}

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i64) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
