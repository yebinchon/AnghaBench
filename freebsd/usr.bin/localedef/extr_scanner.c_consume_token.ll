; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_consume_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_consume_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }
%struct.TYPE_3__ = type { i8, i32, i32 }

@tokidx = common dso_local global i32 0, align 4
@token = common dso_local global i8* null, align 8
@T_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@T_ELLIPSIS = common dso_local global i32 0, align 4
@keywords = common dso_local global %struct.TYPE_4__* null, align 8
@last_kw = common dso_local global i64 0, align 8
@T_END = common dso_local global i64 0, align 8
@category = common dso_local global i64 0, align 8
@categories = common dso_local global i64* null, align 8
@yylval = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1
@T_NUMBER = common dso_local global i32 0, align 4
@T_CHAR = common dso_local global i32 0, align 4
@toksz = common dso_local global i64 0, align 8
@T_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @consume_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consume_token() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @tokidx, align 4
  store i32 %6, i32* %2, align 4
  store i32 0, i32* @tokidx, align 4
  %7 = load i8*, i8** @token, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @T_NULL, align 4
  store i32 %10, i32* %1, align 4
  br label %121

11:                                               ; preds = %0
  %12 = load i8*, i8** @token, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @T_ELLIPSIS, align 4
  store i32 %16, i32* %1, align 4
  br label %121

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %79, %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keywords, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %82

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keywords, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** @token, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %79

37:                                               ; preds = %26
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keywords, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* @last_kw, align 8
  %44 = load i64, i64* @last_kw, align 8
  %45 = load i64, i64* @T_END, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i64, i64* @T_END, align 8
  store i64 %48, i64* @category, align 8
  br label %49

49:                                               ; preds = %47, %37
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i64*, i64** @categories, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load i64*, i64** @categories, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @last_kw, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %68

66:                                               ; preds = %57
  %67 = load i64, i64* @last_kw, align 8
  store i64 %67, i64* @category, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %50

71:                                               ; preds = %50
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @keywords, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %1, align 4
  br label %121

79:                                               ; preds = %36
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %18

82:                                               ; preds = %18
  %83 = load i8*, i8** @token, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isdigit(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** @token, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 45
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i8*, i8** @token, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isdigit(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %92, %82
  %99 = load i8*, i8** @token, align 8
  %100 = call i32 @strtol(i8* %99, i8** %5, i32 10)
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @yylval, i32 0, i32 2), align 4
  %101 = load i8*, i8** %5, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 @yyerror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %98
  %108 = load i32, i32* @T_NUMBER, align 4
  store i32 %108, i32* %1, align 4
  br label %121

109:                                              ; preds = %92, %87
  %110 = load i32, i32* %2, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i8*, i8** @token, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  store i8 %115, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @yylval, i32 0, i32 0), align 4
  %116 = load i32, i32* @T_CHAR, align 4
  store i32 %116, i32* %1, align 4
  br label %121

117:                                              ; preds = %109
  %118 = load i8*, i8** @token, align 8
  %119 = call i32 @strdup(i8* %118)
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @yylval, i32 0, i32 1), align 4
  store i8* null, i8** @token, align 8
  store i64 0, i64* @toksz, align 8
  store i32 0, i32* @tokidx, align 4
  %120 = load i32, i32* @T_NAME, align 4
  store i32 %120, i32* %1, align 4
  br label %121

121:                                              ; preds = %117, %112, %107, %71, %15, %9
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @yyerror(i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
