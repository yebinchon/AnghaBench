; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_conf_pm.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_conf_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_pm = type { i32, i32, i32, i32, i32 }

@CHELSIO_GET_PM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"read pm config\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%ux%uKB TX pages, %ux%uKB RX pages, %uKB total memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"bad parameter \22%s\22\00", align 1
@CHELSIO_SET_PM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"pm config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @conf_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_pm(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ch_pm, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* @CHELSIO_GET_PM, align 4
  %17 = call i64 @doit(i8* %15, i32 %16, %struct.ch_pm* %10)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 10
  %27 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 10
  %32 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 10
  %35 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %28, i32 %31, i32 %34)
  store i32 0, i32* %5, align 4
  br label %86

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 2
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %86

42:                                               ; preds = %36
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 1
  %49 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 0
  %50 = call i64 @get_pm_page_spec(i8* %47, i32* %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load i8**, i8*** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 -1, i32* %5, align 4
  br label %86

59:                                               ; preds = %42
  %60 = load i8**, i8*** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 3
  %67 = getelementptr inbounds %struct.ch_pm, %struct.ch_pm* %10, i32 0, i32 2
  %68 = call i64 @get_pm_page_spec(i8* %65, i32* %66, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %59
  %71 = load i8**, i8*** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  store i32 -1, i32* %5, align 4
  br label %86

78:                                               ; preds = %59
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* @CHELSIO_SET_PM, align 4
  %81 = call i64 @doit(i8* %79, i32 %80, %struct.ch_pm* %10)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %78
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %70, %52, %41, %21
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @doit(i8*, i32, %struct.ch_pm*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @get_pm_page_spec(i8*, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
