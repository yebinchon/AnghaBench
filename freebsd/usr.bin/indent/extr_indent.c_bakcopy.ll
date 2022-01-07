; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_indent.c_bakcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_indent.c_bakcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_name = common dso_local global i8* null, align 8
@bakfile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@simple_backup_suffix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@input = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@output = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bakcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bakcopy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [8192 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = load i8*, i8** @in_name, align 8
  store i8* %5, i8** %4, align 8
  br label %6

6:                                                ; preds = %11, %0
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  br label %6

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** @in_name, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 47
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %4, align 8
  br label %15

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i8*, i8** @bakfile, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @simple_backup_suffix, align 4
  %41 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load i8*, i8** @bakfile, align 8
  %43 = call i32 @creat(i8* %42, i32 384)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i8*, i8** @bakfile, align 8
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32*, i32** @input, align 8
  %52 = call i32 @fileno(i32* %51)
  %53 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %54 = call i32 @read(i32 %52, i8* %53, i32 8192)
  store i32 %54, i32* %1, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load i32, i32* %2, align 4
  %58 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @write(i32 %57, i8* %58, i32 %59)
  %61 = load i32, i32* %1, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i8*, i8** @bakfile, align 8
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %50

67:                                               ; preds = %50
  %68 = load i32, i32* %1, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** @in_name, align 8
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @close(i32 %74)
  %76 = load i32*, i32** @input, align 8
  %77 = call i32 @fclose(i32* %76)
  %78 = load i8*, i8** @bakfile, align 8
  %79 = call i8* @fopen(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %80 = bitcast i8* %79 to i32*
  store i32* %80, i32** @input, align 8
  %81 = load i32*, i32** @input, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i8*, i8** @bakfile, align 8
  %85 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %73
  %87 = load i8*, i8** @in_name, align 8
  %88 = call i8* @fopen(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** @output, align 8
  %90 = load i32*, i32** @output, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i8*, i8** @bakfile, align 8
  %94 = call i32 @unlink(i8* %93)
  %95 = load i8*, i8** @in_name, align 8
  %96 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %92, %86
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @creat(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
