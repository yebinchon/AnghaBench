; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_card.c_locate_tuner_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_card.c_locate_tuner_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ABSENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @locate_tuner_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locate_tuner_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @i2cRead(i32 %4, i32 193)
  %6 = load i64, i64* @ABSENT, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 192, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @i2cRead(i32 %10, i32 195)
  %12 = load i64, i64* @ABSENT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 194, i32* %2, align 4
  br label %28

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @i2cRead(i32 %16, i32 197)
  %18 = load i64, i64* @ABSENT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 196, i32* %2, align 4
  br label %28

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @i2cRead(i32 %22, i32 199)
  %24 = load i64, i64* @ABSENT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 198, i32* %2, align 4
  br label %28

27:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %20, %14, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @i2cRead(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
