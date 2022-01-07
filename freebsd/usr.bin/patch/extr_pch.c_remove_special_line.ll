; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_remove_special_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_remove_special_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pfp = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @remove_special_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_special_line() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @pfp, align 4
  %4 = call i32 @fgetc(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 92
  br i1 %6, label %7, label %21

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %18, %7
  %9 = load i32, i32* @pfp, align 4
  %10 = call i32 @fgetc(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @EOF, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 10
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ]
  br i1 %19, label %8, label %20

20:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %30

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @pfp, align 4
  %27 = load i32, i32* @SEEK_CUR, align 4
  %28 = call i32 @fseeko(i32 %26, i32 -1, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @fgetc(i32) #1

declare dso_local i32 @fseeko(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
