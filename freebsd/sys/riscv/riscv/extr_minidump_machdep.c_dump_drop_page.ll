; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_minidump_machdep.c_dump_drop_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_minidump_machdep.c_dump_drop_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i32 0, align 4
@vm_page_dump = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_drop_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @PAGE_SHIFT, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, %5
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 6
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 63
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** @vm_page_dump, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = call i32 @atomic_clear_long(i32* %15, i64 %18)
  ret void
}

declare dso_local i32 @atomic_clear_long(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
