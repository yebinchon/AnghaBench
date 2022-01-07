; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_ins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @cte_ins(i32 %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 992
  %11 = call i32 @E1DAT(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i8, i8* %5, align 1
  %14 = call i32 @outb(i32 %12, i8 zeroext %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i8, i8* %6, align 1
  %17 = call i32 @outb(i32 %15, i8 zeroext %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @outb(i32 %18, i8 zeroext %19)
  %21 = load i32, i32* %8, align 4
  %22 = call zeroext i8 @inb(i32 %21)
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %7, align 1
  %28 = load i32, i32* %4, align 4
  %29 = load i8, i8* %5, align 1
  %30 = call i32 @outb(i32 %28, i8 zeroext %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i8, i8* %7, align 1
  %33 = call i32 @outb(i32 %31, i8 zeroext %32)
  %34 = load i8, i8* %7, align 1
  ret i8 %34
}

declare dso_local i32 @E1DAT(i32) #1

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local zeroext i8 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
