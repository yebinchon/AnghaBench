; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_time.c_add_time_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_time.c_add_time_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32, i32 }

@INTERR = common dso_local global i32 0, align 4
@last_kw = common dso_local global i32 0, align 4
@tm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"too many list elements\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_time_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @to_mb_string(i8* %4)
  store i8* %5, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @INTERR, align 4
  br label %53

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @free(i8* %10)
  %12 = load i32, i32* @last_kw, align 4
  switch i32 %12, label %49 [
    i32 133, label %13
    i32 128, label %17
    i32 134, label %21
    i32 130, label %25
    i32 131, label %29
    i32 132, label %46
    i32 129, label %46
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 5), align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @add_list(i32 %14, i8* %15, i32 12)
  br label %53

17:                                               ; preds = %9
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 4), align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @add_list(i32 %18, i8* %19, i32 12)
  br label %53

21:                                               ; preds = %9
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 3), align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @add_list(i32 %22, i8* %23, i32 7)
  br label %53

25:                                               ; preds = %9
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 2), align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @add_list(i32 %26, i8* %27, i32 7)
  br label %53

29:                                               ; preds = %9
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 0), align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 0), align 8
  br label %45

34:                                               ; preds = %29
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 1), align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 1), align 8
  br label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @free(i8* %42)
  br label %44

44:                                               ; preds = %39, %37
  br label %45

45:                                               ; preds = %44, %32
  br label %53

46:                                               ; preds = %9, %9
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @free(i8* %47)
  br label %53

49:                                               ; preds = %9
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* @INTERR, align 4
  br label %53

53:                                               ; preds = %7, %49, %46, %45, %25, %21, %17, %13
  ret void
}

declare dso_local i8* @to_mb_string(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @add_list(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
