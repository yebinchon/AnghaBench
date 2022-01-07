; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_edit.c_run_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_edit.c_run_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@PATHSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s/mail.ReXXXXXXXXXX\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"VISUAL\00", align 1
@_PATH_EX = common dso_local global i8* null, align 8
@_PATH_VI = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"a+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @run_editor(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.stat, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %16 = load i32, i32* @PATHSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = trunc i64 %17 to i32
  %21 = load i8*, i8** @tmpdir, align 8
  %22 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = call i32 @mkstemp(i8* %19)
  store i32 %23, i32* %10, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = call i32* @Fdopen(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %4
  %30 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %146

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @fchmod(i32 %35, i32 256)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %40 = call i32 @rm(i8* %19)
  br label %146

41:                                               ; preds = %34, %31
  %42 = load i64, i64* %6, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %6, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @getc(i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @EOF, align 4
  %53 = icmp ne i32 %51, %52
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i1 [ false, %45 ], [ %53, %49 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @putc(i32 %57, i32* %58)
  br label %45

60:                                               ; preds = %54
  br label %72

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %67, %61
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @getc(i32* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @EOF, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @putc(i32 %68, i32* %69)
  br label %62

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @fflush(i32* %73)
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @fileno(i32* %75)
  %77 = call i64 @fstat(i32 %76, %struct.stat* %15)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i64 0, i64* %11, align 8
  br label %83

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @ferror(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = call i64 @Fclose(i32* %88)
  %90 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %91 = call i32 @rm(i8* %19)
  store i32* null, i32** %9, align 8
  br label %146

92:                                               ; preds = %83
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @Fclose(i32* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %98 = call i32 @rm(i8* %19)
  store i32* null, i32** %9, align 8
  br label %146

99:                                               ; preds = %92
  store i32* null, i32** %9, align 8
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 101
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %104 = call i8* @value(i8* %103)
  store i8* %104, i8** %12, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 101
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i8*, i8** @_PATH_EX, align 8
  br label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** @_PATH_VI, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i8* [ %110, %109 ], [ %112, %111 ]
  store i8* %114, i8** %12, align 8
  br label %115

115:                                              ; preds = %113, %99
  %116 = load i8*, i8** %12, align 8
  %117 = call i64 @run_command(i8* %116, i32 0, i32 -1, i32 -1, i8* %19, i32* null)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 @rm(i8* %19)
  br label %146

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 @rm(i8* %19)
  br label %146

126:                                              ; preds = %121
  %127 = call i64 @stat(i8* %19, %struct.stat* %15)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %146

131:                                              ; preds = %126
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 @rm(i8* %19)
  br label %146

138:                                              ; preds = %131
  %139 = call i32* @Fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %139, i32** %9, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %143 = call i32 @rm(i8* %19)
  br label %146

144:                                              ; preds = %138
  %145 = call i32 @rm(i8* %19)
  br label %146

146:                                              ; preds = %144, %141, %136, %129, %124, %119, %96, %87, %38, %29
  %147 = load i32*, i32** %9, align 8
  %148 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %148)
  ret i32* %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32* @Fdopen(i32, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @fchmod(i32, i32) #2

declare dso_local i32 @rm(i8*) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @putc(i32, i32*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i64 @Fclose(i32*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i8* @value(i8*) #2

declare dso_local i64 @run_command(i8*, i32, i32, i32, i8*, i32*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32* @Fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
