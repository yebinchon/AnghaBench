; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_fuzzy_matchlines.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_fuzzy_matchlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64)* @fuzzy_matchlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzy_matchlines(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %38, %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 -1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %18
  %37 = phi i1 [ false, %18 ], [ %35, %34 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %10, align 8
  br label %18

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 -1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ true, %46 ], [ %57, %52 ]
  br label %60

60:                                               ; preds = %58, %42
  %61 = phi i1 [ false, %42 ], [ %59, %58 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %11, align 8
  br label %42

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %130, %65
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ult i8* %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ult i8* %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ false, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %131

76:                                               ; preds = %74
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isspace(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %76
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @isspace(i8 signext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %142

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %99, %87
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @isspace(i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i1 [ false, %88 ], [ %96, %92 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  br label %88

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %114, %102
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ult i8* %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i64 @isspace(i8 signext %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %107, %103
  %113 = phi i1 [ false, %103 ], [ %111, %107 ]
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  br label %103

117:                                              ; preds = %112
  br label %130

118:                                              ; preds = %76
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %6, align 8
  %121 = load i8, i8* %119, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %8, align 8
  %125 = load i8, i8* %123, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %122, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %142

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129, %117
  br label %66

131:                                              ; preds = %74
  %132 = load i8*, i8** %6, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = icmp eq i8* %136, %137
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i1 [ false, %131 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %139, %128, %86
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
