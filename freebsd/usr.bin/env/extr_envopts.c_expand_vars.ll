; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/env/extr_envopts.c_expand_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/env/extr_envopts.c_expand_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"Only ${VARNAME} expansion is supported, error at: %s\00", align 1
@env_verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"#env  replacing ${%s} with null string\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"#env  expanding ${%s} into '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**, i8**, i8**)* @expand_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_vars(i32 %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 1, i32* %15, align 4
  %18 = load i8**, i8*** %9, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %11, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %10, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 123
  br i1 %25, label %26, label %62

26:                                               ; preds = %4
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 95
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isalphach(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31, %26
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %51, %36
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 95
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isalnumch(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ true, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  br label %39

54:                                               ; preds = %49
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 125
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %31
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8**, i8*** %9, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i8*, i8** %11, align 8
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i8* @malloc(i64 %78)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @strlcpy(i8* %80, i8* %81, i64 %82)
  %84 = load i8*, i8** %14, align 8
  %85 = call i8* @getenv(i8* %84)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %69
  %89 = load i8*, i8** %12, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88, %69
  %94 = load i32, i32* @env_verbosity, align 4
  %95 = icmp sgt i32 %94, 2
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @free(i8* %101)
  store i8* null, i8** %5, align 8
  br label %159

103:                                              ; preds = %88
  %104 = load i32, i32* @env_verbosity, align 4
  %105 = icmp sgt i32 %104, 2
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* @stderr, align 4
  %108 = load i8*, i8** %14, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %108, i8* %109)
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i8*, i8** %14, align 8
  %113 = call i64 @strlen(i8* %112)
  %114 = add i64 %113, 3
  %115 = load i8*, i8** %12, align 8
  %116 = call i64 @strlen(i8* %115)
  %117 = icmp uge i64 %114, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %12, align 8
  store i8* %121, i8** %5, align 8
  br label %159

122:                                              ; preds = %111
  %123 = load i8*, i8** %12, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = load i8**, i8*** %9, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strlen(i8* %126)
  %128 = add i64 %124, %127
  %129 = add i64 %128, 1
  store i64 %129, i64* %17, align 8
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %122
  %133 = load i8**, i8*** %8, align 8
  %134 = load i8*, i8** %133, align 8
  store i8 0, i8* %134, align 1
  %135 = load i8**, i8*** %7, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @strlen(i8* %136)
  %138 = load i64, i64* %17, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %17, align 8
  %140 = load i64, i64* %17, align 8
  %141 = call i8* @malloc(i64 %140)
  store i8* %141, i8** %13, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load i8**, i8*** %7, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strcpy(i8* %142, i8* %144)
  %146 = load i8*, i8** %13, align 8
  %147 = load i8**, i8*** %7, align 8
  store i8* %146, i8** %147, align 8
  br label %152

148:                                              ; preds = %122
  %149 = load i64, i64* %17, align 8
  %150 = call i8* @malloc(i64 %149)
  store i8* %150, i8** %13, align 8
  %151 = load i8*, i8** %13, align 8
  store i8 0, i8* %151, align 1
  br label %152

152:                                              ; preds = %148, %132
  %153 = load i8*, i8** %13, align 8
  %154 = call i8* @strchr(i8* %153, i8 signext 0)
  %155 = load i8**, i8*** %8, align 8
  store i8* %154, i8** %155, align 8
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i8*, i8** %12, align 8
  store i8* %158, i8** %5, align 8
  br label %159

159:                                              ; preds = %152, %118, %100
  %160 = load i8*, i8** %5, align 8
  ret i8* %160
}

declare dso_local i64 @isalphach(i8 signext) #1

declare dso_local i64 @isalnumch(i8 signext) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
