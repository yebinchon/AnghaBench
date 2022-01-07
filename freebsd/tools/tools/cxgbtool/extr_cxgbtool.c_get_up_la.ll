; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_get_up_la.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_get_up_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_up_la = type { i32, i32, i32*, i64 }

@LA_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"uP_LA malloc\00", align 1
@CHELSIO_GET_UP_LA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"uP_LA\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"LA is not running\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%04x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @get_up_la to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_up_la(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ch_up_la, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i8**, i8*** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load i32, i32* @LA_BUFSIZE, align 4
  %20 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @malloc(i32 %22)
  %24 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 2
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @CHELSIO_GET_UP_LA, align 4
  %33 = call i64 @doit(i8* %31, i32 %32, %struct.ch_up_la* %9)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 4
  store i32 %46, i32* %13, align 4
  %47 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sdiv i32 %49, 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %83, %43
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ch_up_la, %struct.ch_up_la* %9, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %69, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %79, %81
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %56
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %52

86:                                               ; preds = %52
  ret i32 0
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_up_la*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
