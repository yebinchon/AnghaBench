; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mktemp/extr_mktemp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mktemp/extr_mktemp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dqt:u\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s%s.XXXXXXXX\00", align 1
@_PATH_TMP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"%s/%s.XXXXXXXX\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"cannot generate template\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"mkdtemp failed on %s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"mkstemp failed on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %16

16:                                               ; preds = %38, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %36 [
    i32 100, label %23
    i32 113, label %26
    i32 116, label %29
    i32 117, label %33
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  br label %38

26:                                               ; preds = %21
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  br label %38

29:                                               ; preds = %21
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  br label %38

33:                                               ; preds = %21
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %15, align 4
  br label %38

36:                                               ; preds = %21
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %33, %29, %26, %23
  br label %16

39:                                               ; preds = %16
  %40 = load i64, i64* @optind, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i64, i64* @optind, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45
  store i8** %47, i8*** %5, align 8
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %54

54:                                               ; preds = %53, %50, %39
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  %58 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8*, i8** @_PATH_TMP, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @asprintf(i8** %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %62, i8* %63)
  br label %69

65:                                               ; preds = %57
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @asprintf(i8** %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8*, i8** %11, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %158

76:                                               ; preds = %72
  %77 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %69
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %155, %80
  %82 = load i8*, i8** %11, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp sgt i32 %85, 0
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ true, %81 ], [ %86, %84 ]
  br i1 %88, label %89, label %156

89:                                               ; preds = %87
  %90 = load i8*, i8** %11, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @strdup(i8* %95)
  store i8* %96, i8** %11, align 8
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %5, align 8
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %92, %89
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load i8*, i8** %11, align 8
  %106 = call i32* @mkdtemp(i8* %105)
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  store i32 1, i32* %8, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %124

115:                                              ; preds = %104
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @rmdir(i8* %121)
  br label %123

123:                                              ; preds = %120, %115
  br label %124

124:                                              ; preds = %123, %114
  br label %149

125:                                              ; preds = %101
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @mkstemp(i8* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  store i32 1, i32* %8, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %133, %130
  br label %148

137:                                              ; preds = %125
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @close(i32 %138)
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @unlink(i8* %143)
  br label %145

145:                                              ; preds = %142, %137
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %145, %136
  br label %149

149:                                              ; preds = %148, %124
  %150 = load i8*, i8** %11, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %152, %149
  store i8* null, i8** %11, align 8
  br label %81

156:                                              ; preds = %87
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %75
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @mkdtemp(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
