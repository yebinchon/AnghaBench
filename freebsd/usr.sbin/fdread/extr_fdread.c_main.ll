; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdread.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdread.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"/dev/fd0\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"d:f:I:o:qrt:\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Bad argument %s to -f option; must be numeric\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Warning: fillbyte %#lx too large, truncating\0A\00", align 1
@fillbyte = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"Bad argument %s to -I option; must be numeric\0A\00", align 1
@quiet = common dso_local global i64 0, align 8
@recover = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"Bad argument %s to -t option; must be numeric\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"cannot create output file %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot open device %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %16 = load i32*, i32** @stdout, align 8
  store i32* %16, i32** %13, align 8
  br label %17

17:                                               ; preds = %88, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %89

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %85 [
    i32 100, label %24
    i32 102, label %26
    i32 73, label %47
    i32 111, label %62
    i32 113, label %64
    i32 114, label %67
    i32 116, label %70
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** %11, align 8
  br label %88

26:                                               ; preds = %22
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i64 @strtoul(i8* %27, i8** %12, i32 0)
  store i64 %28, i64* %15, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i64, i64* %15, align 8
  %40 = icmp ugt i64 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* %15, align 8
  %46 = and i64 %45, 255
  store i64 %46, i64* @fillbyte, align 8
  br label %88

47:                                               ; preds = %22
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i64 @strtoul(i8* %48, i8** %12, i32 0)
  store i64 %49, i64* %15, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i64, i64* %15, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  br label %88

62:                                               ; preds = %22
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** %10, align 8
  br label %88

64:                                               ; preds = %22
  %65 = load i64, i64* @quiet, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* @quiet, align 8
  br label %88

67:                                               ; preds = %22
  %68 = load i64, i64* @recover, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* @recover, align 8
  br label %88

70:                                               ; preds = %22
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i64 @strtoul(i8* %71, i8** %12, i32 0)
  store i64 %72, i64* %15, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  %81 = call i32 (...) @usage()
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i64, i64* %15, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  br label %88

85:                                               ; preds = %22
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85, %82, %67, %64, %62, %59, %44, %24
  br label %17

89:                                               ; preds = %17
  %90 = load i64, i64* @optind, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  %95 = load i64, i64* @optind, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 %95
  store i8** %97, i8*** %5, align 8
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %89
  %104 = call i32 (...) @usage()
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i8*, i8** %10, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @quiet, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i64, i64* @recover, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114, %111, %108
  %118 = call i32 (...) @usage()
  br label %119

119:                                              ; preds = %117, %114
  br label %126

120:                                              ; preds = %105
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (...) @usage()
  br label %125

125:                                              ; preds = %123, %120
  br label %126

126:                                              ; preds = %125, %119
  %127 = load i8*, i8** %10, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i8*, i8** %10, align 8
  %131 = call i32* @fopen(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %131, i32** %13, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* @EX_OSERR, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @err(i32 %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %126
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* @O_RDONLY, align 4
  %141 = call i32 @open(i8* %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @EX_OSERR, align 4
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @err(i32 %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @doreadid(i32 %151, i32 %152, i32 %153)
  br label %160

155:                                              ; preds = %147
  %156 = load i32, i32* %14, align 4
  %157 = load i32*, i32** %13, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = call i32 @doread(i32 %156, i32* %157, i8* %158)
  br label %160

160:                                              ; preds = %155, %150
  %161 = phi i32 [ %154, %150 ], [ %159, %155 ]
  ret i32 %161
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @doreadid(i32, i32, i32) #1

declare dso_local i32 @doread(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
