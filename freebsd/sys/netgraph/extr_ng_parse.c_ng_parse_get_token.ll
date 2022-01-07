; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_parse_get_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_parse_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_EOF = common dso_local global i32 0, align 4
@T_LBRACE = common dso_local global i32 0, align 4
@T_RBRACE = common dso_local global i32 0, align 4
@T_LBRACKET = common dso_local global i32 0, align 4
@T_RBRACKET = common dso_local global i32 0, align 4
@T_EQUALS = common dso_local global i32 0, align 4
@T_ERROR = common dso_local global i32 0, align 4
@M_NETGRAPH_PARSE = common dso_local global i32 0, align 4
@T_STRING = common dso_local global i32 0, align 4
@T_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_parse_get_token(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %10

10:                                               ; preds = %19, %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load i8*, i8** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %62 [
    i32 0, label %31
    i32 123, label %34
    i32 125, label %37
    i32 91, label %40
    i32 93, label %43
    i32 61, label %46
    i32 34, label %49
  ]

31:                                               ; preds = %23
  %32 = load i32*, i32** %7, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @T_EOF, align 4
  store i32 %33, i32* %4, align 4
  br label %143

34:                                               ; preds = %23
  %35 = load i32*, i32** %7, align 8
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @T_LBRACE, align 4
  store i32 %36, i32* %4, align 4
  br label %143

37:                                               ; preds = %23
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @T_RBRACE, align 4
  store i32 %39, i32* %4, align 4
  br label %143

40:                                               ; preds = %23
  %41 = load i32*, i32** %7, align 8
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @T_LBRACKET, align 4
  store i32 %42, i32* %4, align 4
  br label %143

43:                                               ; preds = %23
  %44 = load i32*, i32** %7, align 8
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @T_RBRACKET, align 4
  store i32 %45, i32* %4, align 4
  br label %143

46:                                               ; preds = %23
  %47 = load i32*, i32** %7, align 8
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @T_EQUALS, align 4
  store i32 %48, i32* %4, align 4
  br label %143

49:                                               ; preds = %23
  %50 = load i8*, i8** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i8* @ng_get_string_token(i8* %50, i32* %51, i32* %52, i32* null)
  store i8* %53, i8** %8, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @T_ERROR, align 4
  store i32 %56, i32* %4, align 4
  br label %143

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %60 = call i32 @free(i8* %58, i32 %59)
  %61 = load i32, i32* @T_STRING, align 4
  store i32 %61, i32* %4, align 4
  br label %143

62:                                               ; preds = %23
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %133, %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %130

74:                                               ; preds = %66
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @isspace(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %130, label %82

82:                                               ; preds = %74
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 123
  br i1 %89, label %90, label %130

90:                                               ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 125
  br i1 %97, label %98, label %130

98:                                               ; preds = %90
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 91
  br i1 %105, label %106, label %130

106:                                              ; preds = %98
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 93
  br i1 %113, label %114, label %130

114:                                              ; preds = %106
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 61
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 34
  br label %130

130:                                              ; preds = %122, %114, %106, %98, %90, %82, %74, %66
  %131 = phi i1 [ false, %114 ], [ false, %106 ], [ false, %98 ], [ false, %90 ], [ false, %82 ], [ false, %74 ], [ false, %66 ], [ %129, %122 ]
  br i1 %131, label %132, label %136

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %66

136:                                              ; preds = %130
  %137 = load i32, i32* %9, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %137, %139
  %141 = load i32*, i32** %7, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* @T_WORD, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %136, %57, %55, %46, %43, %40, %37, %34, %31
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @ng_get_string_token(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
