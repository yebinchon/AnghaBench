; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sesutil/extr_eltsub.c_scode2ascii.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sesutil/extr_eltsub.c_scode2ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scode2ascii.rbuf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"Unsupported\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Critical\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Noncritical\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Unrecoverable\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Not Installed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Not Available\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"No Access Allowed\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"<Status 0x%x>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scode2ascii(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 15
  switch i32 %5, label %15 [
    i32 128, label %6
    i32 131, label %7
    i32 136, label %8
    i32 134, label %9
    i32 129, label %10
    i32 132, label %11
    i32 130, label %12
    i32 133, label %13
    i32 135, label %14
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %19

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %19

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %19

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %19

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %19

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %19

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %19

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %19

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 15
  %18 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %17)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @scode2ascii.rbuf, i64 0, i64 0), i8** %2, align 8
  br label %19

19:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
