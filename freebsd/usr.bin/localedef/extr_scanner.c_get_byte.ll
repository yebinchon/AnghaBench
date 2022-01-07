; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_get_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@esc_char = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_byte() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @scanc()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @esc_char, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @unscanc(i32 %7)
  %9 = load i32, i32* @EOF, align 4
  store i32 %9, i32* %1, align 4
  br label %27

10:                                               ; preds = %0
  %11 = call i32 (...) @scanc()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %21 [
    i32 100, label %13
    i32 68, label %13
    i32 120, label %15
    i32 88, label %15
    i32 48, label %17
    i32 49, label %17
    i32 50, label %17
    i32 51, label %17
    i32 52, label %17
    i32 53, label %17
    i32 54, label %17
    i32 55, label %17
  ]

13:                                               ; preds = %10, %10
  %14 = call i32 (...) @scan_dec_byte()
  store i32 %14, i32* %1, align 4
  br label %27

15:                                               ; preds = %10, %10
  %16 = call i32 (...) @scan_hex_byte()
  store i32 %16, i32* %1, align 4
  br label %27

17:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @unscanc(i32 %18)
  %20 = call i32 (...) @scan_oct_byte()
  store i32 %20, i32* %1, align 4
  br label %27

21:                                               ; preds = %10
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @unscanc(i32 %22)
  %24 = load i32, i32* @esc_char, align 4
  %25 = call i32 @unscanc(i32 %24)
  %26 = load i32, i32* @EOF, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %21, %17, %15, %13, %6
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @scanc(...) #1

declare dso_local i32 @unscanc(i32) #1

declare dso_local i32 @scan_dec_byte(...) #1

declare dso_local i32 @scan_hex_byte(...) #1

declare dso_local i32 @scan_oct_byte(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
