; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_inskip.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_inskip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inskip(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %29, %14
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @getc(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %30

29:                                               ; preds = %24, %21
  br label %16

30:                                               ; preds = %28, %16
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EOF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** @stdin, align 8
  %37 = icmp ne i32* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @fclose(i32* %39)
  br label %41

41:                                               ; preds = %38, %34
  store i32 1, i32* %4, align 4
  br label %44

42:                                               ; preds = %30
  br label %10

43:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
