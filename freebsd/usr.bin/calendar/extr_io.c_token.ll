; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@T_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Expecting arguments after #include\00", align 1
@T_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Excecting '<' or '\22' after #include\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Unterminated include expecting '\22'\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Unterminated include expecting '>'\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Unterminated include expecting '%c'\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@definitions = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"Expecting arguments after #define\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Expecting arguments after #ifndef\00", align 1
@T_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @token(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @T_OK, align 4
  store i32 %16, i32* %4, align 4
  br label %160

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @T_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %160

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %105

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  store i8* %29, i8** %8, align 8
  %30 = call i32 @trimlr(i8** %8)
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @T_ERR, align 4
  store i32 %37, i32* %4, align 4
  br label %160

38:                                               ; preds = %27
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 60
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 34
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @T_ERR, align 4
  store i32 %50, i32* %4, align 4
  br label %160

51:                                               ; preds = %43, %38
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %10, align 1
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %9, align 1
  %63 = load i8, i8* %9, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %81 [
    i32 62, label %65
    i32 34, label %73
  ]

65:                                               ; preds = %51
  %66 = load i8, i8* %10, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 60
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @T_ERR, align 4
  store i32 %71, i32* %4, align 4
  br label %160

72:                                               ; preds = %65
  br label %89

73:                                               ; preds = %51
  %74 = load i8, i8* %10, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 34
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @T_ERR, align 4
  store i32 %79, i32* %4, align 4
  br label %160

80:                                               ; preds = %73
  br label %89

81:                                               ; preds = %51
  %82 = load i8, i8* %10, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 60
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 62, i32 34
  %87 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @T_ERR, align 4
  store i32 %88, i32* %4, align 4
  br label %160

89:                                               ; preds = %80, %72
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @cal_fopen(i8* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i64 @cal_parse(i32 %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = load i32, i32* @T_ERR, align 4
  store i32 %102, i32* %4, align 4
  br label %160

103:                                              ; preds = %89
  %104 = load i32, i32* @T_OK, align 4
  store i32 %104, i32* %4, align 4
  br label %160

105:                                              ; preds = %23
  %106 = load i8*, i8** %5, align 8
  %107 = call i64 @strncmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load i32*, i32** @definitions, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32* (...) @sl_init()
  store i32* %113, i32** @definitions, align 8
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 6
  store i8* %116, i8** %8, align 8
  %117 = call i32 @trimlr(i8** %8)
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %124 = load i32, i32* @T_ERR, align 4
  store i32 %124, i32* %4, align 4
  br label %160

125:                                              ; preds = %114
  %126 = load i32*, i32** @definitions, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @strdup(i8* %127)
  %129 = call i32 @sl_add(i32* %126, i32 %128)
  %130 = load i32, i32* @T_OK, align 4
  store i32 %130, i32* %4, align 4
  br label %160

131:                                              ; preds = %105
  %132 = load i8*, i8** %5, align 8
  %133 = call i64 @strncmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 6)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %131
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 6
  store i8* %137, i8** %8, align 8
  %138 = call i32 @trimlr(i8** %8)
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %145 = load i32, i32* @T_ERR, align 4
  store i32 %145, i32* %4, align 4
  br label %160

146:                                              ; preds = %135
  %147 = load i32*, i32** @definitions, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32*, i32** @definitions, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = call i32* @sl_find(i32* %150, i8* %151)
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32*, i32** %7, align 8
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %154, %149, %146
  %157 = load i32, i32* @T_OK, align 4
  store i32 %157, i32* %4, align 4
  br label %160

158:                                              ; preds = %131
  %159 = load i32, i32* @T_PROCESS, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %156, %143, %125, %122, %103, %101, %81, %77, %69, %48, %35, %21, %14
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @trimlr(i8**) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @cal_parse(i32, i32*) #1

declare dso_local i32 @cal_fopen(i8*) #1

declare dso_local i32* @sl_init(...) #1

declare dso_local i32 @sl_add(i32*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32* @sl_find(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
