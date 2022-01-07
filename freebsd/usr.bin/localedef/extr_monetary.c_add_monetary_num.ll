; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_monetary.c_add_monetary_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_monetary.c_add_monetary_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@last_kw = common dso_local global i32 0, align 4
@mon = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INTERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_monetary_num(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @asprintf(i8** %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %45

11:                                               ; preds = %1
  %12 = load i32, i32* @last_kw, align 4
  switch i32 %12, label %43 [
    i32 141, label %13
    i32 142, label %15
    i32 130, label %17
    i32 129, label %19
    i32 133, label %21
    i32 132, label %23
    i32 128, label %25
    i32 131, label %27
    i32 137, label %29
    i32 140, label %31
    i32 136, label %33
    i32 139, label %35
    i32 135, label %37
    i32 138, label %39
    i32 134, label %41
  ]

13:                                               ; preds = %11
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 0), align 8
  br label %45

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 1), align 8
  br label %45

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 2), align 8
  br label %45

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 3), align 8
  br label %45

21:                                               ; preds = %11
  %22 = load i8*, i8** %3, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 4), align 8
  br label %45

23:                                               ; preds = %11
  %24 = load i8*, i8** %3, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 5), align 8
  br label %45

25:                                               ; preds = %11
  %26 = load i8*, i8** %3, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 6), align 8
  br label %45

27:                                               ; preds = %11
  %28 = load i8*, i8** %3, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 7), align 8
  br label %45

29:                                               ; preds = %11
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 8), align 8
  br label %45

31:                                               ; preds = %11
  %32 = load i8*, i8** %3, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 9), align 8
  br label %45

33:                                               ; preds = %11
  %34 = load i8*, i8** %3, align 8
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 10), align 8
  br label %45

35:                                               ; preds = %11
  %36 = load i8*, i8** %3, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 11), align 8
  br label %45

37:                                               ; preds = %11
  %38 = load i8*, i8** %3, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 12), align 8
  br label %45

39:                                               ; preds = %11
  %40 = load i8*, i8** %3, align 8
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 13), align 8
  br label %45

41:                                               ; preds = %11
  %42 = load i8*, i8** %3, align 8
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 14), align 8
  br label %45

43:                                               ; preds = %11
  %44 = load i32, i32* @INTERR, align 4
  br label %45

45:                                               ; preds = %8, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
