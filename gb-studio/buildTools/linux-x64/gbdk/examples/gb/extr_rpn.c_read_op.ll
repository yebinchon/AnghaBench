; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_rpn.c_read_op.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_rpn.c_read_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pos = common dso_local global i64 0, align 8
@s = common dso_local global i8* null, align 8
@n = common dso_local global i32 0, align 4
@NUMBER = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @read_op() #0 {
  %1 = alloca i8, align 1
  %2 = load i64, i64* @pos, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i8*, i8** @s, align 8
  %6 = call i32 @gets(i8* %5)
  br label %7

7:                                                ; preds = %4, %0
  br label %8

8:                                                ; preds = %24, %7
  %9 = load i8*, i8** @s, align 8
  %10 = load i64, i64* @pos, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load i8*, i8** @s, align 8
  %17 = load i64, i64* @pos, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 9
  br label %22

22:                                               ; preds = %15, %8
  %23 = phi i1 [ true, %8 ], [ %21, %15 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i64, i64* @pos, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @pos, align 8
  br label %8

27:                                               ; preds = %22
  %28 = load i8*, i8** @s, align 8
  %29 = load i64, i64* @pos, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i64 0, i64* @pos, align 8
  store i8 10, i8* %1, align 1
  br label %75

35:                                               ; preds = %27
  %36 = load i8*, i8** @s, align 8
  %37 = load i64, i64* @pos, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isdigit(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** @s, align 8
  %44 = load i64, i64* @pos, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* @pos, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %44
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %1, align 1
  br label %75

48:                                               ; preds = %35
  %49 = load i8*, i8** @s, align 8
  %50 = load i64, i64* @pos, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %53, 48
  store i32 %54, i32* @n, align 4
  br label %55

55:                                               ; preds = %63, %48
  %56 = load i8*, i8** @s, align 8
  %57 = load i64, i64* @pos, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* @pos, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isdigit(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load i32, i32* @n, align 4
  %65 = mul nsw i32 10, %64
  %66 = load i8*, i8** @s, align 8
  %67 = load i64, i64* @pos, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %65, %70
  %72 = sub nsw i32 %71, 48
  store i32 %72, i32* @n, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load i8, i8* @NUMBER, align 1
  store i8 %74, i8* %1, align 1
  br label %75

75:                                               ; preds = %73, %42, %34
  %76 = load i8, i8* %1, align 1
  ret i8 %76
}

declare dso_local i32 @gets(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
