; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_closefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_closefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@compress_program = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @closefile(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %40

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** @stdin, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %39

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** @stdout, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fflush(i32* %18)
  br label %38

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @file_is_tmp(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32*, i32** @compress_program, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @pclose(i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @err(i32 2, i32* null)
  br label %33

33:                                               ; preds = %31, %27
  br label %37

34:                                               ; preds = %24, %20
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %37

37:                                               ; preds = %34, %33
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38, %12
  br label %40

40:                                               ; preds = %39, %7
  ret void
}

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @file_is_tmp(i8*) #1

declare dso_local i64 @pclose(i32*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
