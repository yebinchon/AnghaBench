; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_misc.c_pbnumbase.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_misc.c_pbnumbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pbnumbase.digits = internal global [36 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz", align 16
@.str = private unnamed_addr constant [29 x i8] c"base %d > 36: not supported.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"bad base %d for conversion.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbnumbase(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 36
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @m4errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @m4errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 0, %24
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %25, %23 ], [ %27, %26 ]
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %40, %28
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = srem i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [36 x i8], [36 x i8]* @pbnumbase.digits, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @pushback(i8 signext %36)
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sdiv i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %30, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %57, %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @pushback(i8 signext 48)
  br label %52

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @pushback(i8 signext 45)
  br label %64

64:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @m4errx(i32, i8*, i32) #1

declare dso_local i32 @pushback(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
