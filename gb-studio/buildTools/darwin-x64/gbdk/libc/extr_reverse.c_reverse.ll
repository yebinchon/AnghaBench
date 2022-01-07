; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/libc/extr_reverse.c_reverse.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/libc/extr_reverse.c_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @reverse(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = sub i64 %7, 1
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i8*, i8** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %5, align 1
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 %21, i8* %24, align 1
  %25 = load i8, i8* %5, align 1
  %26 = load i8*, i8** %2, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %28, align 1
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %4, align 8
  br label %9

33:                                               ; preds = %9
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
