; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/libc/extr_printf.c__printn.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/libc/extr_printf.c__printn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8, i32 (i8, i8*)**, i8*)* @_printn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_printn(i32 %0, i32 %1, i8 signext %2, i32 (i8, i8*)** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32 (i8, i8*)**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32 (i8, i8*)** %3, i32 (i8, i8*)*** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8, i8* %8, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32 (i8, i8*)**, i32 (i8, i8*)*** %9, align 8
  %20 = load i32 (i8, i8*)*, i32 (i8, i8*)** %19, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 %20(i8 signext 45, i8* %21)
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %15, %5
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = udiv i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32 (i8, i8*)**, i32 (i8, i8*)*** %9, align 8
  %35 = load i8*, i8** %10, align 8
  call void @_printn(i32 %32, i32 %33, i8 signext 0, i32 (i8, i8*)** %34, i8* %35)
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32 (i8, i8*)**, i32 (i8, i8*)*** %9, align 8
  %38 = load i32 (i8, i8*)*, i32 (i8, i8*)** %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = urem i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 %38(i8 signext %45, i8* %46)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
