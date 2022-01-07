; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_vmstat.c_putlongdouble.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_vmstat.c_putlongdouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%*.*Lf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%*.0Lf\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%*.0Lfk\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%*.0LfM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putlongdouble(x86_fp80 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca x86_fp80, align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  store x86_fp80 %0, x86_fp80* %7, align 16
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @move(i32 %15, i32 %16)
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %6
  %21 = load x86_fp80, x86_fp80* %7, align 16
  %22 = fcmp oeq x86_fp80 %21, 0xK00000000000000000000
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %10, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @addch(i8 signext 32)
  br label %24

30:                                               ; preds = %24
  br label %83

31:                                               ; preds = %20, %6
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sitofp i32 %34 to x86_fp80
  %36 = load x86_fp80, x86_fp80* %7, align 16
  %37 = call i32 (i8*, i32, i8*, i32, x86_fp80, ...) @snprintf(i8* %32, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %33, x86_fp80 %35, x86_fp80 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %43 = load i32, i32* %10, align 4
  %44 = load x86_fp80, x86_fp80* %7, align 16
  %45 = call i32 (i8*, i32, i8*, i32, x86_fp80, ...) @snprintf(i8* %42, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %43, x86_fp80 %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %41, %31
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load x86_fp80, x86_fp80* %7, align 16
  %55 = fdiv x86_fp80 %54, 0xK4008FA00000000000000
  %56 = call i32 (i8*, i32, i8*, i32, x86_fp80, ...) @snprintf(i8* %51, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %53, x86_fp80 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load x86_fp80, x86_fp80* %7, align 16
  %66 = fdiv x86_fp80 %65, 0xK4012F424000000000000
  %67 = call i32 (i8*, i32, i8*, i32, x86_fp80, ...) @snprintf(i8* %62, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %64, x86_fp80 %66)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %61, %57
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %77, %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @addch(i8 signext 42)
  br label %73

79:                                               ; preds = %73
  br label %83

80:                                               ; preds = %68
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %82 = call i32 @addstr(i8* %81)
  br label %83

83:                                               ; preds = %80, %79, %30
  ret void
}

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @addch(i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, x86_fp80, ...) #1

declare dso_local i32 @addstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
