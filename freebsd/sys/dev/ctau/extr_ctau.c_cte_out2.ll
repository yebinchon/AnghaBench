; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_out2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_cte_out2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E1CS2_SCC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cte_out2(i32 %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @E1CS2(i32 %7)
  %9 = load i8, i8* @E1CS2_SCC, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = ashr i32 %12, 4
  %14 = or i32 %10, %13
  %15 = trunc i32 %14 to i8
  %16 = call i32 @outb(i32 %8, i8 zeroext %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @E1DAT(i32 %17)
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 15
  %22 = trunc i32 %21 to i8
  %23 = call i32 @outb(i32 %18, i8 zeroext %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @E1DAT(i32 %24)
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @outb(i32 %25, i8 zeroext %26)
  ret void
}

declare dso_local i32 @outb(i32, i8 zeroext) #1

declare dso_local i32 @E1CS2(i32) #1

declare dso_local i32 @E1DAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
