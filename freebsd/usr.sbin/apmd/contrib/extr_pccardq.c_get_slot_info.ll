; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/contrib/extr_pccardq.c_get_slot_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/contrib/extr_pccardq.c_get_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_slot_info.buf = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"N%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%1d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid response: %*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_slot_info(i32 %0, i32 %1, i8** %2, i8** %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 -1, i32* %14, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @snprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_slot_info.buf, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = call i32 (i32, i8*, ...) @warnc(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %119

27:                                               ; preds = %6
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @write(i32 %28, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_slot_info.buf, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %119

34:                                               ; preds = %27
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i32, i8*, ...) @warnc(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %119

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @read(i32 %42, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_slot_info.buf, i64 0, i64 0), i32 1024)
  store i32 %43, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %119

47:                                               ; preds = %41
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_slot_info.buf, i64 0, i64 0), i8** %17, align 8
  %48 = call i8* @strsep(i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %48, i8** %18, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %121

51:                                               ; preds = %47
  %52 = load i8*, i8** %18, align 8
  %53 = call i32 @atoi(i8* %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %121

57:                                               ; preds = %51
  %58 = call i8* @strsep(i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %58, i8** %19, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %121

61:                                               ; preds = %57
  %62 = call i8* @strsep(i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %62, i8** %20, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %121

65:                                               ; preds = %61
  %66 = call i8* @strsep(i8** %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %66, i8** %21, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %121

69:                                               ; preds = %65
  %70 = load i8*, i8** %17, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @sscanf(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %71)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %121

75:                                               ; preds = %69
  %76 = load i8*, i8** %17, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i8*, i8** %17, align 8
  %80 = call i32* @strchr(i8* %79, i8 signext 126)
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %121

83:                                               ; preds = %78, %75
  %84 = load i8*, i8** %19, align 8
  %85 = call i8* @strdup(i8* %84)
  %86 = load i8**, i8*** %10, align 8
  store i8* %85, i8** %86, align 8
  %87 = icmp eq i8* %85, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %119

90:                                               ; preds = %83
  %91 = load i8*, i8** %20, align 8
  %92 = call i8* @strdup(i8* %91)
  %93 = load i8**, i8*** %11, align 8
  store i8* %92, i8** %93, align 8
  %94 = icmp eq i8* %92, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %119

97:                                               ; preds = %90
  %98 = load i8*, i8** %21, align 8
  %99 = call i8* @strdup(i8* %98)
  %100 = load i8**, i8*** %12, align 8
  store i8* %99, i8** %100, align 8
  %101 = icmp eq i8* %99, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %119

104:                                              ; preds = %97
  %105 = load i8**, i8*** %10, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load i8**, i8*** %11, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i8**, i8*** %12, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %112, %108, %104
  %117 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %119

118:                                              ; preds = %112
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %118, %116, %102, %95, %88, %45, %38, %32, %25
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %7, align 4
  br label %125

121:                                              ; preds = %82, %74, %68, %64, %60, %56, %50
  %122 = load i32, i32* %15, align 4
  %123 = call i32 (i32, i8*, ...) @warnc(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %122, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @get_slot_info.buf, i64 0, i64 0))
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %119
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @warnc(i32, i8*, ...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
