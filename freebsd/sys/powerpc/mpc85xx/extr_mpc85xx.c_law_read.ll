; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_law_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx.c_law_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @law_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @law_read(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = call i64 (...) @mpc85xx_is_qoriq()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @OCP85XX_LAWBARH(i32 %10)
  %12 = call i32 @ccsr_read4(i32 %11)
  %13 = shl i32 %12, 32
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @OCP85XX_LAWBARL(i32 %14)
  %16 = call i32 @ccsr_read4(i32 %15)
  %17 = or i32 %13, %16
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @OCP85XX_LAWSR_QORIQ(i32 %19)
  %21 = call i32 @ccsr_read4(i32 %20)
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @OCP85XX_LAWBAR(i32 %24)
  %26 = call i32 @ccsr_read4(i32 %25)
  %27 = shl i32 %26, 12
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @OCP85XX_LAWSR_85XX(i32 %29)
  %31 = call i32 @ccsr_read4(i32 %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %9
  ret void
}

declare dso_local i64 @mpc85xx_is_qoriq(...) #1

declare dso_local i32 @ccsr_read4(i32) #1

declare dso_local i32 @OCP85XX_LAWBARH(i32) #1

declare dso_local i32 @OCP85XX_LAWBARL(i32) #1

declare dso_local i32 @OCP85XX_LAWSR_QORIQ(i32) #1

declare dso_local i32 @OCP85XX_LAWBAR(i32) #1

declare dso_local i32 @OCP85XX_LAWSR_85XX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
