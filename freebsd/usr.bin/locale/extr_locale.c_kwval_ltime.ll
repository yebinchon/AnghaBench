; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_kwval_ltime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_kwval_ltime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@DAY_1 = common dso_local global i64 0, align 8
@DAY_7 = common dso_local global i64 0, align 8
@ABDAY_1 = common dso_local global i64 0, align 8
@ABDAY_7 = common dso_local global i64 0, align 8
@MON_1 = common dso_local global i64 0, align 8
@MON_12 = common dso_local global i64 0, align 8
@ABMON_1 = common dso_local global i64 0, align 8
@ABMON_12 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s;%s\00", align 1
@AM_STR = common dso_local global i64 0, align 8
@PM_STR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sbuf\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @kwval_ltime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kwval_ltime(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %33 [
    i32 129, label %10
    i32 132, label %13
    i32 128, label %16
    i32 131, label %19
    i32 130, label %22
  ]

10:                                               ; preds = %1
  %11 = load i64, i64* @DAY_1, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* @DAY_7, align 8
  store i64 %12, i64* %8, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load i64, i64* @ABDAY_1, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @ABDAY_7, align 8
  store i64 %15, i64* %8, align 8
  br label %33

16:                                               ; preds = %1
  %17 = load i64, i64* @MON_1, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* @MON_12, align 8
  store i64 %18, i64* %8, align 8
  br label %33

19:                                               ; preds = %1
  %20 = load i64, i64* @ABMON_1, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @ABMON_12, align 8
  store i64 %21, i64* %8, align 8
  br label %33

22:                                               ; preds = %1
  %23 = load i64, i64* @AM_STR, align 8
  %24 = call i8* @nl_langinfo(i64 %23)
  %25 = load i64, i64* @PM_STR, align 8
  %26 = call i8* @nl_langinfo(i64 %25)
  %27 = call i32 @asprintf(i8** %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %2, align 8
  br label %74

33:                                               ; preds = %1, %19, %16, %13, %10
  %34 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %34, %struct.sbuf** %5, align 8
  %35 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %36 = icmp eq %struct.sbuf* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %57, %39
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i8* @nl_langinfo(i64 %47)
  %49 = call i32 @sbuf_cat(%struct.sbuf* %46, i8* %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %55 = call i32 @sbuf_cat(%struct.sbuf* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %62 = call i32 @sbuf_finish(%struct.sbuf* %61)
  %63 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %64 = call i32 @sbuf_data(%struct.sbuf* %63)
  %65 = call i8* @strdup(i32 %64)
  store i8* %65, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %60
  %71 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %72 = call i32 @sbuf_delete(%struct.sbuf* %71)
  %73 = load i8*, i8** %4, align 8
  store i8* %73, i8** %2, align 8
  br label %74

74:                                               ; preds = %70, %31
  %75 = load i8*, i8** %2, align 8
  ret i8* %75
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i8* @nl_langinfo(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
