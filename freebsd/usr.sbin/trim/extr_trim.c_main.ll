; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/trim/extr_trim.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/trim/extr_trim.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Nfl:o:qr:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid %s of the region: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"invalid zero length reference file for the region: %s\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %14, align 8
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %18

18:                                               ; preds = %75, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %76

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %72 [
    i32 78, label %25
    i32 102, label %26
    i32 108, label %27
    i32 111, label %27
    i32 113, label %59
    i32 114, label %60
    i32 118, label %71
  ]

25:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %75

26:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %75

27:                                               ; preds = %23, %23
  %28 = load i32, i32* @optarg, align 4
  %29 = call i32 @expand_number(i32 %28, i32* %8)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 108
  br i1 %40, label %41, label %49

41:                                               ; preds = %38, %31, %27
  %42 = load i32, i32* @EX_USAGE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 111
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %47 = load i32, i32* @optarg, align 4
  %48 = call i32 (i32, i8*, i8*, ...) @errx(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %38, %35
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 111
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %6, align 8
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %75

59:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %75

60:                                               ; preds = %23
  %61 = load i32, i32* @optarg, align 4
  %62 = call i64 @getsize(i32 %61)
  store i64 %62, i64* %7, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @EX_USAGE, align 4
  %66 = load i32, i32* @optarg, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 (i32, i8*, i8*, ...) @errx(i32 %65, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %64, %60
  br label %75

71:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %75

72:                                               ; preds = %23
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @usage(i8* %73)
  br label %75

75:                                               ; preds = %72, %71, %70, %59, %58, %26, %25
  br label %18

76:                                               ; preds = %18
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* @optind, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %76
  %86 = load i32, i32* @optind, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %105, %85
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 45
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @usage(i8* %102)
  br label %104

104:                                              ; preds = %101, %91
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %87

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108, %76
  %110 = load i32, i32* @optind, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  store i8** %113, i8*** %5, align 8
  %114 = load i32, i32* @optind, align 4
  %115 = load i32, i32* %4, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @usage(i8* %120)
  br label %122

122:                                              ; preds = %119, %109
  br label %123

123:                                              ; preds = %139, %122
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %5, align 8
  %126 = load i8*, i8** %124, align 8
  store i8* %126, i8** %13, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load i8*, i8** %13, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i64 @trim(i8* %129, i64 %130, i64 %131, i32 %132, i32 %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %136, %128
  br label %123

140:                                              ; preds = %123
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* @EXIT_FAILURE, align 4
  br label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  ret i32 %148
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @expand_number(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i64 @getsize(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @trim(i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
