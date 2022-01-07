; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_localedef.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_localedef.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yydebug = common dso_local global i64 0, align 8
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"blw:i:cf:u:vUD\00", align 1
@bsd = common dso_local global i32 0, align 4
@byteorder = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@undefok = common dso_local global i32 0, align 4
@warnok = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@locname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Processing locale %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Loading charmap %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Loading widths %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Loading POSIX portable characters.\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"All done.\0A\00", align 1
@warnings = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = call i32 (...) @init_charmap()
  %12 = call i32 (...) @init_collate()
  %13 = call i32 (...) @init_ctype()
  %14 = call i32 (...) @init_messages()
  %15 = call i32 (...) @init_monetary()
  %16 = call i32 (...) @init_numeric()
  %17 = call i32 (...) @init_time()
  store i64 0, i64* @yydebug, align 8
  %18 = load i32, i32* @LC_ALL, align 4
  %19 = call i32 @setlocale(i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %58, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %58 [
    i32 68, label %27
    i32 98, label %28
    i32 108, label %28
    i32 118, label %38
    i32 105, label %41
    i32 117, label %43
    i32 102, label %46
    i32 85, label %48
    i32 99, label %51
    i32 119, label %54
    i32 63, label %56
  ]

27:                                               ; preds = %25
  store i32 1, i32* @bsd, align 4
  br label %58

28:                                               ; preds = %25, %25
  %29 = load i32, i32* @byteorder, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 98
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4321, i32 1234
  store i32 %37, i32* @byteorder, align 4
  br label %58

38:                                               ; preds = %25
  %39 = load i64, i64* @verbose, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* @verbose, align 8
  br label %58

41:                                               ; preds = %25
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** %7, align 8
  br label %58

43:                                               ; preds = %25
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @set_wide_encoding(i8* %44)
  br label %58

46:                                               ; preds = %25
  %47 = load i8*, i8** @optarg, align 8
  store i8* %47, i8** %8, align 8
  br label %58

48:                                               ; preds = %25
  %49 = load i32, i32* @undefok, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @undefok, align 4
  br label %58

51:                                               ; preds = %25
  %52 = load i32, i32* @warnok, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @warnok, align 4
  br label %58

54:                                               ; preds = %25
  %55 = load i8*, i8** @optarg, align 8
  store i8* %55, i8** %9, align 8
  br label %58

56:                                               ; preds = %25
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %25, %56, %54, %51, %48, %46, %43, %41, %38, %33, %27
  br label %20

59:                                               ; preds = %20
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* @optind, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** @locname, align 8
  %73 = load i64, i64* @verbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i8*, i8** @locname, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %66
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i64, i64* @verbose, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @reset_scanner(i8* %88)
  %90 = call i32 (...) @yyparse()
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i64, i64* @verbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @reset_scanner(i8* %101)
  %103 = call i32 (...) @yyparse()
  br label %104

104:                                              ; preds = %100, %91
  %105 = load i64, i64* @verbose, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104
  %110 = call i32 (...) @add_charmap_posix()
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @reset_scanner(i8* %114)
  br label %118

116:                                              ; preds = %109
  %117 = call i32 @reset_scanner(i8* null)
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i32, i32* @bsd, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %138, %121
  %123 = load i8*, i8** @locname, align 8
  %124 = call i32* @opendir(i8* %123)
  store i32* %124, i32** %10, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load i64, i64* @errno, align 8
  %128 = load i64, i64* @ENOENT, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** @locname, align 8
  %132 = call i64 @mkdir(i8* %131, i32 493)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130, %126
  %135 = load i64, i64* @errno, align 8
  %136 = call i32 @strerror(i64 %135)
  %137 = call i32 @errf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %130
  br label %122

139:                                              ; preds = %122
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @closedir(i32* %140)
  %142 = call i32 (...) @category_file()
  %143 = call i8* @dirname(i32 %142)
  %144 = call i64 @mkdir(i8* %143, i32 493)
  br label %145

145:                                              ; preds = %139, %118
  %146 = call i32 (...) @yyparse()
  %147 = load i64, i64* @verbose, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i64, i64* @warnings, align 8
  %153 = icmp ne i64 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  ret i32 %155
}

declare dso_local i32 @init_charmap(...) #1

declare dso_local i32 @init_collate(...) #1

declare dso_local i32 @init_ctype(...) #1

declare dso_local i32 @init_messages(...) #1

declare dso_local i32 @init_monetary(...) #1

declare dso_local i32 @init_numeric(...) #1

declare dso_local i32 @init_time(...) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @set_wide_encoding(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @reset_scanner(i8*) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @add_charmap_posix(...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @errf(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i8* @dirname(i32) #1

declare dso_local i32 @category_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
