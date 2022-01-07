; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_main.c_setup_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_main.c_setup_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"/tmp/priv.XXXXXXXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"test %s: mkdtemp\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"test %s: chown(%s, %d, %d)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"test %s: chmod(%s, 0%o)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_dir(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %7, align 8
  %14 = call i32* @mkdtemp(i8* %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @chown(i8* %20, i32 %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i32, i8*, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @chmod(i8* %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32, i8*, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @mkdtemp(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i64 @chown(i8*, i32, i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
