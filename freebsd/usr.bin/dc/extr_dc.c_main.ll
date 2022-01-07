; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_dc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_dc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"e:f:hVx\00", align 1
@long_options = common dso_local global i32 0, align 4
@src = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot open file %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%s (BSD bc) %s\0A\00", align 1
@__progname = common dso_local global i8* null, align 8
@DC_VER = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@CAPH_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@stdin = common dso_local global i32 0, align 4

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
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* @long_options, align 4
  %14 = call i32 @getopt_long(i32 %11, i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32* null)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %57 [
    i32 101, label %18
    i32 102, label %29
    i32 120, label %48
    i32 86, label %49
    i32 45, label %55
    i32 104, label %56
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @init_bmachine(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 @src_setstring(i32* @src, i8* %25)
  %27 = call i32 @reset_bmachine(i32* @src)
  %28 = call i32 (...) @eval()
  store i32 1, i32* %9, align 4
  br label %59

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @init_bmachine(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i8*, i8** @optarg, align 8
  %37 = load i32, i32* @O_RDONLY, align 4
  %38 = call i32 @open(i8* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @procfd(i32 %45, i8* %46)
  store i32 1, i32* %9, align 4
  br label %59

48:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %59

49:                                               ; preds = %16
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** @__progname, align 8
  %52 = load i8*, i8** @DC_VER, align 8
  %53 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52)
  %54 = call i32 @exit(i32 0) #3
  unreachable

55:                                               ; preds = %16
  br label %59

56:                                               ; preds = %16
  br label %57

57:                                               ; preds = %16, %56
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %55, %48, %44, %24
  br label %10

60:                                               ; preds = %10
  %61 = load i64, i64* @optind, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load i64, i64* @optind, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66
  store i8** %68, i8*** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @init_bmachine(i32 %72)
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i32, i32* @stdout, align 4
  %76 = load i32, i32* @_IOLBF, align 4
  %77 = call i32 @setvbuf(i32 %75, i32* null, i32 %76, i32 0)
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* @_IOLBF, align 4
  %80 = call i32 @setvbuf(i32 %78, i32* null, i32 %79, i32 0)
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 (...) @usage()
  br label %85

85:                                               ; preds = %83, %74
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %120

88:                                               ; preds = %85
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @O_RDONLY, align 4
  %93 = call i32 @open(i8* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %96, %88
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CAPH_READ, align 4
  %104 = call i64 @caph_limit_stream(i32 %102, i32 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = call i64 (...) @caph_limit_stdio()
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = call i64 (...) @caph_enter()
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %106, %101
  %113 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i32, i32* %7, align 4
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @procfd(i32 %115, i8* %118)
  store i32 1, i32* %9, align 4
  br label %120

120:                                              ; preds = %114, %85
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %137

124:                                              ; preds = %120
  %125 = call i64 (...) @caph_limit_stdio()
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = call i64 (...) @caph_enter()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127, %124
  %131 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127
  %133 = load i32, i32* @stdin, align 4
  %134 = call i32 @src_setstream(i32* @src, i32 %133)
  %135 = call i32 @reset_bmachine(i32* @src)
  %136 = call i32 (...) @eval()
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %132, %123
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @init_bmachine(i32) #1

declare dso_local i32 @src_setstring(i32*, i8*) #1

declare dso_local i32 @reset_bmachine(i32*) #1

declare dso_local i32 @eval(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @procfd(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i64 @caph_limit_stream(i32, i32) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @src_setstream(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
