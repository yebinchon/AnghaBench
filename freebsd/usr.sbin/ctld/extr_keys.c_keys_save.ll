; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_keys.c_keys_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_keys.c_keys_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keys = type { i8**, i8** }
%struct.pdu = type { i8*, i64 }

@KEYS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keys_save(%struct.keys* %0, %struct.pdu* %1) #0 {
  %3 = alloca %struct.keys*, align 8
  %4 = alloca %struct.pdu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.keys* %0, %struct.keys** %3, align 8
  store %struct.pdu* %1, %struct.pdu** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @KEYS_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load %struct.keys*, %struct.keys** %3, align 8
  %14 = getelementptr inbounds %struct.keys, %struct.keys* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %46

22:                                               ; preds = %12
  %23 = load %struct.keys*, %struct.keys** %3, align 8
  %24 = getelementptr inbounds %struct.keys, %struct.keys* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = load %struct.keys*, %struct.keys** %3, align 8
  %32 = getelementptr inbounds %struct.keys, %struct.keys* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %30, %38
  %40 = add nsw i64 %39, 2
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %8

46:                                               ; preds = %21, %8
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %103

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = call i8* @malloc(i64 %51)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.pdu*, %struct.pdu** %4, align 8
  %60 = getelementptr inbounds %struct.pdu, %struct.pdu* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.pdu*, %struct.pdu** %4, align 8
  %63 = getelementptr inbounds %struct.pdu, %struct.pdu* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %100, %57
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @KEYS_MAX, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %103

68:                                               ; preds = %64
  %69 = load %struct.keys*, %struct.keys** %3, align 8
  %70 = getelementptr inbounds %struct.keys, %struct.keys* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %103

78:                                               ; preds = %68
  %79 = load i8*, i8** %5, align 8
  %80 = load %struct.keys*, %struct.keys** %3, align 8
  %81 = getelementptr inbounds %struct.keys, %struct.keys* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.keys*, %struct.keys** %3, align 8
  %88 = getelementptr inbounds %struct.keys, %struct.keys* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %86, i8* %93)
  %95 = load i8*, i8** %5, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %5, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %5, align 8
  br label %100

100:                                              ; preds = %78
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %64

103:                                              ; preds = %49, %77, %64
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
