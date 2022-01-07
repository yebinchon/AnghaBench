; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/fixwhite/extr_fixwhite.c_savewhite.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/fixwhite/extr_fixwhite.c_savewhite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@queuelen = common dso_local global i32 0, align 4
@column = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32)* @savewhite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savewhite(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %6 = load i8, i8* %3, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %57 [
    i32 10, label %8
    i32 32, label %34
    i32 9, label %36
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, i32* @queuelen, align 4
  store i32 0, i32* @column, align 4
  br label %33

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %21, %12
  %14 = call i32 @peekbyte(i32 1, i8 signext 32)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i32 @peekbyte(i32 1, i8 signext 9)
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ true, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32, i32* @queuelen, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @queuelen, align 4
  br label %13

24:                                               ; preds = %19
  %25 = call i32 @peekbyte(i32 2, i8 signext 10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = call i32 @peekbyte(i32 1, i8 signext 10)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %57

31:                                               ; preds = %27, %24
  %32 = call i32 @savebyte(i8 signext 10)
  br label %33

33:                                               ; preds = %31, %11
  br label %57

34:                                               ; preds = %2
  %35 = call i32 @savebyte(i8 signext 32)
  br label %57

36:                                               ; preds = %2
  %37 = load i32, i32* @column, align 4
  %38 = sdiv i32 %37, 8
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %39, 8
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %44, %36
  %42 = call i32 @peekbyte(i32 1, i8 signext 32)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @queuelen, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* @queuelen, align 4
  %47 = load i32, i32* @column, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* @column, align 4
  br label %41

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %54, %49
  %51 = load i32, i32* @column, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @savebyte(i8 signext 9)
  br label %50

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %30, %2, %56, %34, %33
  ret void
}

declare dso_local i32 @peekbyte(i32, i8 signext) #1

declare dso_local i32 @savebyte(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
