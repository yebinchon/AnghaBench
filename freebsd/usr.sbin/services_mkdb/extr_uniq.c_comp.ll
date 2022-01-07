; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/services_mkdb/extr_uniq.c_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/services_mkdb/extr_uniq.c_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Cannot allocate %zu bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*)* @comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %34, %3
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isspace(i8 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %21, %18
  %32 = phi i1 [ false, %21 ], [ false, %18 ], [ %30, %26 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %11, align 8
  br label %18

39:                                               ; preds = %31
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  %42 = call i8* @malloc(i64 %41)
  store i8* %42, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %45, 1
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @memcpy(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %149

61:                                               ; preds = %48
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %62 = load i8*, i8** %10, align 8
  store i8* %62, i8** %9, align 8
  br label %63

63:                                               ; preds = %120, %61
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi i1 [ false, %63 ], [ %70, %66 ]
  br i1 %72, label %73, label %125

73:                                               ; preds = %71
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isspace(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i64, i64* %12, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isspace(i8 zeroext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %120

88:                                               ; preds = %81, %78
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  store i8 32, i8* %89, align 1
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  br label %119

93:                                               ; preds = %73
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 35
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %125

105:                                              ; preds = %101
  store i32 1, i32* %14, align 4
  br label %112

106:                                              ; preds = %96, %93
  %107 = load i8*, i8** %8, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @isalnum(i8 zeroext %108)
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %106, %105
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  store i8 %114, i8* %115, align 1
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %12, align 8
  br label %119

119:                                              ; preds = %112, %88
  br label %120

120:                                              ; preds = %119, %87
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %11, align 8
  br label %63

125:                                              ; preds = %104, %71
  br label %126

126:                                              ; preds = %137, %125
  %127 = load i64, i64* %12, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 -1
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @isspace(i8 zeroext %132)
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %129, %126
  %136 = phi i1 [ false, %126 ], [ %134, %129 ]
  br i1 %136, label %137, label %142

137:                                              ; preds = %135
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 -1
  store i8* %139, i8** %9, align 8
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %140, -1
  store i64 %141, i64* %12, align 8
  br label %126

142:                                              ; preds = %135
  %143 = load i8*, i8** %9, align 8
  store i8 0, i8* %143, align 1
  %144 = load i8*, i8** %10, align 8
  %145 = load i8**, i8*** %6, align 8
  store i8* %144, i8** %145, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64*, i64** %7, align 8
  store i64 %146, i64* %147, align 8
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %142, %60
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
