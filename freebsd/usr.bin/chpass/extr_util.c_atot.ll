; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chpass/extr_util.c_atot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chpass/extr_util.c_atot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64, i64, i64 }

@atot.lt = internal global %struct.tm* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@months = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" \09,\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atot(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i64*, i64** %5, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %3, align 4
  br label %149

17:                                               ; preds = %2
  %18 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %19 = icmp ne %struct.tm* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @time(i64* %8)
  %23 = call %struct.tm* @localtime(i64* %8)
  store %struct.tm* %23, %struct.tm** @atot.lt, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %116

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isdigit(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* %10, align 4
  br label %64

37:                                               ; preds = %29
  %38 = load i8**, i8*** @months, align 8
  store i8** %38, i8*** %7, align 8
  br label %39

39:                                               ; preds = %60, %37
  %40 = load i8**, i8*** %7, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %116

44:                                               ; preds = %39
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strncasecmp(i8* %46, i8* %47, i32 3)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8**, i8*** @months, align 8
  %53 = ptrtoint i8** %51 to i64
  %54 = ptrtoint i8** %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 8
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  br label %63

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59
  %61 = load i8**, i8*** %7, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %7, align 8
  br label %39

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %34
  %65 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %65, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isdigit(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %64
  br label %116

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @atoi(i8* %74)
  store i32 %75, i32* %9, align 4
  %76 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %76, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isdigit(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %73
  br label %116

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @atoi(i8* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %98, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %90, 31
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp sgt i32 %96, 12
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %92, %89, %84
  br label %116

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 69
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 2000
  store i32 %104, i32* %11, align 4
  br label %112

105:                                              ; preds = %99
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 100
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1900
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 1969
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %115, %98, %83, %72, %43, %28
  store i32 1, i32* %3, align 4
  br label %149

117:                                              ; preds = %112
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %118, 1900
  %120 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %125 = getelementptr inbounds %struct.tm, %struct.tm* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %129, i32 0, i32 6
  store i64 0, i64* %130, align 8
  %131 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %131, i32 0, i32 5
  store i64 0, i64* %132, align 8
  %133 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  %135 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %135, i32 0, i32 3
  store i32 -1, i32* %136, align 4
  %137 = load %struct.tm*, %struct.tm** @atot.lt, align 8
  %138 = call i64 @mktime(%struct.tm* %137)
  store i64 %138, i64* %8, align 8
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %117
  store i32 1, i32* %3, align 4
  br label %149

141:                                              ; preds = %117
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @UINT32_MAX, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 1, i32* %3, align 4
  br label %149

146:                                              ; preds = %141
  %147 = load i64, i64* %8, align 8
  %148 = load i64*, i64** %5, align 8
  store i64 %147, i64* %148, align 8
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %146, %145, %140, %116, %15
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @time(i64*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
