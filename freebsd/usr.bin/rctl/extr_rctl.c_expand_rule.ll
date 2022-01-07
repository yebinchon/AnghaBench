; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_expand_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_expand_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"malformed rule '%s': missing subject\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"loginclass\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"jail\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%s:%d:%s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @expand_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_rule(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %10, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %147

22:                                               ; preds = %2
  %23 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %7, align 8
  %24 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  store i8* null, i8** %3, align 8
  br label %147

30:                                               ; preds = %22
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %9, align 8
  br label %36

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %73

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %72

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strcasecmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %71

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strcasecmp(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcasecmp(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strcasecmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55, %51
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %7, align 8
  br label %70

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @strcasecmp(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %7, align 8
  br label %69

69:                                               ; preds = %68, %64
  br label %70

70:                                               ; preds = %69, %63
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %45
  br label %73

73:                                               ; preds = %72, %40
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @strcasecmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @strlen(i8* %81)
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @parse_user(i8* %85, i64* %6, i8* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @free(i8* %91)
  store i8* null, i8** %3, align 8
  br label %147

93:                                               ; preds = %84
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %6, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %94, i32 %96, i8* %97)
  store i32 %98, i32* %15, align 4
  br label %131

99:                                               ; preds = %80, %76, %73
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i8*, i8** %7, align 8
  %104 = call i64 @strcasecmp(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %102
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @parse_group(i8* %111, i64* %6, i8* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @free(i8* %117)
  store i8* null, i8** %3, align 8
  br label %147

119:                                              ; preds = %110
  %120 = load i8*, i8** %7, align 8
  %121 = load i64, i64* %6, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %120, i32 %122, i8* %123)
  store i32 %124, i32* %15, align 4
  br label %130

125:                                              ; preds = %106, %102, %99
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %126, i8* %127, i8* %128)
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %125, %119
  br label %131

131:                                              ; preds = %130, %93
  %132 = load i32, i32* %15, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 @free(i8* %136)
  store i8* null, i8** %3, align 8
  br label %147

138:                                              ; preds = %131
  %139 = load i8*, i8** %13, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i8*, i8** %12, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = call i8* @expand_amount(i8* %141, i8* %142)
  store i8* %143, i8** %11, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i8*, i8** %11, align 8
  store i8* %146, i8** %3, align 8
  br label %147

147:                                              ; preds = %138, %134, %116, %90, %27, %20
  %148 = load i8*, i8** %3, align 8
  ret i8* %148
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @parse_user(i8*, i64*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @parse_group(i8*, i64*, i8*) #1

declare dso_local i8* @expand_amount(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
