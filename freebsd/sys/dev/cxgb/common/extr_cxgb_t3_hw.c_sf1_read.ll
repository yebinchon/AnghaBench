; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_sf1_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_sf1_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@A_SF_OP = common dso_local global i32 0, align 4
@F_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SF_ATTEMPTS = common dso_local global i32 0, align 4
@A_SF_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @sf1_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf1_read(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ugt i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %53

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @A_SF_OP, align 4
  %22 = call i32 @t3_read_reg(i32* %20, i32 %21)
  %23 = load i32, i32* @F_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %53

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @A_SF_OP, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @V_CONT(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = sub i32 %34, 1
  %36 = call i32 @V_BYTECNT(i32 %35)
  %37 = or i32 %33, %36
  %38 = call i32 @t3_write_reg(i32* %30, i32 %31, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @A_SF_OP, align 4
  %41 = load i32, i32* @F_BUSY, align 4
  %42 = load i32, i32* @SF_ATTEMPTS, align 4
  %43 = call i32 @t3_wait_op_done(i32* %39, i32 %40, i32 %41, i32 0, i32 %42, i32 10)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %29
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @A_SF_DATA, align 4
  %49 = call i32 @t3_read_reg(i32* %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %29
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %26, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_CONT(i32) #1

declare dso_local i32 @V_BYTECNT(i32) #1

declare dso_local i32 @t3_wait_op_done(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
