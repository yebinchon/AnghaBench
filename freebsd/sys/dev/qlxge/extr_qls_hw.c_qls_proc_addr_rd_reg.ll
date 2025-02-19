; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_proc_addr_rd_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_proc_addr_rd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q81_CTL_PROC_ADDR_READ = common dso_local global i32 0, align 4
@Q81_CTL_PROC_ADDR = common dso_local global i32 0, align 4
@Q81_CTL_PROC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @qls_proc_addr_rd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qls_proc_addr_rd_reg(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @qls_wait_for_proc_addr_ready(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %36

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @Q81_CTL_PROC_ADDR_READ, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @Q81_CTL_PROC_ADDR, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @WRITE_REG32(i32* %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @qls_wait_for_proc_addr_ready(i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %36

31:                                               ; preds = %16
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @Q81_CTL_PROC_DATA, align 4
  %34 = call i32 @READ_REG32(i32* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %30, %15
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @qls_wait_for_proc_addr_ready(i32*) #1

declare dso_local i32 @WRITE_REG32(i32*, i32, i32) #1

declare dso_local i32 @READ_REG32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
