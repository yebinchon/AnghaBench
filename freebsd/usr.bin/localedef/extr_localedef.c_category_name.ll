; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_localedef.c_category_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_localedef.c_category_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"CHARMAP\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"WIDTH\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LC_COLLATE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"LC_MONETARY\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"LC_TIME\00", align 1
@INTERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @category_name() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @get_category()
  switch i32 %2, label %11 [
    i32 135, label %3
    i32 128, label %4
    i32 134, label %5
    i32 133, label %6
    i32 132, label %7
    i32 131, label %8
    i32 130, label %9
    i32 129, label %10
  ]

3:                                                ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %13

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %13

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %13

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %13

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %13

8:                                                ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %13

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %13

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @INTERR, align 4
  store i8* null, i8** %1, align 8
  br label %13

13:                                               ; preds = %11, %10, %9, %8, %7, %6, %5, %4, %3
  %14 = load i8*, i8** %1, align 8
  ret i8* %14
}

declare dso_local i32 @get_category(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
