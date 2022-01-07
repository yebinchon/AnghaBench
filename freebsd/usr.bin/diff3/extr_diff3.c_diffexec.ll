; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_diffexec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_diffexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PD_CLOEXEC = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"child could not duplicate descriptor\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"could not execute diff: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"could not fork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*)* @diffexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diffexec(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @PD_CLOEXEC, align 4
  %10 = call i32 @pdfork(i32* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  switch i32 %10, label %36 [
    i32 0, label %11
    i32 -1, label %34
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @close(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @STDOUT_FILENO, align 4
  %20 = call i32 @dup2(i32 %18, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %11
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @execvp(i8* %29, i8** %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %36

34:                                               ; preds = %3
  %35 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %3, %34, %24
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @pdfork(i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
