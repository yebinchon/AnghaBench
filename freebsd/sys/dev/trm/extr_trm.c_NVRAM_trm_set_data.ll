; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_NVRAM_trm_set_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_NVRAM_trm_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVR_SELECT = common dso_local global i32 0, align 4
@NVR_BITOUT = common dso_local global i32 0, align 4
@TRMREG_GEN_NVRAM = common dso_local global i32 0, align 4
@NVR_CLOCK = common dso_local global i32 0, align 4
@NVR_BITIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @NVRAM_trm_set_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVRAM_trm_set_data(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @NVRAM_trm_write_cmd(i32 %9, i32 5, i32 %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %37, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i32, i32* @NVR_SELECT, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @NVR_BITOUT, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %27 = call i32 @trm_reg_write8(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @NVRAM_trm_wait_30us(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NVR_CLOCK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %34 = call i32 @trm_reg_write8(i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @NVRAM_trm_wait_30us(i32 %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load i32, i32* @NVR_SELECT, align 4
  %44 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %45 = call i32 @trm_reg_write8(i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @NVRAM_trm_wait_30us(i32 %46)
  %48 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %49 = call i32 @trm_reg_write8(i32 0, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @NVRAM_trm_wait_30us(i32 %50)
  %52 = load i32, i32* @NVR_SELECT, align 4
  %53 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %54 = call i32 @trm_reg_write8(i32 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @NVRAM_trm_wait_30us(i32 %55)
  br label %57

57:                                               ; preds = %42, %76
  %58 = load i32, i32* @NVR_SELECT, align 4
  %59 = load i32, i32* @NVR_CLOCK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %62 = call i32 @trm_reg_write8(i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @NVRAM_trm_wait_30us(i32 %63)
  %65 = load i32, i32* @NVR_SELECT, align 4
  %66 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %67 = call i32 @trm_reg_write8(i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @NVRAM_trm_wait_30us(i32 %68)
  %70 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %71 = call i32 @trm_reg_read8(i32 %70)
  %72 = load i32, i32* @NVR_BITIN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  br label %77

76:                                               ; preds = %57
  br label %57

77:                                               ; preds = %75
  %78 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %79 = call i32 @trm_reg_write8(i32 0, i32 %78)
  ret void
}

declare dso_local i32 @NVRAM_trm_write_cmd(i32, i32, i32) #1

declare dso_local i32 @trm_reg_write8(i32, i32) #1

declare dso_local i32 @NVRAM_trm_wait_30us(i32) #1

declare dso_local i32 @trm_reg_read8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
