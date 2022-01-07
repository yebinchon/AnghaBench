; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom_gpt/extr_gctl_test_helper.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom_gpt/extr_gctl_test_helper.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i32*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i8* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %136

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 58)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 61)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i8*, i8** %12, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %136

31:                                               ; preds = %26, %19
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %136

41:                                               ; preds = %35
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %5, align 4
  br label %136

53:                                               ; preds = %47, %44, %41
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  store i8 0, i8* %57, align 1
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  store i8 0, i8* %63, align 1
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i8*, i8** %6, align 8
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %124

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %5, align 4
  br label %136

77:                                               ; preds = %70
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @strtol(i8* %78, i8** %10, i32 0)
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %5, align 4
  br label %136

87:                                               ; preds = %77
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PATH_MAX, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %87
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %5, align 4
  br label %136

98:                                               ; preds = %91
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @calloc(i32 %100, i32 1)
  %102 = load i8**, i8*** %8, align 8
  store i8* %101, i8** %102, align 8
  %103 = load i8**, i8*** %8, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %5, align 4
  br label %136

108:                                              ; preds = %98
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = load i32, i32* @PATH_MAX, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @ENOMEM, align 4
  store i32 %117, i32* %5, align 4
  br label %136

118:                                              ; preds = %111
  %119 = load i8**, i8*** %8, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @strcpy(i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %118, %108
  br label %135

124:                                              ; preds = %65
  %125 = load i32*, i32** %9, align 8
  store i32 -1, i32* %125, align 4
  %126 = load i8*, i8** %12, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @EINVAL, align 4
  store i32 %131, i32* %5, align 4
  br label %136

132:                                              ; preds = %124
  %133 = load i8*, i8** %12, align 8
  %134 = load i8**, i8*** %8, align 8
  store i8* %133, i8** %134, align 8
  br label %135

135:                                              ; preds = %132, %123
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %130, %116, %106, %96, %85, %75, %51, %39, %29, %17
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
