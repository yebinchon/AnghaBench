; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_cvtstoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_cvtstoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cvtstoa.buf = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"%ju day%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%ju hour%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%ju minute%s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%ju second%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cvtstoa(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = srem i32 %3, 86400
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sdiv i32 %7, 86400
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @cvtstoa.buf, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %13)
  br label %50

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = srem i32 %16, 3600
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = sdiv i32 %20, 3600
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @cvtstoa.buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %22, i8* %26)
  br label %49

28:                                               ; preds = %15
  %29 = load i32, i32* %2, align 4
  %30 = srem i32 %29, 60
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = sdiv i32 %33, 60
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @cvtstoa.buf, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %35, i8* %39)
  br label %48

41:                                               ; preds = %28
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @cvtstoa.buf, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %42, i8* %46)
  br label %48

48:                                               ; preds = %41, %32
  br label %49

49:                                               ; preds = %48, %19
  br label %50

50:                                               ; preds = %49, %6
  ret i8* getelementptr inbounds ([20 x i8], [20 x i8]* @cvtstoa.buf, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
