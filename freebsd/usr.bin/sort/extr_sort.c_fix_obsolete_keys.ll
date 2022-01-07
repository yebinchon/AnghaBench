; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_fix_obsolete_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_fix_obsolete_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"-k%d.%d%s,%d.%d%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"-k%d.%d%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_obsolete_keys(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca [129 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %144, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %147

21:                                               ; preds = %16
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp ugt i64 %28, 1
  br i1 %29, label %30, label %143

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %36, label %143

36:                                               ; preds = %30
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %37, align 16
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %41 = call i32 (i8*, i32*, i32*, i8*, ...) bitcast (i32 (...)* @parse_pos_obs to i32 (i8*, i32*, i32*, i8*, ...)*)(i8* %39, i32* %9, i32* %8, i8* %40)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %144

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %128

54:                                               ; preds = %44
  %55 = load i8**, i8*** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = icmp ugt i64 %62, 1
  br i1 %63, label %64, label %127

64:                                               ; preds = %54
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %127

70:                                               ; preds = %64
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %71, align 16
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %75 = call i32 (i8*, i32*, i32*, i8*, ...) bitcast (i32 (...)* @parse_pos_obs to i32 (i8*, i32*, i32*, i8*, ...)*)(i8* %73, i32* %13, i32* %12, i8* %74)
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %126

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = getelementptr inbounds [129 x i8], [129 x i8]* %5, i64 0, i64 0
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i8* %87, i32 %88, i32 %89, i8* %90)
  %92 = getelementptr inbounds [129 x i8], [129 x i8]* %5, i64 0, i64 0
  %93 = call i32 (i8*, ...) bitcast (i32 (...)* @sort_strdup to i32 (i8*, ...)*)(i8* %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load i8**, i8*** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %95, i8** %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %119, %83
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load i8**, i8*** %4, align 8
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i8**, i8*** %4, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %114, i8** %118, align 8
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %102

122:                                              ; preds = %102
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %144

126:                                              ; preds = %70
  br label %127

127:                                              ; preds = %126, %64, %54
  br label %128

128:                                              ; preds = %127, %44
  %129 = getelementptr inbounds [129 x i8], [129 x i8]* %5, i64 0, i64 0
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131, i8* %132)
  %134 = getelementptr inbounds [129 x i8], [129 x i8]* %5, i64 0, i64 0
  %135 = call i32 (i8*, ...) bitcast (i32 (...)* @sort_strdup to i32 (i8*, ...)*)(i8* %134)
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = load i8**, i8*** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %137, i8** %141, align 8
  br label %142

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %30, %21
  br label %144

144:                                              ; preds = %143, %122, %43
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %16

147:                                              ; preds = %16
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @parse_pos_obs(...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sort_strdup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
