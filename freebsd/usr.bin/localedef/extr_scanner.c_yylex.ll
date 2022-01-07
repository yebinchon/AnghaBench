; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_yylex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@instring = common dso_local global i32 0, align 4
@escaped = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"xXd01234567\00", align 1
@esc_char = common dso_local global i32 0, align 4
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@T_CHAR = common dso_local global i32 0, align 4
@T_GT = common dso_local global i32 0, align 4
@T_QUOTE = common dso_local global i32 0, align 4
@hadtok = common dso_local global i32 0, align 4
@tokidx = common dso_local global i64 0, align 8
@T_NULL = common dso_local global i32 0, align 4
@com_char = common dso_local global i32 0, align 4
@T_NL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" \09\0A;()<>,\22\00", align 1
@T_COMMA = common dso_local global i32 0, align 4
@T_SEMI = common dso_local global i32 0, align 4
@T_LPAREN = common dso_local global i32 0, align 4
@T_RPAREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %137, %134, %119, %100, %77, %69, %53, %35, %16, %0
  %4 = call i32 (...) @scanc()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @EOF, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %140

7:                                                ; preds = %3
  %8 = load i32, i32* @instring, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %7
  %11 = load i32, i32* @escaped, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  store i32 0, i32* @escaped, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %3

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @strchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @unscanc(i32 %22)
  %24 = load i32, i32* @esc_char, align 4
  %25 = call i32 @unscanc(i32 %24)
  %26 = call i32 (...) @get_wide()
  store i32 %26, i32* %1, align 4
  br label %142

27:                                               ; preds = %17
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @get_escaped(i32 %28)
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %30 = load i32, i32* @T_CHAR, align 4
  store i32 %30, i32* %1, align 4
  br label %142

31:                                               ; preds = %10
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @esc_char, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* @escaped, align 4
  br label %3

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  switch i32 %37, label %44 [
    i32 60, label %38
    i32 62, label %40
    i32 34, label %42
  ]

38:                                               ; preds = %36
  %39 = call i32 (...) @get_symbol()
  store i32 %39, i32* %1, align 4
  br label %142

40:                                               ; preds = %36
  %41 = load i32, i32* @T_GT, align 4
  store i32 %41, i32* %1, align 4
  br label %142

42:                                               ; preds = %36
  store i32 0, i32* @instring, align 4
  %43 = load i32, i32* @T_QUOTE, align 4
  store i32 %43, i32* %1, align 4
  br label %142

44:                                               ; preds = %36
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %46 = load i32, i32* @T_CHAR, align 4
  store i32 %46, i32* %1, align 4
  br label %142

47:                                               ; preds = %7
  %48 = load i32, i32* @escaped, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  store i32 0, i32* @escaped, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %3

54:                                               ; preds = %50
  store i32 1, i32* @hadtok, align 4
  %55 = load i64, i64* @tokidx, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @T_NULL, align 4
  store i32 %58, i32* %1, align 4
  br label %142

59:                                               ; preds = %54
  %60 = load i32, i32* %2, align 4
  %61 = call i64 @strchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @unscanc(i32 %64)
  %66 = load i32, i32* @esc_char, align 4
  %67 = call i32 @unscanc(i32 %66)
  %68 = call i32 (...) @get_wide()
  store i32 %68, i32* %1, align 4
  br label %142

69:                                               ; preds = %59
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @get_escaped(i32 %70)
  %72 = call i32 @add_tok(i32 %71)
  br label %3

73:                                               ; preds = %47
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @esc_char, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* @escaped, align 4
  br label %3

78:                                               ; preds = %73
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @com_char, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %92, %82
  %84 = load i32, i32* %2, align 4
  %85 = icmp ne i32 %84, 10
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = call i32 (...) @scanc()
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* @EOF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @EOF, align 4
  store i32 %91, i32* %1, align 4
  br label %142

92:                                               ; preds = %86
  br label %83

93:                                               ; preds = %83
  %94 = load i32, i32* %2, align 4
  %95 = icmp eq i32 %94, 10
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* @hadtok, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %3

101:                                              ; preds = %93
  store i32 0, i32* @hadtok, align 4
  %102 = load i32, i32* @T_NL, align 4
  store i32 %102, i32* %1, align 4
  br label %142

103:                                              ; preds = %78
  %104 = load i32, i32* %2, align 4
  %105 = call i64 @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i64, i64* @tokidx, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @unscanc(i32 %111)
  %113 = call i32 (...) @consume_token()
  store i32 %113, i32* %1, align 4
  br label %142

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %2, align 4
  switch i32 %115, label %137 [
    i32 10, label %116
    i32 44, label %122
    i32 59, label %124
    i32 40, label %126
    i32 41, label %128
    i32 62, label %130
    i32 60, label %132
    i32 32, label %134
    i32 9, label %134
    i32 34, label %135
  ]

116:                                              ; preds = %114
  %117 = load i32, i32* @hadtok, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  br label %3

120:                                              ; preds = %116
  store i32 0, i32* @hadtok, align 4
  %121 = load i32, i32* @T_NL, align 4
  store i32 %121, i32* %1, align 4
  br label %142

122:                                              ; preds = %114
  store i32 1, i32* @hadtok, align 4
  %123 = load i32, i32* @T_COMMA, align 4
  store i32 %123, i32* %1, align 4
  br label %142

124:                                              ; preds = %114
  store i32 1, i32* @hadtok, align 4
  %125 = load i32, i32* @T_SEMI, align 4
  store i32 %125, i32* %1, align 4
  br label %142

126:                                              ; preds = %114
  store i32 1, i32* @hadtok, align 4
  %127 = load i32, i32* @T_LPAREN, align 4
  store i32 %127, i32* %1, align 4
  br label %142

128:                                              ; preds = %114
  store i32 1, i32* @hadtok, align 4
  %129 = load i32, i32* @T_RPAREN, align 4
  store i32 %129, i32* %1, align 4
  br label %142

130:                                              ; preds = %114
  store i32 1, i32* @hadtok, align 4
  %131 = load i32, i32* @T_GT, align 4
  store i32 %131, i32* %1, align 4
  br label %142

132:                                              ; preds = %114
  store i32 1, i32* @hadtok, align 4
  %133 = call i32 (...) @get_symbol()
  store i32 %133, i32* %1, align 4
  br label %142

134:                                              ; preds = %114, %114
  br label %3

135:                                              ; preds = %114
  store i32 1, i32* @hadtok, align 4
  store i32 1, i32* @instring, align 4
  %136 = load i32, i32* @T_QUOTE, align 4
  store i32 %136, i32* %1, align 4
  br label %142

137:                                              ; preds = %114
  store i32 1, i32* @hadtok, align 4
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @add_tok(i32 %138)
  br label %3

140:                                              ; preds = %3
  %141 = load i32, i32* @EOF, align 4
  store i32 %141, i32* %1, align 4
  br label %142

142:                                              ; preds = %140, %135, %132, %130, %128, %126, %124, %122, %120, %110, %101, %90, %63, %57, %44, %42, %40, %38, %27, %21
  %143 = load i32, i32* %1, align 4
  ret i32 %143
}

declare dso_local i32 @scanc(...) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @unscanc(i32) #1

declare dso_local i32 @get_wide(...) #1

declare dso_local i32 @get_escaped(i32) #1

declare dso_local i32 @get_symbol(...) #1

declare dso_local i32 @add_tok(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @consume_token(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
