; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_sf1_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_sf1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@A_SF_OP = common dso_local global i32 0, align 4
@F_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SF_DATA = common dso_local global i32 0, align 4
@SF_ATTEMPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @sf1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf1_write(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %49

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @A_SF_OP, align 4
  %21 = call i32 @t3_read_reg(i32* %19, i32 %20)
  %22 = load i32, i32* @F_BUSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @A_SF_DATA, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @t3_write_reg(i32* %29, i32 %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @A_SF_OP, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @V_CONT(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %37, 1
  %39 = call i32 @V_BYTECNT(i32 %38)
  %40 = or i32 %36, %39
  %41 = call i32 @V_OP(i32 1)
  %42 = or i32 %40, %41
  %43 = call i32 @t3_write_reg(i32* %33, i32 %34, i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @A_SF_OP, align 4
  %46 = load i32, i32* @F_BUSY, align 4
  %47 = load i32, i32* @SF_ATTEMPTS, align 4
  %48 = call i32 @t3_wait_op_done(i32* %44, i32 %45, i32 %46, i32 0, i32 %47, i32 10)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %28, %25, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_CONT(i32) #1

declare dso_local i32 @V_BYTECNT(i32) #1

declare dso_local i32 @V_OP(i32) #1

declare dso_local i32 @t3_wait_op_done(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
