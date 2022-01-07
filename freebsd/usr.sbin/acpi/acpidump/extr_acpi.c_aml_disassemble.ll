; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_aml_disassemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_aml_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/acpdump.din\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/acpdump.dsl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@_PATH_TMP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"realpath tmp dir\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s/acpidump.XXXXXX\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"$TMPDIR too long\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"mkdtemp tmp working dir\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"iasl tmp file\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"/usr/sbin/iasl\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"iasl\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"iast exit status = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"iasl tmp file (read)\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aml_disassemble(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %25 = load i32, i32* @PATH_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %28 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i8*, i8** @_PATH_TMP, align 8
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %31, %2
  %34 = load i8*, i8** %11, align 8
  %35 = call i32* @realpath(i8* %34, i8* %21)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %158

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = sub i64 %26, %42
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %27, i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  %47 = load i64, i64* %13, align 8
  %48 = sub i64 %47, 1
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %158

53:                                               ; preds = %39
  %54 = call i32* @mkdtemp(i8* %27)
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %158

58:                                               ; preds = %53
  %59 = trunc i64 %23 to i32
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %24, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %27, i8* %60)
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %23, 1
  %64 = icmp ule i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* @O_CREAT, align 4
  %68 = load i32, i32* @O_WRONLY, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @S_IRUSR, align 4
  %71 = load i32, i32* @S_IWUSR, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @open(i8* %24, i32 %69, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %58
  %77 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %158

78:                                               ; preds = %58
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @write_dsdt(i32 %79, i32* %80, i32* %81)
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @close(i32 %83)
  %85 = call i64 (...) @fork()
  store i64 %85, i64* %16, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load i32, i32* @STDOUT_FILENO, align 4
  %89 = call i32 @close(i32 %88)
  %90 = load i64, i64* @vflag, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @STDERR_FILENO, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = call i32 @execl(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %24, i32* null)
  %97 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %78
  %99 = load i64, i64* %16, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @wait(i32* %15)
  br label %103

103:                                              ; preds = %101, %98
  %104 = call i64 @unlink(i8* %24)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %152

108:                                              ; preds = %103
  %109 = load i64, i64* %16, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %152

113:                                              ; preds = %108
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* @stderr, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = trunc i64 %23 to i32
  %122 = load i8*, i8** %10, align 8
  %123 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %24, i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %27, i8* %122)
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = sub i64 %23, 1
  %126 = icmp ule i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32* %129, i32** %12, align 8
  %130 = call i64 @unlink(i8* %24)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %120
  %133 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %152

134:                                              ; preds = %120
  %135 = load i32*, i32** %12, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %152

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %145, %139
  %141 = trunc i64 %19 to i32
  %142 = load i32*, i32** %12, align 8
  %143 = call i64 @fread(i8* %21, i32 1, i32 %141, i32* %142)
  store i64 %143, i64* %13, align 8
  %144 = icmp ugt i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i64, i64* %13, align 8
  %147 = load i32, i32* @stdout, align 4
  %148 = call i32 @fwrite(i8* %21, i32 1, i64 %146, i32 %147)
  br label %140

149:                                              ; preds = %140
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @fclose(i32* %150)
  br label %152

152:                                              ; preds = %149, %137, %132, %111, %106
  %153 = call i64 @rmdir(i8* %27)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %152
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %157, %76, %56, %50, %37
  %159 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %17, align 4
  switch i32 %160, label %162 [
    i32 0, label %161
    i32 1, label %161
  ]

161:                                              ; preds = %158, %158
  ret void

162:                                              ; preds = %158
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32* @mkdtemp(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @write_dsdt(i32, i32*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @wait(i32*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @fwrite(i8*, i32, i64, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @rmdir(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
