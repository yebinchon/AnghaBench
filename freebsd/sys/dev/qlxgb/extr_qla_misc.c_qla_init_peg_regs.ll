; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_init_peg_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_init_peg_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q8_PEG_D_RESET1 = common dso_local global i32 0, align 4
@Q8_PEG_D_RESET2 = common dso_local global i32 0, align 4
@Q8_PEG_I_RESET = common dso_local global i32 0, align 4
@Q8_PEG_0_CLR1 = common dso_local global i32 0, align 4
@Q8_PEG_0_CLR2 = common dso_local global i32 0, align 4
@Q8_PEG_1_CLR1 = common dso_local global i32 0, align 4
@Q8_PEG_1_CLR2 = common dso_local global i32 0, align 4
@Q8_PEG_2_CLR1 = common dso_local global i32 0, align 4
@Q8_PEG_2_CLR2 = common dso_local global i32 0, align 4
@Q8_PEG_3_CLR1 = common dso_local global i32 0, align 4
@Q8_PEG_3_CLR2 = common dso_local global i32 0, align 4
@Q8_PEG_4_CLR1 = common dso_local global i32 0, align 4
@Q8_PEG_4_CLR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @qla_init_peg_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_init_peg_regs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @Q8_PEG_D_RESET1, align 4
  %5 = call i32 @WRITE_OFFSET32(i32* %3, i32 %4, i32 30)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @Q8_PEG_D_RESET2, align 4
  %8 = call i32 @WRITE_OFFSET32(i32* %6, i32 %7, i32 8)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @Q8_PEG_I_RESET, align 4
  %11 = call i32 @WRITE_OFFSET32(i32* %9, i32 %10, i32 8)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @Q8_PEG_0_CLR1, align 4
  %14 = call i32 @WRITE_OFFSET32(i32* %12, i32 %13, i32 0)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @Q8_PEG_0_CLR2, align 4
  %17 = call i32 @WRITE_OFFSET32(i32* %15, i32 %16, i32 0)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @Q8_PEG_1_CLR1, align 4
  %20 = call i32 @WRITE_OFFSET32(i32* %18, i32 %19, i32 0)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @Q8_PEG_1_CLR2, align 4
  %23 = call i32 @WRITE_OFFSET32(i32* %21, i32 %22, i32 0)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @Q8_PEG_2_CLR1, align 4
  %26 = call i32 @WRITE_OFFSET32(i32* %24, i32 %25, i32 0)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @Q8_PEG_2_CLR2, align 4
  %29 = call i32 @WRITE_OFFSET32(i32* %27, i32 %28, i32 0)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @Q8_PEG_3_CLR1, align 4
  %32 = call i32 @WRITE_OFFSET32(i32* %30, i32 %31, i32 0)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @Q8_PEG_3_CLR2, align 4
  %35 = call i32 @WRITE_OFFSET32(i32* %33, i32 %34, i32 0)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @Q8_PEG_4_CLR1, align 4
  %38 = call i32 @WRITE_OFFSET32(i32* %36, i32 %37, i32 0)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @Q8_PEG_4_CLR2, align 4
  %41 = call i32 @WRITE_OFFSET32(i32* %39, i32 %40, i32 0)
  ret void
}

declare dso_local i32 @WRITE_OFFSET32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
