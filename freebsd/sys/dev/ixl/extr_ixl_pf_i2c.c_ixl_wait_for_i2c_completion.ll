; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_wait_for_i2c_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_wait_for_i2c_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_GLGEN_I2CCMD_R_MASK = common dso_local global i64 0, align 8
@I40E_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32)* @ixl_wait_for_i2c_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_wait_for_i2c_completion(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 100, i64* %7, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @I40E_GLGEN_I2CCMD(i32 %11)
  %13 = call i64 @rd32(%struct.i40e_hw* %10, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @I40E_GLGEN_I2CCMD_R_MASK, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %25

19:                                               ; preds = %9
  %20 = call i32 @i40e_usec_delay(i32 10)
  br label %21

21:                                               ; preds = %19
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %7, align 8
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %9, label %25

25:                                               ; preds = %21, %18
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @I40E_ERR_TIMEOUT, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_GLGEN_I2CCMD(i32) #1

declare dso_local i32 @i40e_usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
