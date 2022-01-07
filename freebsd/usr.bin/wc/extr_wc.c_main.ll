; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/wc/extr_wc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/wc/extr_wc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clmwL\00", align 1
@doline = common dso_local global i64 0, align 8
@doword = common dso_local global i64 0, align 8
@dochar = common dso_local global i64 0, align 8
@domulti = common dso_local global i64 0, align 8
@dolongline = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@SIGINFO = common dso_local global i32 0, align 4
@siginfo_handler = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@FA_OPEN = common dso_local global i32 0, align 4
@fa = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Unable to init casper\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unable to limit stdio\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to enter capability mode\00", align 1
@stderr = common dso_local global i32 0, align 4
@XO_STYLE_TEXT = common dso_local global i32 0, align 4
@stderr_handle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@tlinect = common dso_local global i32 0, align 4
@twordct = common dso_local global i32 0, align 4
@tcharct = common dso_local global i32 0, align 4
@tlongline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @LC_CTYPE, align 4
  %11 = call i32 @setlocale(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @xo_parse_args(i32 %12, i8** %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  ret i32 %18

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = trunc i32 %26 to i8
  %28 = sext i8 %27 to i32
  switch i32 %28, label %35 [
    i32 108, label %29
    i32 119, label %30
    i32 99, label %31
    i32 76, label %32
    i32 109, label %33
    i32 63, label %34
  ]

29:                                               ; preds = %25
  store i64 1, i64* @doline, align 8
  br label %37

30:                                               ; preds = %25
  store i64 1, i64* @doword, align 8
  br label %37

31:                                               ; preds = %25
  store i64 1, i64* @dochar, align 8
  store i64 0, i64* @domulti, align 8
  br label %37

32:                                               ; preds = %25
  store i64 1, i64* @dolongline, align 8
  br label %37

33:                                               ; preds = %25
  store i64 1, i64* @domulti, align 8
  store i64 0, i64* @dochar, align 8
  br label %37

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %25, %34
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %33, %32, %31, %30, %29
  br label %20

38:                                               ; preds = %20
  %39 = load i64, i64* @optind, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 %39
  store i8** %41, i8*** %5, align 8
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @SIGINFO, align 4
  %48 = load i32, i32* @siginfo_handler, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = load i32, i32* @CAP_READ, align 4
  %54 = load i32, i32* @CAP_FSTAT, align 4
  %55 = call i32 @cap_rights_init(i32* %9, i32 %53, i32 %54)
  %56 = load i32, i32* @FA_OPEN, align 4
  %57 = call i32* @fileargs_init(i32 %50, i8** %51, i32 %52, i32 0, i32 %55, i32 %56)
  store i32* %57, i32** @fa, align 8
  %58 = load i32*, i32** @fa, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = call i32 @xo_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %38
  %64 = call i32 (...) @caph_cache_catpages()
  %65 = call i64 (...) @caph_limit_stdio()
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = call i32 @xo_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32*, i32** @fa, align 8
  %70 = call i32 @fileargs_free(i32* %69)
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %63
  %73 = call i64 (...) @caph_enter_casper()
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = call i32 @xo_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32*, i32** @fa, align 8
  %78 = call i32 @fileargs_free(i32* %77)
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %72
  %81 = load i64, i64* @doline, align 8
  %82 = load i64, i64* @doword, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @dochar, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* @domulti, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* @dolongline, align 8
  %89 = add nsw i64 %87, %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store i64 1, i64* @dochar, align 8
  store i64 1, i64* @doword, align 8
  store i64 1, i64* @doline, align 8
  br label %92

92:                                               ; preds = %91, %80
  %93 = load i32, i32* @stderr, align 4
  %94 = load i32, i32* @XO_STYLE_TEXT, align 4
  %95 = call i32 @xo_create_to_file(i32 %93, i32 %94, i32 0)
  store i32 %95, i32* @stderr_handle, align 4
  %96 = call i32 @xo_open_container(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %97 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %98 = load i8**, i8*** %5, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %92
  %102 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %103 = call i64 @cnt(i8* null)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %101
  %109 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %130

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %124, %110
  %112 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i8**, i8*** %5, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @cnt(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %111
  %121 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %120
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i32 1
  store i8** %126, i8*** %5, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %111, label %129

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %108
  %131 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %132 = load i32, i32* %8, align 4
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = call i32 @xo_open_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32, i32* @tlinect, align 4
  %137 = load i32, i32* @twordct, align 4
  %138 = load i32, i32* @tcharct, align 4
  %139 = load i32, i32* @tlongline, align 4
  %140 = call i32 @show_cnt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = call i32 @xo_close_container(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %142

142:                                              ; preds = %134, %130
  %143 = load i32*, i32** @fa, align 8
  %144 = call i32 @fileargs_free(i32* %143)
  %145 = call i32 @xo_close_container(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %146 = call i32 (...) @xo_finish()
  %147 = load i32, i32* %7, align 4
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 0, i32 1
  %151 = call i32 @exit(i32 %150) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32* @fileargs_init(i32, i8**, i32, i32, i32, i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i32 @xo_warn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i32 @fileargs_free(i32*) #1

declare dso_local i64 @caph_enter_casper(...) #1

declare dso_local i32 @xo_create_to_file(i32, i32, i32) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i64 @cnt(i8*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @show_cnt(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
