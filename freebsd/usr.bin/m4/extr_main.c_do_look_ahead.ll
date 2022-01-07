; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_main.c_do_look_ahead.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_main.c_do_look_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_look_ahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_look_ahead(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = trunc i32 %7 to i8
  %9 = zext i8 %8 to i32
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %9, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %50, %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = call i32 (...) @gpbc()
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EOF, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = trunc i32 %28 to i8
  %30 = zext i8 %29 to i32
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %27, %22
  %36 = load i32, i32* %4, align 4
  %37 = trunc i32 %36 to i8
  %38 = call i32 @pushback(i8 signext %37)
  br label %39

39:                                               ; preds = %43, %35
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @pushback(i8 signext %46)
  br label %39

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %54

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %17

53:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gpbc(...) #1

declare dso_local i32 @pushback(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
