; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grdc/extr_grdc.c_standt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grdc/extr_grdc.c_standt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hascolor = common dso_local global i64 0, align 8
@A_STANDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @standt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @standt(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i64, i64* @hascolor, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = call i32 @COLOR_PAIR(i32 1)
  %10 = call i32 @attron(i32 %9)
  br label %14

11:                                               ; preds = %5
  %12 = load i32, i32* @A_STANDOUT, align 4
  %13 = call i32 @attron(i32 %12)
  br label %14

14:                                               ; preds = %11, %8
  br label %25

15:                                               ; preds = %1
  %16 = load i64, i64* @hascolor, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 @COLOR_PAIR(i32 2)
  %20 = call i32 @attron(i32 %19)
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @A_STANDOUT, align 4
  %23 = call i32 @attroff(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @attron(i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @attroff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
