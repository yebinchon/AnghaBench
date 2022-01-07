; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_NVRAM_trm_write_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_NVRAM_trm_write_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRMREG_GEN_CONTROL = common dso_local global i32 0, align 4
@EN_EEPROM = common dso_local global i32 0, align 4
@TRMREG_GEN_NVRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @NVRAM_trm_write_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVRAM_trm_write_all(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* @TRMREG_GEN_CONTROL, align 4
  %10 = call i32 @trm_reg_read8(i32 %9)
  %11 = load i32, i32* @EN_EEPROM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @TRMREG_GEN_CONTROL, align 4
  %14 = call i32 @trm_reg_write8(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @NVRAM_trm_write_cmd(i32 %15, i32 4, i32 255)
  %17 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %18 = call i32 @trm_reg_write8(i32 0, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @NVRAM_trm_wait_30us(i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %30, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 128
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @NVRAM_trm_set_data(i32 %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %5, align 8
  br label %21

35:                                               ; preds = %21
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @NVRAM_trm_write_cmd(i32 %36, i32 4, i32 0)
  %38 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %39 = call i32 @trm_reg_write8(i32 0, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @NVRAM_trm_wait_30us(i32 %40)
  %42 = load i32, i32* @TRMREG_GEN_CONTROL, align 4
  %43 = call i32 @trm_reg_read8(i32 %42)
  %44 = load i32, i32* @EN_EEPROM, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* @TRMREG_GEN_CONTROL, align 4
  %48 = call i32 @trm_reg_write8(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @trm_reg_write8(i32, i32) #1

declare dso_local i32 @trm_reg_read8(i32) #1

declare dso_local i32 @NVRAM_trm_write_cmd(i32, i32, i32) #1

declare dso_local i32 @NVRAM_trm_wait_30us(i32) #1

declare dso_local i32 @NVRAM_trm_set_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
