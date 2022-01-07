; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/libc/extr_printf.c__printn.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/libc/extr_printf.c__printn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8, void (i8, i8*)*, i8*)* @_printn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_printn(i32 %0, i32 %1, i8 signext %2, void (i8, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca void (i8, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store void (i8, i8*)* %3, void (i8, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8, i8* %8, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load void (i8, i8*)*, void (i8, i8*)** %9, align 8
  %20 = load i8*, i8** %10, align 8
  call void %19(i8 signext 45, i8* %20)
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %15, %5
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = udiv i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = load void (i8, i8*)*, void (i8, i8*)** %9, align 8
  %33 = load i8*, i8** %10, align 8
  call void @_printn(i32 %30, i32 %31, i8 signext 0, void (i8, i8*)* %32, i8* %33)
  br label %34

34:                                               ; preds = %27, %23
  %35 = load void (i8, i8*)*, void (i8, i8*)** %9, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = urem i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %10, align 8
  call void %35(i8 signext %42, i8* %43)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
