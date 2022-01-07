; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@FRAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"framesize must be >= 1 and <= %d\0D\0A\00", align 1
@FD = common dso_local global i32 0, align 4
@quit = common dso_local global i32 0, align 4
@tipout_pid = common dso_local global i32 0, align 4
@SIGIOT = common dso_local global i32 0, align 4
@repdes = common dso_local global i32* null, align 8
@ccc = common dso_local global i32 0, align 4
@STRIP_PAR = common dso_local global i8 0, align 1
@TCSAFLUSH = common dso_local global i32 0, align 4
@defchars = common dso_local global i32 0, align 4
@intbuf = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@intcopy = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"\0D%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\0D\0Awrite error\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" lines transferred in \00", align 1
@term = common dso_local global i32 0, align 4
@fildes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %18 = load i32, i32* @BUFSIZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i32, i32* @FRAMESIZE, align 4
  %23 = call i32 @value(i32 %22)
  %24 = call i32 @number(i32 %23)
  %25 = load i32, i32* @BUFSIZ, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @FRAMESIZE, align 4
  %29 = call i32 @value(i32 %28)
  %30 = call i32 @number(i32 %29)
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %3
  %33 = load i32, i32* @BUFSIZ, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @close(i32 %35)
  store i32 1, i32* %17, align 4
  br label %183

37:                                               ; preds = %27
  %38 = load i32, i32* @FD, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @size(i8* %40)
  %42 = call i32 @parwrite(i32 %38, i8* %39, i32 %41)
  store i32 0, i32* @quit, align 4
  %43 = load i32, i32* @tipout_pid, align 4
  %44 = load i32, i32* @SIGIOT, align 4
  %45 = call i32 @kill(i32 %43, i32 %44)
  %46 = load i32*, i32** @repdes, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @read(i32 %48, i8* bitcast (i32* @ccc to i8*), i32 1)
  store i8 13, i8* %16, align 1
  %50 = load i32, i32* @FD, align 4
  %51 = call i32 @parwrite(i32 %50, i8* %16, i32 1)
  br label %52

52:                                               ; preds = %55, %37
  %53 = load i32, i32* @FD, align 4
  %54 = call i64 @read(i32 %53, i8* %9, i32 1)
  br label %55

55:                                               ; preds = %52
  %56 = load i8, i8* %9, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* @STRIP_PAR, align 1
  %59 = sext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 10
  br i1 %61, label %52, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @TCSAFLUSH, align 4
  %64 = call i32 @tcsetattr(i32 0, i32 %63, i32* @defchars)
  %65 = load i32, i32* @intbuf, align 4
  %66 = call i32 @setjmp(i32 %65) #4
  %67 = load i32, i32* @SIGINT, align 4
  %68 = load i32, i32* @intcopy, align 4
  %69 = call i32 @signal(i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = call i64 @time(i32 0)
  store i64 %70, i64* %14, align 8
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %144, %107, %102, %88, %62
  %72 = load i32, i32* @quit, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %145

75:                                               ; preds = %71
  %76 = load i32, i32* @FD, align 4
  %77 = call i64 @read(i32 %76, i8* %9, i32 1)
  %78 = icmp sle i64 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load i8, i8* @STRIP_PAR, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* %9, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %83, %81
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %9, align 1
  %86 = load i32, i32* @quit, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %71

89:                                               ; preds = %75
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load i8, i8* %9, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = call i64 @any(i8 signext %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %89
  br label %145

98:                                               ; preds = %92
  %99 = load i8, i8* %9, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %71

103:                                              ; preds = %98
  %104 = load i8, i8* %9, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 13
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %71

108:                                              ; preds = %103
  %109 = load i8, i8* %9, align 1
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %12, align 8
  store i8 %109, i8* %110, align 1
  %112 = load i8, i8* %9, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 10
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = load i32, i32* @VERBOSE, align 4
  %117 = call i32 @value(i32 %116)
  %118 = call i64 @boolean(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %115, %108
  %125 = load i8*, i8** %12, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = ptrtoint i8* %21 to i64
  %128 = sub i64 %126, %127
  store i64 %128, i64* %13, align 8
  %129 = load i32, i32* @FRAMESIZE, align 4
  %130 = call i32 @value(i32 %129)
  %131 = call i32 @number(i32 %130)
  %132 = sext i32 %131 to i64
  %133 = icmp eq i64 %128, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %124
  %135 = load i32, i32* %5, align 4
  %136 = load i64, i64* %13, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i64 @write(i32 %135, i8* %21, i32 %137)
  %139 = load i64, i64* %13, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @quit, align 4
  br label %143

143:                                              ; preds = %141, %134
  store i8* %21, i8** %12, align 8
  br label %144

144:                                              ; preds = %143, %124
  br label %71

145:                                              ; preds = %97, %71
  %146 = load i8*, i8** %12, align 8
  %147 = ptrtoint i8* %146 to i64
  %148 = ptrtoint i8* %21 to i64
  %149 = sub i64 %147, %148
  store i64 %149, i64* %13, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = load i32, i32* %5, align 4
  %153 = load i64, i64* %13, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i64 @write(i32 %152, i8* %21, i32 %154)
  %156 = load i64, i64* %13, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %151
  br label %161

161:                                              ; preds = %160, %145
  %162 = load i32, i32* @VERBOSE, align 4
  %163 = call i32 @value(i32 %162)
  %164 = call i64 @boolean(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = call i64 @time(i32 0)
  %168 = load i64, i64* %14, align 8
  %169 = sub nsw i64 %167, %168
  %170 = call i32 @prtime(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %169)
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* @TCSAFLUSH, align 4
  %173 = call i32 @tcsetattr(i32 0, i32 %172, i32* @term)
  %174 = load i32*, i32** @fildes, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @write(i32 %176, i8* bitcast (i32* @ccc to i8*), i32 1)
  %178 = load i32, i32* @SIGINT, align 4
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @signal(i32 %178, i32 %179)
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @close(i32 %181)
  store i32 0, i32* %17, align 4
  br label %183

183:                                              ; preds = %171, %32
  %184 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %17, align 4
  switch i32 %185, label %187 [
    i32 0, label %186
    i32 1, label %186
  ]

186:                                              ; preds = %183, %183
  ret void

187:                                              ; preds = %183
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @number(i32) #2

declare dso_local i32 @value(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @parwrite(i32, i8*, i32) #2

declare dso_local i32 @size(i8*) #2

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @tcsetattr(i32, i32, i32*) #2

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #3

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i64 @time(i32) #2

declare dso_local i64 @any(i8 signext, i8*) #2

declare dso_local i64 @boolean(i32) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i32 @prtime(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
