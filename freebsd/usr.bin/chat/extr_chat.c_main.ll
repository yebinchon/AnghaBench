; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"ef:r:sSt:T:U:vV\00", align 1
@echo = common dso_local global i32 0, align 4
@chat_file = common dso_local global i8* null, align 8
@optarg = common dso_local global i32 0, align 4
@report_fp = common dso_local global i32* null, align 8
@report_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Opening \22%s\22...\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot open \22%s\22 for appending\00", align 1
@to_stderr = common dso_local global i32 0, align 4
@to_log = common dso_local global i64 0, align 8
@timeout = common dso_local global i32 0, align 4
@phone_num = common dso_local global i8* null, align 8
@phone_num2 = common dso_local global i8* null, align 8
@Verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stderr = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"chat\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_LOCAL2 = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @tzset()
  br label %8

8:                                                ; preds = %91, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %92

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %89 [
    i32 101, label %15
    i32 102, label %18
    i32 114, label %27
    i32 115, label %58
    i32 83, label %61
    i32 116, label %62
    i32 84, label %65
    i32 85, label %74
    i32 118, label %83
    i32 86, label %86
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @echo, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @echo, align 4
  br label %91

18:                                               ; preds = %13
  %19 = load i8*, i8** @chat_file, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** @chat_file, align 8
  %23 = call i32 @free(i8* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @optarg, align 4
  %26 = call i8* @copy_of(i32 %25)
  store i8* %26, i8** @chat_file, align 8
  br label %91

27:                                               ; preds = %13
  %28 = load i32*, i32** @report_fp, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** @report_fp, align 8
  %32 = call i32 @fclose(i32* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** @report_file, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** @report_file, align 8
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @optarg, align 4
  %41 = call i8* @copy_of(i32 %40)
  store i8* %41, i8** @report_file, align 8
  %42 = load i8*, i8** @report_file, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** @report_fp, align 8
  %44 = load i32*, i32** @report_fp, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i64, i64* @verbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32*, i32** @report_fp, align 8
  %51 = load i8*, i8** @report_file, align 8
  %52 = call i32 @fprintf(i32* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %57

54:                                               ; preds = %39
  %55 = load i8*, i8** @report_file, align 8
  %56 = call i32 @fatal(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %53
  br label %91

58:                                               ; preds = %13
  %59 = load i32, i32* @to_stderr, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @to_stderr, align 4
  br label %91

61:                                               ; preds = %13
  store i64 0, i64* @to_log, align 8
  br label %91

62:                                               ; preds = %13
  %63 = load i32, i32* @optarg, align 4
  %64 = call i32 @atoi(i32 %63)
  store i32 %64, i32* @timeout, align 4
  br label %91

65:                                               ; preds = %13
  %66 = load i8*, i8** @phone_num, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** @phone_num, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @optarg, align 4
  %73 = call i8* @copy_of(i32 %72)
  store i8* %73, i8** @phone_num, align 8
  br label %91

74:                                               ; preds = %13
  %75 = load i8*, i8** @phone_num2, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** @phone_num2, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @optarg, align 4
  %82 = call i8* @copy_of(i32 %81)
  store i8* %82, i8** @phone_num2, align 8
  br label %91

83:                                               ; preds = %13
  %84 = load i64, i64* @verbose, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* @verbose, align 8
  br label %91

86:                                               ; preds = %13
  %87 = load i32, i32* @Verbose, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @Verbose, align 4
  br label %91

89:                                               ; preds = %13
  %90 = call i32 (...) @usage()
  br label %91

91:                                               ; preds = %89, %86, %83, %80, %71, %62, %61, %58, %57, %24, %15
  br label %8

92:                                               ; preds = %8
  %93 = load i64, i64* @optind, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  %98 = load i64, i64* @optind, align 8
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 %98
  store i8** %100, i8*** %5, align 8
  %101 = load i32*, i32** @report_fp, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i32*, i32** @stderr, align 8
  store i32* %104, i32** @report_fp, align 8
  br label %105

105:                                              ; preds = %103, %92
  %106 = load i64, i64* @to_log, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load i32, i32* @LOG_PID, align 4
  %110 = load i32, i32* @LOG_NDELAY, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @LOG_LOCAL2, align 4
  %113 = call i32 @openlog(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i64, i64* @verbose, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load i32, i32* @LOG_INFO, align 4
  %118 = call i32 @LOG_UPTO(i32 %117)
  %119 = call i32 @setlogmask(i32 %118)
  br label %124

120:                                              ; preds = %108
  %121 = load i32, i32* @LOG_WARNING, align 4
  %122 = call i32 @LOG_UPTO(i32 %121)
  %123 = call i32 @setlogmask(i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i8*, i8** @chat_file, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load i8**, i8*** %5, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 (...) @usage()
  br label %138

134:                                              ; preds = %128
  %135 = call i32 (...) @init()
  %136 = load i8*, i8** @chat_file, align 8
  %137 = call i32 @do_file(i8* %136)
  br label %138

138:                                              ; preds = %134, %132
  br label %174

139:                                              ; preds = %125
  %140 = call i32 (...) @init()
  br label %141

141:                                              ; preds = %172, %139
  %142 = load i8**, i8*** %5, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %4, align 4
  %147 = icmp sgt i32 %146, 0
  br label %148

148:                                              ; preds = %145, %141
  %149 = phi i1 [ false, %141 ], [ %147, %145 ]
  br i1 %149, label %150, label %173

150:                                              ; preds = %148
  %151 = load i8**, i8*** %5, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @chat_expect(i8* %152)
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i32 1
  store i8** %155, i8*** %5, align 8
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %4, align 4
  %158 = load i8**, i8*** %5, align 8
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %150
  %162 = load i32, i32* %4, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load i8**, i8*** %5, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @chat_send(i8* %166)
  %168 = load i8**, i8*** %5, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %5, align 8
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %164, %161, %150
  br label %141

173:                                              ; preds = %148
  br label %174

174:                                              ; preds = %173, %138
  %175 = call i32 @terminate(i32 0)
  ret i32 0
}

declare dso_local i32 @tzset(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @copy_of(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fatal(i32, i8*, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @setlogmask(i32) #1

declare dso_local i32 @LOG_UPTO(i32) #1

declare dso_local i32 @init(...) #1

declare dso_local i32 @do_file(i8*) #1

declare dso_local i32 @chat_expect(i8*) #1

declare dso_local i32 @chat_send(i8*) #1

declare dso_local i32 @terminate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
