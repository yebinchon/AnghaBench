; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_in2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_in2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E1CS2_SCC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @cte_in2(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @E1CS2(i32 %5)
  %7 = load i8, i8* @E1CS2_SCC, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = ashr i32 %10, 4
  %12 = or i32 %8, %11
  %13 = trunc i32 %12 to i8
  %14 = call i32 @outb(i32 %6, i8 zeroext %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @E1DAT(i32 %15)
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = trunc i32 %19 to i8
  %21 = call i32 @outb(i32 %16, i8 zeroext %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @E1DAT(i32 %22)
  %24 = call zeroext i8 @inb(i32 %23)
  ret i8 %24
}

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @E1CS2(i32) #1

declare dso_local i32 @E1DAT(i32) #1

declare dso_local zeroext i8 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
