; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_showunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_showunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unittype = type { double, i8**, i8**, i32 }

@numfmt = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"&%.8g\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@powerstring = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" /\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unittype*)* @showunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showunit(%struct.unittype* %0) #0 {
  %2 = alloca %struct.unittype*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.unittype* %0, %struct.unittype** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load i8*, i8** @numfmt, align 8
  %7 = load %struct.unittype*, %struct.unittype** %2, align 8
  %8 = getelementptr inbounds %struct.unittype, %struct.unittype* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* %6, i32 %9)
  %11 = load %struct.unittype*, %struct.unittype** %2, align 8
  %12 = getelementptr inbounds %struct.unittype, %struct.unittype* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fcmp une double %13, 0.000000e+00
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.unittype*, %struct.unittype** %2, align 8
  %17 = getelementptr inbounds %struct.unittype, %struct.unittype* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.unittype*, %struct.unittype** %2, align 8
  %22 = getelementptr inbounds %struct.unittype, %struct.unittype* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  store i8** %23, i8*** %3, align 8
  br label %24

24:                                               ; preds = %69, %20
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load i8**, i8*** %3, align 8
  %30 = load %struct.unittype*, %struct.unittype** %2, align 8
  %31 = getelementptr inbounds %struct.unittype, %struct.unittype* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = icmp ugt i8** %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i8**, i8*** %3, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %3, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 -1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %42, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %68

51:                                               ; preds = %40, %34, %28
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** @powerstring, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8**, i8*** %3, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8**, i8*** %3, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %58
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68
  %70 = load i8**, i8*** %3, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %3, align 8
  br label %24

72:                                               ; preds = %24
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** @powerstring, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %72
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %80 = load %struct.unittype*, %struct.unittype** %2, align 8
  %81 = getelementptr inbounds %struct.unittype, %struct.unittype* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  store i8** %82, i8*** %3, align 8
  br label %83

83:                                               ; preds = %133, %79
  %84 = load i8**, i8*** %3, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %136

87:                                               ; preds = %83
  %88 = load i8**, i8*** %3, align 8
  %89 = load %struct.unittype*, %struct.unittype** %2, align 8
  %90 = getelementptr inbounds %struct.unittype, %struct.unittype* %89, i32 0, i32 2
  %91 = load i8**, i8*** %90, align 8
  %92 = icmp ugt i8** %88, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load i8**, i8*** %3, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load i8**, i8*** %3, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %3, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 -1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcmp(i8* %101, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %132

110:                                              ; preds = %99, %93, %87
  %111 = load i32, i32* %5, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i8*, i8** @powerstring, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i8**, i8*** %3, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122
  store i32 1, i32* %4, align 4
  %128 = load i8**, i8*** %3, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %127, %117
  store i32 1, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %107
  br label %133

133:                                              ; preds = %132
  %134 = load i8**, i8*** %3, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %3, align 8
  br label %83

136:                                              ; preds = %83
  %137 = load i32, i32* %5, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i8*, i8** @powerstring, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %136
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
