; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_calc_cdu_validation_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_calc_cdu_validation_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDU_VALIDATION_DEFAULT_CFG = common dso_local global i32 0, align 4
@ecore_calc_cdu_validation_byte.crc8_table_valid = internal global i32 0, align 4
@cdu_crc8_table = common dso_local global i32 0, align 4
@CDU_CONTEXT_VALIDATION_CFG_USE_CID = common dso_local global i32 0, align 4
@CDU_CONTEXT_VALIDATION_CFG_USE_REGION = common dso_local global i32 0, align 4
@CDU_CONTEXT_VALIDATION_CFG_USE_TYPE = common dso_local global i32 0, align 4
@CRC8_INIT_VALUE = common dso_local global i32 0, align 4
@CDU_CONTEXT_VALIDATION_CFG_USE_ACTIVE = common dso_local global i32 0, align 4
@CDU_CONTEXT_VALIDATION_CFG_VALIDATION_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ecore_calc_cdu_validation_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_calc_cdu_validation_byte(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @CDU_VALIDATION_DEFAULT_CFG, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @ecore_calc_cdu_validation_byte.crc8_table_valid, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @cdu_crc8_table, align 4
  %17 = call i32 @OSAL_CRC8_POPULATE(i32 %16, i32 7)
  store i32 1, i32* @ecore_calc_cdu_validation_byte.crc8_table_valid, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CDU_CONTEXT_VALIDATION_CFG_USE_CID, align 4
  %21 = ashr i32 %19, %20
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, -1048576
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 4095
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %24, %18
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @CDU_CONTEXT_VALIDATION_CFG_USE_REGION, align 4
  %36 = ashr i32 %34, %35
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 15
  %42 = shl i32 %41, 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CDU_CONTEXT_VALIDATION_CFG_USE_TYPE, align 4
  %48 = ashr i32 %46, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 15
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @OSAL_BE32_TO_CPU(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @cdu_crc8_table, align 4
  %60 = load i32, i32* @CRC8_INIT_VALUE, align 4
  %61 = call i32 @OSAL_CRC8(i32 %59, i32* %11, i32 4, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @CDU_CONTEXT_VALIDATION_CFG_USE_ACTIVE, align 4
  %64 = ashr i32 %62, %63
  %65 = and i32 %64, 1
  %66 = shl i32 %65, 7
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @CDU_CONTEXT_VALIDATION_CFG_VALIDATION_TYPE_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %56
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, 15
  %77 = shl i32 %76, 3
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 7
  %80 = or i32 %77, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %88

83:                                               ; preds = %56
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 127
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83, %74
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i32 @OSAL_CRC8_POPULATE(i32, i32) #1

declare dso_local i32 @OSAL_BE32_TO_CPU(i32) #1

declare dso_local i32 @OSAL_CRC8(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
