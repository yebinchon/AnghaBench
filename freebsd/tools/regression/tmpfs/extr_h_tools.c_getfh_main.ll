; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/tmpfs/extr_h_tools.c_getfh_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/tmpfs/extr_h_tools.c_getfh_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"can not getfh\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfh_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %11, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @getfh(i8* %15, i32* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @err(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* @STDOUT_FILENO, align 4
  %24 = call i32 @write(i32 %23, i32* %7, i32 4)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @getfh(i8*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
