; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_calcspeed8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_calcspeed8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ess_calcspeed8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_calcspeed8(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 22000
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sdiv i32 %10, 2
  %12 = add nsw i32 795500, %11
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 795500, %16
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 256, %20
  %22 = or i32 %21, 128
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 397700, %25
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sdiv i32 %29, 2
  %31 = add nsw i32 397700, %30
  %32 = load i32, i32* %4, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 128, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %9
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** %2, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 255
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
