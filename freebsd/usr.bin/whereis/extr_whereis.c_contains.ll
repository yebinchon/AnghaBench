; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/whereis/extr_whereis.c_contains.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/whereis/extr_whereis.c_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*)* @contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = icmp eq i32** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32**, i32*** %4, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strcmp(i32* %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %25

21:                                               ; preds = %15
  %22 = load i32**, i32*** %4, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i32 1
  store i32** %23, i32*** %4, align 8
  br label %11

24:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %20, %9
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
