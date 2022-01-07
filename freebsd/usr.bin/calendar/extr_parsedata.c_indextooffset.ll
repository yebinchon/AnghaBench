; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_indextooffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_indextooffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixs = type { i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid specifier format: %s\0A\00", align 1
@sequences = common dso_local global i32* null, align 8
@nsequences = common dso_local global %struct.fixs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @indextooffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indextooffset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fixs*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %30

18:                                               ; preds = %12, %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strtol(i8* %19, i8** %6, i32 10)
  store i32 %20, i32* %4, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %90

30:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 6
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = load i32*, i32** @sequences, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strcasecmp(i8* %35, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %90

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %90

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %31

54:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %86, %54
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 6
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = load %struct.fixs*, %struct.fixs** @nsequences, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.fixs, %struct.fixs* %59, i64 %61
  store %struct.fixs* %62, %struct.fixs** %5, align 8
  %63 = load %struct.fixs*, %struct.fixs** %5, align 8
  %64 = getelementptr inbounds %struct.fixs, %struct.fixs* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %86

68:                                               ; preds = %58
  %69 = load i8*, i8** %3, align 8
  %70 = load %struct.fixs*, %struct.fixs** %5, align 8
  %71 = getelementptr inbounds %struct.fixs, %struct.fixs* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.fixs*, %struct.fixs** %5, align 8
  %74 = getelementptr inbounds %struct.fixs, %struct.fixs* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @strncasecmp(i8* %69, i32 %72, i64 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 -1, i32* %2, align 4
  br label %90

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %90

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %55

89:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %82, %81, %47, %46, %28
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
