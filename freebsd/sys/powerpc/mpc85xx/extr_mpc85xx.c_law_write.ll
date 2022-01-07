; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_law_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_law_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @law_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @law_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i64 (...) @mpc85xx_is_qoriq()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @OCP85XX_LAWBARH(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 32
  %14 = call i32 @ccsr_write4(i32 %11, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @OCP85XX_LAWBARL(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ccsr_write4(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @OCP85XX_LAWSR_QORIQ(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ccsr_write4(i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @OCP85XX_LAWSR_QORIQ(i32 %23)
  %25 = call i32 @ccsr_read4(i32 %24)
  br label %39

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @OCP85XX_LAWBAR(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 12
  %31 = call i32 @ccsr_write4(i32 %28, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @OCP85XX_LAWSR_85XX(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ccsr_write4(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @OCP85XX_LAWSR_85XX(i32 %36)
  %38 = call i32 @ccsr_read4(i32 %37)
  br label %39

39:                                               ; preds = %26, %9
  %40 = call i32 (...) @isync()
  ret void
}

declare dso_local i64 @mpc85xx_is_qoriq(...) #1

declare dso_local i32 @ccsr_write4(i32, i32) #1

declare dso_local i32 @OCP85XX_LAWBARH(i32) #1

declare dso_local i32 @OCP85XX_LAWBARL(i32) #1

declare dso_local i32 @OCP85XX_LAWSR_QORIQ(i32) #1

declare dso_local i32 @ccsr_read4(i32) #1

declare dso_local i32 @OCP85XX_LAWBAR(i32) #1

declare dso_local i32 @OCP85XX_LAWSR_85XX(i32) #1

declare dso_local i32 @isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
