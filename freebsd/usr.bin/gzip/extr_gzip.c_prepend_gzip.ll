; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_prepend_gzip.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_prepend_gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8***)* @prepend_gzip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepend_gzip(i8* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8*** %2, i8**** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %58, %3
  br label %14

14:                                               ; preds = %26, %13
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 9
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  br label %14

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %59

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %57, %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 32
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 9
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %59

57:                                               ; preds = %50
  br label %38

58:                                               ; preds = %48
  br label %13

59:                                               ; preds = %56, %34
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %171

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i8***, i8**** %6, align 8
  %69 = load i8**, i8*** %68, align 8
  store i8** %69, i8*** %9, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = call i64 @malloc(i32 %75)
  %77 = inttoptr i64 %76 to i8**
  store i8** %77, i8*** %8, align 8
  %78 = load i8**, i8*** %8, align 8
  %79 = icmp eq i8** %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = call i32 @maybe_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %63
  %83 = load i8**, i8*** %8, align 8
  %84 = load i8***, i8**** %6, align 8
  store i8** %83, i8*** %84, align 8
  store i32 0, i32* %11, align 4
  %85 = load i8**, i8*** %9, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %9, align 8
  %87 = load i8*, i8** %85, align 8
  %88 = load i8**, i8*** %8, align 8
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  store i8* %87, i8** %92, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i8* @strdup(i8* %93)
  store i8* %94, i8** %7, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = call i32 @maybe_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %82
  br label %100

100:                                              ; preds = %149, %99
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load i8*, i8** %7, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 9
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i1 [ true, %101 ], [ %110, %106 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %7, align 8
  br label %101

116:                                              ; preds = %111
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %152

122:                                              ; preds = %116
  %123 = load i8*, i8** %7, align 8
  %124 = load i8**, i8*** %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8*, i8** %124, i64 %127
  store i8* %123, i8** %128, align 8
  br label %129

129:                                              ; preds = %148, %122
  %130 = load i8*, i8** %7, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 32
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i8*, i8** %7, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 9
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  br i1 %140, label %141, label %149

141:                                              ; preds = %139
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %7, align 8
  %144 = load i8, i8* %142, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %152

148:                                              ; preds = %141
  br label %129

149:                                              ; preds = %139
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %7, align 8
  store i8 0, i8* %150, align 1
  br label %100

152:                                              ; preds = %147, %121
  br label %153

153:                                              ; preds = %157, %152
  %154 = load i8**, i8*** %9, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load i8**, i8*** %9, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 1
  store i8** %159, i8*** %9, align 8
  %160 = load i8*, i8** %158, align 8
  %161 = load i8**, i8*** %8, align 8
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  store i8* %160, i8** %165, align 8
  br label %153

166:                                              ; preds = %153
  %167 = load i8**, i8*** %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* null, i8** %170, align 8
  br label %171

171:                                              ; preds = %166, %62
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @maybe_err(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
