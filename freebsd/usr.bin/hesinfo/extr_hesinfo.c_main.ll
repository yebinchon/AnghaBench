; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hesinfo/extr_hesinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hesinfo/extr_hesinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"lb\00", align 1
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"usage: hesinfo [-bl] name type\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\09-l selects long format\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\09-b also does hes_to_bind conversion\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOEXEC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"hesiod_init: Invalid Hesiod configuration file.\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"hesiod_init\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"hes_to_bind(%s, %s) expands to\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"nothing\0A\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"hesiod_to_bind: Unknown rhs-extension.\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"hesiod_to_bind\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"which \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"resolves to\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"hesiod_resolve: Hesiod name not found.\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"hesiod_resolve\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %14, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %14, align 4
  switch i32 %22, label %25 [
    i32 108, label %23
    i32 98, label %24
  ]

23:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  br label %28

24:                                               ; preds = %21
  store i32 1, i32* %13, align 4
  br label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %24, %23
  br label %16

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @optind, align 4
  %32 = sub nsw i32 %30, %31
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34, %29
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @exit(i32 2) #3
  unreachable

45:                                               ; preds = %34
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* @optind, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* @optind, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %10, align 8
  %57 = call i64 @hesiod_init(i8** %15)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %45
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @ENOEXEC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %67

65:                                               ; preds = %59
  %66 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %63
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i8* @hesiod_to_bind(i8* %79, i8* %80, i8* %81)
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %100, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @ENOENT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %98

96:                                               ; preds = %90
  %97 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %94
  %99 = call i32 @exit(i32 1) #3
  unreachable

100:                                              ; preds = %78
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %101)
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %100
  br label %110

110:                                              ; preds = %109, %68
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i8*, i8** %15, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = call i8** @hesiod_resolve(i8* %116, i8* %117, i8* %118)
  store i8** %119, i8*** %6, align 8
  %120 = load i8**, i8*** %6, align 8
  %121 = icmp ne i8** %120, null
  br i1 %121, label %137, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %122
  %128 = load i64, i64* @errno, align 8
  %129 = load i64, i64* @ENOENT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  br label %135

133:                                              ; preds = %127
  %134 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %131
  %136 = call i32 @exit(i32 1) #3
  unreachable

137:                                              ; preds = %115
  %138 = load i8**, i8*** %6, align 8
  store i8** %138, i8*** %7, align 8
  br label %139

139:                                              ; preds = %147, %137
  %140 = load i8**, i8*** %7, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i8**, i8*** %7, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143
  %148 = load i8**, i8*** %7, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i32 1
  store i8** %149, i8*** %7, align 8
  br label %139

150:                                              ; preds = %139
  %151 = load i8*, i8** %15, align 8
  %152 = load i8**, i8*** %6, align 8
  %153 = call i32 @hesiod_free_list(i8* %151, i8** %152)
  %154 = load i8*, i8** %15, align 8
  %155 = call i32 @hesiod_end(i8* %154)
  %156 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @hesiod_init(i8**) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @hesiod_to_bind(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8** @hesiod_resolve(i8*, i8*, i8*) #1

declare dso_local i32 @hesiod_free_list(i8*, i8**) #1

declare dso_local i32 @hesiod_end(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
