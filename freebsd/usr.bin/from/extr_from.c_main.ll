; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/from/extr_from.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/from/extr_from.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cf:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@_PATH_MAILDIR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"MAIL\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"no password file entry for you\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"can't read %s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"There %s %d message%s in your incoming mailbox.\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"are\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %14, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %15, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %9, align 4
  br label %20

20:                                               ; preds = %49, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %47 [
    i32 99, label %27
    i32 102, label %28
    i32 115, label %30
    i32 63, label %46
  ]

27:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %49

28:                                               ; preds = %25
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %11, align 8
  br label %49

30:                                               ; preds = %25
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  store i8* %32, i8** %13, align 8
  br label %33

33:                                               ; preds = %42, %30
  %34 = load i8*, i8** %13, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %13, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call signext i8 @tolower(i8 signext %39)
  %41 = load i8*, i8** %13, align 8
  store i8 %40, i8* %41, align 1
  br label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %13, align 8
  br label %33

45:                                               ; preds = %33
  br label %49

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %25, %46
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %45, %28, %27
  br label %20

50:                                               ; preds = %20
  %51 = load i64, i64* @optind, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load i64, i64* @optind, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 %56
  store i8** %58, i8*** %5, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %50
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = trunc i64 %17 to i32
  %66 = load i8*, i8** @_PATH_MAILDIR, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @snprintf(i8* %19, i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %68)
  store i8* %19, i8** %11, align 8
  br label %88

70:                                               ; preds = %61
  %71 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %71, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %87, label %73

73:                                               ; preds = %70
  %74 = call i32 (...) @getuid()
  %75 = call %struct.passwd* @getpwuid(i32 %74)
  store %struct.passwd* %75, %struct.passwd** %7, align 8
  %76 = icmp ne %struct.passwd* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load %struct.passwd*, %struct.passwd** %7, align 8
  %81 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %11, align 8
  %83 = trunc i64 %17 to i32
  %84 = load i8*, i8** @_PATH_MAILDIR, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @snprintf(i8* %19, i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85)
  store i8* %19, i8** %11, align 8
  br label %87

87:                                               ; preds = %79, %70
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %50
  %90 = load i8*, i8** %11, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32*, i32** @stdin, align 8
  store i32* %94, i32** %6, align 8
  br label %103

95:                                               ; preds = %89
  %96 = load i8*, i8** %11, align 8
  %97 = call i32* @fopen(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %97, i32** %6, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %93
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %137, %113, %103
  %105 = trunc i64 %17 to i32
  %106 = load i32*, i32** %6, align 8
  %107 = call i64 @fgets(i8* %19, i32 %105, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %104
  %110 = load i8, i8* %19, align 16
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 1, i32* %10, align 4
  br label %104

114:                                              ; preds = %109
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %117
  %121 = load i8*, i8** %12, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, i8* %19, i64 5
  %125 = load i8*, i8** %12, align 8
  %126 = call i64 @match(i8* %124, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123, %120
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %136

134:                                              ; preds = %128
  %135 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %19)
  br label %136

136:                                              ; preds = %134, %131
  br label %137

137:                                              ; preds = %136, %123, %117, %114
  store i32 0, i32* %10, align 4
  br label %104

138:                                              ; preds = %104
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, -1
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %142, 1
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 1
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %151 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i8* %145, i32 %146, i8* %150)
  br label %152

152:                                              ; preds = %141, %138
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @fclose(i32* %153)
  %155 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local signext i8 @tolower(i8 signext) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @match(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
