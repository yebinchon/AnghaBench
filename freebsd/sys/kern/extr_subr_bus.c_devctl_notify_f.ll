; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devctl_notify_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devctl_notify_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c" system=\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" subsystem=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" type=\00", align 1
@M_BUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"!system=%s subsystem=%s type=%s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"!system=%s subsystem=%s type=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devctl_notify_f(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %90

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %90

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %90

24:                                               ; preds = %20
  %25 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %24
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %51, %24
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 3
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @M_BUS, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i8* @malloc(i32 %61, i32 %62, i32 %63)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %90

68:                                               ; preds = %58
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %72, i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %74, i8* %75, i8* %76, i8* %77)
  br label %86

79:                                               ; preds = %68
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %83, i8* %84)
  br label %86

86:                                               ; preds = %79, %71
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @devctl_queue_data_f(i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %67, %23, %19, %15
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @devctl_queue_data_f(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
