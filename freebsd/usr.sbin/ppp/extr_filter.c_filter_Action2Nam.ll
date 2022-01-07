; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_filter_Action2Nam.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_filter_Action2Nam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filter_Action2Nam.actname = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"  none \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"permit \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  deny \00", align 1
@filter_Action2Nam.buf = internal global [8 x i8] zeroinitializer, align 1
@MAXFILTERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%6d \00", align 1
@A_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"?????? \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @filter_Action2Nam(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MAXFILTERS, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @snprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @filter_Action2Nam.buf, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %8)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @filter_Action2Nam.buf, i64 0, i64 0), i8** %2, align 8
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @A_NONE, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @A_NONE, align 4
  %18 = zext i32 %17 to i64
  %19 = add i64 %18, 3
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @A_NONE, align 4
  %24 = sub i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i8*], [3 x i8*]* @filter_Action2Nam.actname, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %2, align 8
  br label %29

28:                                               ; preds = %14, %10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %29

29:                                               ; preds = %28, %21, %7
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
