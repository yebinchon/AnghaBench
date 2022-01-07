; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_tset.c_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_tset.c_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i64* }

@mode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@oldmode = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"set to\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"backspace.\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"delete.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"control-%c (^%c).\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%c.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 0), align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @oldmode, i32 0, i32 0), align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %63

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %63

41:                                               ; preds = %27
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 127
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %62

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %48, 32
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = xor i64 %51, 64
  store i64 %52, i64* %8, align 8
  %53 = load i32, i32* @stderr, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %54, i64 %55)
  br label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @stderr, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %26, %62, %38
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
