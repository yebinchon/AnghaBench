; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_irq.c_print_counter.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/extr_irq.c_print_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tim_cnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c" TIM %u\00", align 1
@vbl_cnt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"- VBL %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_counter() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @disable_interrupts()
  %3 = load i64, i64* @tim_cnt, align 8
  store i64 %3, i64* %1, align 8
  %4 = call i32 (...) @enable_interrupts()
  %5 = load i64, i64* %1, align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 (...) @posy()
  %9 = call i32 @gotoxy(i32 9, i32 %8)
  %10 = call i32 (...) @disable_interrupts()
  %11 = load i64, i64* @vbl_cnt, align 8
  store i64 %11, i64* %1, align 8
  %12 = call i32 (...) @enable_interrupts()
  %13 = load i64, i64* %1, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  ret void
}

declare dso_local i32 @disable_interrupts(...) #1

declare dso_local i32 @enable_interrupts(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @gotoxy(i32, i32) #1

declare dso_local i32 @posy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
