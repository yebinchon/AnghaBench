; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_tod.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_tod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32 }

@sc_token = common dso_local global i32 0, align 4
@DOT = common dso_local global i64 0, align 8
@NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"garbled time\00", align 1
@sc_tokid = common dso_local global i64 0, align 8
@AM = common dso_local global i64 0, align 8
@PM = common dso_local global i64 0, align 8
@EOF = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*)* @tod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tod(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @sc_token, align 4
  %7 = call i32 @atoi(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @sc_token, align 4
  %9 = call i32 @strlen(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = call i64 (...) @token()
  %11 = load i64, i64* @DOT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @NUMBER, align 4
  %15 = call i32 @expect(i32 %14)
  %16 = load i32, i32* @sc_token, align 4
  %17 = call i32 @atoi(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 59
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %13
  %23 = call i64 (...) @token()
  br label %38

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = srem i32 %28, 100
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 59
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* %3, align 4
  %36 = sdiv i32 %35, 100
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %24
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i64, i64* @sc_tokid, align 8
  %40 = load i64, i64* @AM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @sc_tokid, align 8
  %44 = load i64, i64* @PM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %3, align 4
  %48 = icmp sgt i32 %47, 12
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i64, i64* @sc_tokid, align 8
  %53 = load i64, i64* @PM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 12
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 12
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %67

62:                                               ; preds = %51
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %61
  %68 = call i64 (...) @token()
  br label %75

69:                                               ; preds = %42
  %70 = load i32, i32* %3, align 4
  %71 = icmp sgt i32 %70, 23
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i64, i64* @sc_tokid, align 8
  %77 = load i64, i64* @EOF, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* @sc_tokid, align 8
  %81 = load i64, i64* @PLUS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* @sc_tokid, align 8
  %85 = load i64, i64* @MINUS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83, %79, %75
  %88 = load %struct.tm*, %struct.tm** %2, align 8
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.tm*, %struct.tm** %2, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.tm*, %struct.tm** %2, align 8
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %93, %87, %83
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.tm*, %struct.tm** %2, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.tm*, %struct.tm** %2, align 8
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.tm*, %struct.tm** %2, align 8
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 24
  br i1 %112, label %113, label %120

113:                                              ; preds = %102
  %114 = load %struct.tm*, %struct.tm** %2, align 8
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  %116 = load %struct.tm*, %struct.tm** %2, align 8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %113, %102
  ret void
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @token(...) #1

declare dso_local i32 @expect(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
