; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_chip_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_chip_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSR_VAR_MASK = common dso_local global i32 0, align 4
@CRONYX_400 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cx_chip_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_chip_revision(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BSR_VAR_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @CRONYX_400, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @CS0(i32 %13)
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @CS1(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %30, %18
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @GFRCR(i32 %21)
  %23 = call i32 @inb(i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 20000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %37

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @GFRCR(i32 %34)
  %36 = call i32 @inb(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @CS0(i32) #1

declare dso_local i32 @CS1(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @GFRCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
