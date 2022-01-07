; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_getnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_main.c_getnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"token is <%s> %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"empty string\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid %s for %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"suffix %s for %s, next %p\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"suffix now %s for %s, next %p\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"setting next to %s for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8**, i8*)* @getnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getnum(i8* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8**, i8*** %6, align 8
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = call i32 (i32, i8*, ...) @DX(i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strtol(i8* %32, i8** %8, i32 0)
  store i64 %33, i64* %9, align 8
  br label %36

34:                                               ; preds = %17, %14
  %35 = call i32 (i32, i8*, ...) @DX(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i64 -1, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  br label %45

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i8* [ %43, %42 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %44 ]
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %51 ]
  %54 = call i32 (i32, i8*, ...) @DX(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* %53)
  store i64 0, i64* %4, align 8
  br label %145

55:                                               ; preds = %36
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %55
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %4, align 8
  br label %145

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 110
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %9, align 8
  %71 = sub nsw i64 0, %70
  store i64 %71, i64* %9, align 8
  br label %123

72:                                               ; preds = %64
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, i64* %9, align 8
  %79 = mul nsw i64 %78, 1000
  store i64 %79, i64* %9, align 8
  br label %122

80:                                               ; preds = %72
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 77
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, i64* %9, align 8
  %87 = mul nsw i64 %86, 1000000
  store i64 %87, i64* %9, align 8
  br label %121

88:                                               ; preds = %80
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 107
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i64, i64* %9, align 8
  %95 = mul nsw i64 %94, 1024
  store i64 %95, i64* %9, align 8
  br label %120

96:                                               ; preds = %88
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 109
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i64, i64* %9, align 8
  %103 = mul nsw i64 %102, 1024
  %104 = mul nsw i64 %103, 1024
  store i64 %104, i64* %9, align 8
  br label %119

105:                                              ; preds = %96
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 119
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %118

111:                                              ; preds = %105
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i8**, i8*** %6, align 8
  %115 = call i32 @D(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %112, i8* %113, i8** %114)
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %117, i8** %8, align 8
  br label %118

118:                                              ; preds = %111, %110
  br label %119

119:                                              ; preds = %118, %101
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %85
  br label %122

122:                                              ; preds = %121, %77
  br label %123

123:                                              ; preds = %122, %69
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i8**, i8*** %6, align 8
  %129 = call i32 (i32, i8*, ...) @DX(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %126, i8* %127, i8** %128)
  %130 = load i8**, i8*** %6, align 8
  %131 = icmp ne i8** %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %123
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i8*, i8** %8, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 (i32, i8*, ...) @DX(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %138, i8* %139)
  %141 = load i8*, i8** %8, align 8
  %142 = load i8**, i8*** %6, align 8
  store i8* %141, i8** %142, align 8
  br label %143

143:                                              ; preds = %137, %132, %123
  %144 = load i64, i64* %9, align 8
  store i64 %144, i64* %4, align 8
  br label %145

145:                                              ; preds = %143, %62, %52
  %146 = load i64, i64* %4, align 8
  ret i64 %146
}

declare dso_local i32 @DX(i32, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @D(i8*, i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
