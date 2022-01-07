; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/fifolog_reader/extr_fifolog_reader.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/fifolog_reader/extr_fifolog_reader.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_reader = type { i32 }

@opt_E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@opt_o = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"b:B:e:E:o:R:tT:\00", align 1
@optarg = common dso_local global i8* null, align 8
@opt_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Didn't understand \22%s\22\00", align 1
@opt_R = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"%Y%m%d%H%M%S\00", align 1
@opt_T = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@R = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"-R argument: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"From\09%jd %s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"To\09%jd %s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Begin time not before End time\00", align 1
@stdout = common dso_local global i32* null, align 8
@fo = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Cannot open: %s\00", align 1
@Render = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fifolog_reader*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 @time(i32* @opt_E)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** @opt_o, align 8
  br label %13

13:                                               ; preds = %54, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %52 [
    i32 98, label %20
    i32 66, label %23
    i32 101, label %32
    i32 69, label %35
    i32 111, label %44
    i32 82, label %46
    i32 116, label %49
    i32 84, label %50
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @strtoul(i8* %21, i32* null, i32 0)
  store i32 %22, i32* @opt_B, align 4
  br label %54

23:                                               ; preds = %18
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i32 @get_date(i8* %24)
  store i32 %25, i32* @opt_B, align 4
  %26 = load i32, i32* @opt_B, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %54

32:                                               ; preds = %18
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @strtoul(i8* %33, i32* null, i32 0)
  store i32 %34, i32* @opt_E, align 4
  br label %54

35:                                               ; preds = %18
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @get_date(i8* %36)
  store i32 %37, i32* @opt_E, align 4
  %38 = load i32, i32* @opt_E, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %35
  br label %54

44:                                               ; preds = %18
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @opt_o, align 8
  br label %54

46:                                               ; preds = %18
  %47 = load i8*, i8** @optarg, align 8
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** @opt_R, align 8
  br label %54

49:                                               ; preds = %18
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** @opt_T, align 8
  br label %54

50:                                               ; preds = %18
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** @opt_T, align 8
  br label %54

52:                                               ; preds = %18
  %53 = call i32 (...) @Usage()
  br label %54

54:                                               ; preds = %52, %50, %49, %46, %44, %43, %32, %31, %20
  br label %13

55:                                               ; preds = %13
  %56 = load i64, i64* @optind, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load i64, i64* @optind, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61
  store i8** %63, i8*** %5, align 8
  %64 = load i32*, i32** @opt_R, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %84

66:                                               ; preds = %55
  %67 = load i32*, i32** @opt_R, align 8
  %68 = load i32, i32* @REG_NOSUB, align 4
  %69 = call i32 @regcomp(i32* @R, i32* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i32, i32* @BUFSIZ, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %10, align 8
  %76 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %11, align 8
  %77 = load i32, i32* %7, align 4
  %78 = trunc i64 %74 to i32
  %79 = call i32 @regerror(i32 %77, i32* @R, i8* %76, i32 %78)
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %82 = call i32 @exit(i32 1) #4
  unreachable

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %55
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 (...) @Usage()
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32, i32* @opt_B, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @ctime(i32* @opt_B)
  %97 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %95, i32 %96)
  %98 = load i32, i32* @stderr, align 4
  %99 = load i32, i32* @opt_E, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @ctime(i32* @opt_E)
  %103 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %101, i32 %102)
  %104 = load i32, i32* @opt_B, align 4
  %105 = load i32, i32* @opt_E, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %91
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = call %struct.fifolog_reader* @fifolog_reader_open(i8* %112)
  store %struct.fifolog_reader* %113, %struct.fifolog_reader** %9, align 8
  %114 = load i8*, i8** @opt_o, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  %118 = load i32*, i32** @stdout, align 8
  store i32* %118, i32** @fo, align 8
  br label %130

119:                                              ; preds = %109
  %120 = load i8*, i8** @opt_o, align 8
  %121 = call i32* @fopen(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %121, i32** @fo, align 8
  %122 = load i32*, i32** @fo, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %124, %119
  br label %130

130:                                              ; preds = %129, %117
  %131 = load %struct.fifolog_reader*, %struct.fifolog_reader** %9, align 8
  %132 = load i32, i32* @opt_B, align 4
  %133 = call i32 @fifolog_reader_seek(%struct.fifolog_reader* %131, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load %struct.fifolog_reader*, %struct.fifolog_reader** %9, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @Render, align 4
  %137 = load i32, i32* @opt_E, align 4
  %138 = call i32 @fifolog_reader_process(%struct.fifolog_reader* %134, i32 %135, i32 %136, i32* null, i32 %137)
  ret i32 0
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @get_date(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @regcomp(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @ctime(i32*) #1

declare dso_local %struct.fifolog_reader* @fifolog_reader_open(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @fifolog_reader_seek(%struct.fifolog_reader*, i32) #1

declare dso_local i32 @fifolog_reader_process(%struct.fifolog_reader*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
