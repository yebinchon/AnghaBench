; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_fgetNUL.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_fgetNUL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetNUL(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %24, %3
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @getc(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @EOF, align 4
  %21 = icmp ne i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14, %10
  %23 = phi i1 [ false, %14 ], [ false, %10 ], [ %21, %18 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  store i8 %26, i8* %27, align 1
  br label %10

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  store i8 0, i8* %30, align 1
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @getc(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @feof(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @ferror(i32* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %29
  %42 = phi i1 [ true, %29 ], [ %40, %37 ]
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  ret i32 %44
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
