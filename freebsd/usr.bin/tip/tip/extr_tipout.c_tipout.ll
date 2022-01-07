; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tipout.c_tipout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tipout.c_tipout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGEMT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGIOT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@sigbuf = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@FD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@STRIP_PAR = common dso_local global i8 0, align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@SCRIPT = common dso_local global i32 0, align 4
@fscript = common dso_local global i32* null, align 8
@BEAUTIFY = common dso_local global i32 0, align 4
@EXCEPTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipout() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @BUFSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @SIGINT, align 4
  %13 = call i32 @signal(i32 %12, i32 (i32)* @SIG_IGN)
  %14 = load i32, i32* @SIGQUIT, align 4
  %15 = call i32 @signal(i32 %14, i32 (i32)* @SIG_IGN)
  %16 = load i32, i32* @SIGEMT, align 4
  %17 = call i32 @signal(i32 %16, i32 (i32)* @intEMT)
  %18 = load i32, i32* @SIGTERM, align 4
  %19 = call i32 @signal(i32 %18, i32 (i32)* @intTERM)
  %20 = load i32, i32* @SIGIOT, align 4
  %21 = call i32 @signal(i32 %20, i32 (i32)* @intIOT)
  %22 = load i32, i32* @SIGHUP, align 4
  %23 = call i32 @signal(i32 %22, i32 (i32)* @intTERM)
  %24 = load i32, i32* @SIGSYS, align 4
  %25 = call i32 @signal(i32 %24, i32 (i32)* @intSYS)
  %26 = load i32, i32* @sigbuf, align 4
  %27 = call i32 @setjmp(i32 %26) #4
  %28 = load i32, i32* @SIG_BLOCK, align 4
  %29 = call i32 @sigprocmask(i32 %28, i32* null, i32* %7)
  br label %30

30:                                               ; preds = %162, %60, %0
  %31 = load i32, i32* @SIG_SETMASK, align 4
  %32 = call i32 @sigprocmask(i32 %31, i32* %7, i32* null)
  %33 = load i32, i32* @FD, align 4
  %34 = load i32, i32* @BUFSIZ, align 4
  %35 = call i64 @read(i32 %33, i8* %11, i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ule i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %30
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EIO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENXIO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48, %44, %38
  %53 = call i32 @sigemptyset(i32* %6)
  %54 = load i32, i32* @SIGTERM, align 4
  %55 = call i32 @sigaddset(i32* %6, i32 %54)
  %56 = load i32, i32* @SIG_BLOCK, align 4
  %57 = call i32 @sigprocmask(i32 %56, i32* %6, i32* null)
  %58 = load i32, i32* @SIGHUP, align 4
  %59 = call i32 @intTERM(i32 %58)
  br label %60

60:                                               ; preds = %52, %48, %41
  br label %30

61:                                               ; preds = %30
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %5, align 8
  %63 = call i32 @sigemptyset(i32* %6)
  %64 = load i32, i32* @SIGEMT, align 4
  %65 = call i32 @sigaddset(i32* %6, i32 %64)
  %66 = load i32, i32* @SIGTERM, align 4
  %67 = call i32 @sigaddset(i32* %6, i32 %66)
  %68 = load i32, i32* @SIGIOT, align 4
  %69 = call i32 @sigaddset(i32* %6, i32 %68)
  %70 = load i32, i32* @SIGSYS, align 4
  %71 = call i32 @sigaddset(i32* %6, i32 %70)
  %72 = load i32, i32* @SIG_BLOCK, align 4
  %73 = call i32 @sigprocmask(i32 %72, i32* %6, i32* null)
  store i8* %11, i8** %3, align 8
  br label %74

74:                                               ; preds = %87, %61
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds i8, i8* %11, i64 %76
  %78 = icmp ult i8* %75, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8, i8* @STRIP_PAR, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, %81
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 1
  br label %87

87:                                               ; preds = %79
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %3, align 8
  br label %74

90:                                               ; preds = %74
  %91 = load i32, i32* @STDOUT_FILENO, align 4
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @write(i32 %91, i8* %11, i64 %92)
  %94 = load i32, i32* @SCRIPT, align 4
  %95 = call i32 @value(i32 %94)
  %96 = call i64 @boolean(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %162

98:                                               ; preds = %90
  %99 = load i32*, i32** @fscript, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %162

101:                                              ; preds = %98
  %102 = load i32, i32* @BEAUTIFY, align 4
  %103 = call i32 @value(i32 %102)
  %104 = call i64 @boolean(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i64, i64* %5, align 8
  %108 = load i32*, i32** @fscript, align 8
  %109 = call i32 @fwrite(i8* %11, i32 1, i64 %107, i32* %108)
  br label %143

110:                                              ; preds = %101
  store i8* %11, i8** %3, align 8
  br label %111

111:                                              ; preds = %139, %110
  %112 = load i8*, i8** %3, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i8, i8* %11, i64 %113
  %115 = icmp ult i8* %112, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load i8*, i8** %3, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sge i32 %119, 32
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i8*, i8** %3, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sle i32 %124, 126
  br i1 %125, label %133, label %126

126:                                              ; preds = %121, %116
  %127 = load i8*, i8** %3, align 8
  %128 = load i8, i8* %127, align 1
  %129 = load i32, i32* @EXCEPTIONS, align 4
  %130 = call i32 @value(i32 %129)
  %131 = call i64 @any(i8 signext %128, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126, %121
  %134 = load i8*, i8** %3, align 8
  %135 = load i8, i8* %134, align 1
  %136 = load i32*, i32** @fscript, align 8
  %137 = call i32 @putc(i8 signext %135, i32* %136)
  br label %138

138:                                              ; preds = %133, %126
  br label %139

139:                                              ; preds = %138
  %140 = load i8*, i8** %3, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %3, align 8
  br label %111

142:                                              ; preds = %111
  br label %143

143:                                              ; preds = %142, %106
  store i8* %11, i8** %3, align 8
  br label %144

144:                                              ; preds = %158, %143
  %145 = load i8*, i8** %3, align 8
  %146 = load i64, i64* %5, align 8
  %147 = getelementptr inbounds i8, i8* %11, i64 %146
  %148 = icmp ult i8* %145, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load i8*, i8** %3, align 8
  %151 = load i8, i8* %150, align 1
  %152 = call i32 @isgraph(i8 signext %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = load i32*, i32** @fscript, align 8
  %156 = call i32 @fflush(i32* %155)
  br label %161

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157
  %159 = load i8*, i8** %3, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %3, align 8
  br label %144

161:                                              ; preds = %154, %144
  br label %162

162:                                              ; preds = %161, %98, %90
  br label %30
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @signal(i32, i32 (i32)*) #2

declare dso_local i32 @SIG_IGN(i32) #2

declare dso_local i32 @intEMT(i32) #2

declare dso_local i32 @intTERM(i32) #2

declare dso_local i32 @intIOT(i32) #2

declare dso_local i32 @intSYS(i32) #2

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #3

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaddset(i32*, i32) #2

declare dso_local i32 @write(i32, i8*, i64) #2

declare dso_local i64 @boolean(i32) #2

declare dso_local i32 @value(i32) #2

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #2

declare dso_local i64 @any(i8 signext, i32) #2

declare dso_local i32 @putc(i8 signext, i32*) #2

declare dso_local i32 @isgraph(i8 signext) #2

declare dso_local i32 @fflush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
