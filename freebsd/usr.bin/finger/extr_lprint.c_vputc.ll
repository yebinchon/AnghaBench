; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_lprint.c_vputc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_lprint.c_vputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @vputc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vputc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = call i64 @isprint(i8 zeroext %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i8, i8* %2, align 1
  %9 = call i32 @isascii(i8 zeroext %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = call i32 @putchar(i8 signext 77)
  %13 = call i32 @putchar(i8 signext 45)
  %14 = load i8, i8* %2, align 1
  %15 = call zeroext i8 @toascii(i8 zeroext %14)
  store i8 %15, i8* %2, align 1
  store i32 1, i32* %3, align 4
  br label %17

16:                                               ; preds = %7, %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i8, i8* %2, align 1
  %19 = call i64 @isprint(i8 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load i8, i8* %2, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i8, i8* %2, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8, i8* %2, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28, %24, %17
  %37 = load i8, i8* %2, align 1
  %38 = call i32 @putchar(i8 signext %37)
  br label %53

39:                                               ; preds = %32, %21
  %40 = call i32 @putchar(i8 signext 94)
  %41 = load i8, i8* %2, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 127
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %49

45:                                               ; preds = %39
  %46 = load i8, i8* %2, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, 64
  br label %49

49:                                               ; preds = %45, %44
  %50 = phi i32 [ 63, %44 ], [ %48, %45 ]
  %51 = trunc i32 %50 to i8
  %52 = call i32 @putchar(i8 signext %51)
  br label %53

53:                                               ; preds = %49, %36
  ret void
}

declare dso_local i64 @isprint(i8 zeroext) #1

declare dso_local i32 @isascii(i8 zeroext) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local zeroext i8 @toascii(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
