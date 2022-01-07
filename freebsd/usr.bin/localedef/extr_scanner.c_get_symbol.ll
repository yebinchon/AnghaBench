; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_get_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_get_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32 }

@EOF = common dso_local global i32 0, align 4
@escaped = common dso_local global i32 0, align 4
@esc_char = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unterminated symbolic name\00", align 1
@token = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"missing symbolic name\00", align 1
@T_NULL = common dso_local global i32 0, align 4
@tokidx = common dso_local global i64 0, align 8
@category = common dso_local global i64 0, align 8
@T_END = common dso_local global i64 0, align 8
@symwords = common dso_local global %struct.TYPE_4__* null, align 8
@last_kw = common dso_local global i32 0, align 4
@T_CHARMAP = common dso_local global i64 0, align 8
@yylval = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@T_CHAR = common dso_local global i32 0, align 4
@T_COLLSYM = common dso_local global i32 0, align 4
@T_COLLELEM = common dso_local global i32 0, align 4
@toksz = common dso_local global i64 0, align 8
@T_SYMBOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_symbol() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %100, %27, %23, %15, %14, %0
  %5 = call i32 (...) @scanc()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @EOF, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %103

8:                                                ; preds = %4
  %9 = load i32, i32* @escaped, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  store i32 0, i32* @escaped, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %4

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @get_escaped(i32 %16)
  %18 = call i32 @add_tok(i32 %17)
  br label %4

19:                                               ; preds = %8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @esc_char, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* @escaped, align 4
  br label %4

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @yyerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %4

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 62
  br i1 %31, label %32, label %100

32:                                               ; preds = %29
  %33 = load i32*, i32** @token, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @yyerror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @T_NULL, align 4
  store i32 %37, i32* %1, align 4
  br label %106

38:                                               ; preds = %32
  store i64 0, i64* @tokidx, align 8
  %39 = load i64, i64* @category, align 8
  %40 = load i64, i64* @T_END, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symwords, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %43
  %52 = load i32*, i32** @token, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symwords, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @strcmp(i32* %52, i64 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symwords, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* @last_kw, align 4
  %68 = load i32, i32* @last_kw, align 4
  store i32 %68, i32* %1, align 4
  br label %106

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %43

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %73, %38
  %75 = load i64, i64* @category, align 8
  %76 = load i64, i64* @T_CHARMAP, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32*, i32** @token, align 8
  %80 = call i32 @lookup_charmap(i32* %79, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @yylval, i32 0, i32 3))
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @T_CHAR, align 4
  store i32 %83, i32* %1, align 4
  br label %106

84:                                               ; preds = %78, %74
  %85 = load i32*, i32** @token, align 8
  %86 = call i32* @lookup_collsym(i32* %85)
  store i32* %86, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @yylval, i32 0, i32 2), align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @T_COLLSYM, align 4
  store i32 %89, i32* %1, align 4
  br label %106

90:                                               ; preds = %84
  %91 = load i32*, i32** @token, align 8
  %92 = call i32* @lookup_collelem(i32* %91)
  store i32* %92, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @yylval, i32 0, i32 1), align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @T_COLLELEM, align 4
  store i32 %95, i32* %1, align 4
  br label %106

96:                                               ; preds = %90
  %97 = load i32*, i32** @token, align 8
  %98 = call i32 @strdup(i32* %97)
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @yylval, i32 0, i32 0), align 8
  store i32* null, i32** @token, align 8
  store i64 0, i64* @toksz, align 8
  store i64 0, i64* @tokidx, align 8
  %99 = load i32, i32* @T_SYMBOL, align 4
  store i32 %99, i32* %1, align 4
  br label %106

100:                                              ; preds = %29
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @add_tok(i32 %101)
  br label %4

103:                                              ; preds = %4
  %104 = call i32 @yyerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @EOF, align 4
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %103, %96, %94, %88, %82, %61, %35
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare dso_local i32 @scanc(...) #1

declare dso_local i32 @add_tok(i32) #1

declare dso_local i32 @get_escaped(i32) #1

declare dso_local i32 @yyerror(i8*) #1

declare dso_local i64 @strcmp(i32*, i64) #1

declare dso_local i32 @lookup_charmap(i32*, i32*) #1

declare dso_local i32* @lookup_collsym(i32*) #1

declare dso_local i32* @lookup_collelem(i32*) #1

declare dso_local i32 @strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
