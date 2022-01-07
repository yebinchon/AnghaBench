; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_wr_mpi_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_wr_mpi_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q81_CTL_PROC_ADDR = common dso_local global i32 0, align 4
@Q81_CTL_PROC_ADDR_RDY = common dso_local global i32 0, align 4
@Q81_CTL_PROC_ADDR_ERR = common dso_local global i32 0, align 4
@Q81_CTL_PROC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @qls_wr_mpi_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qls_wr_mpi_reg(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @Q81_CTL_PROC_ADDR, align 4
  %10 = load i32, i32* @Q81_CTL_PROC_ADDR_RDY, align 4
  %11 = load i32, i32* @Q81_CTL_PROC_ADDR_ERR, align 4
  %12 = call i32 @qls_wait_reg_rdy(i32* %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %30

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @Q81_CTL_PROC_DATA, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @WRITE_REG32(i32* %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @Q81_CTL_PROC_ADDR, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @WRITE_REG32(i32* %21, i32 %22, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @Q81_CTL_PROC_ADDR, align 4
  %27 = load i32, i32* @Q81_CTL_PROC_ADDR_RDY, align 4
  %28 = load i32, i32* @Q81_CTL_PROC_ADDR_ERR, align 4
  %29 = call i32 @qls_wait_reg_rdy(i32* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %16, %15
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @qls_wait_reg_rdy(i32*, i32, i32, i32) #1

declare dso_local i32 @WRITE_REG32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
