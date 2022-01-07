; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_ventel.c_ven_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_ventel.c_ven_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't synchronize with ventel\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\0Adialing...\00", align 1
@stdout = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"#k$\0D$\0A$D$I$A$L$:$ \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@TCIOFLUSH = common dso_local global i32 0, align 4
@dialtimeout = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s...\00", align 1
@DIALTIMEOUT = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ven_dialer(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca %struct.termios, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @FD, align 4
  %12 = call i32 @vensync(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %142

16:                                               ; preds = %2
  %17 = load i32, i32* @VERBOSE, align 4
  %18 = call i32 @value(i32 %17)
  %19 = call i64 @boolean(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fflush(i32 %24)
  %26 = load i32, i32* @FD, align 4
  %27 = call i32 @tcgetattr(i32 %26, %struct.termios* %10)
  %28 = load i32, i32* @HUPCL, align 4
  %29 = getelementptr inbounds %struct.termios, %struct.termios* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @FD, align 4
  %33 = load i32, i32* @TCSANOW, align 4
  %34 = call i32 @tcsetattr(i32 %32, i32 %33, %struct.termios* %10)
  %35 = call i32 @echo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %46, %23
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = call i32 @delay(i32 1, i32 10)
  %43 = load i32, i32* @FD, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @write(i32 %43, i8* %44, i32 1)
  br label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  br label %37

49:                                               ; preds = %37
  %50 = call i32 @delay(i32 1, i32 10)
  %51 = load i32, i32* @FD, align 4
  %52 = call i32 @write(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %54 = call i32 @gobble(i8 signext 10, i8* %53)
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %56 = call i32 @gobble(i8 signext 10, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %60 = call i32 @gobble(i8 signext 33, i8* %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %49
  %62 = load i32, i32* @FD, align 4
  %63 = load i32, i32* @TCIOFLUSH, align 4
  %64 = call i32 @tcflush(i32 %62, i32 %63)
  %65 = load i64, i64* @dialtimeout, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (...) @ven_disconnect()
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* @dialtimeout, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @VERBOSE, align 4
  %77 = call i32 @value(i32 %76)
  %78 = call i64 @boolean(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75, %72, %69
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %142

82:                                               ; preds = %75
  %83 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %84 = call i8* @strchr(i8* %83, i8 signext 13)
  store i8* %84, i8** %6, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  store i8 0, i8* %88, align 1
  br label %89

89:                                               ; preds = %87, %82
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %103, %89
  %92 = load i8*, i8** %6, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 32)
  store i8* %93, i8** %6, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %106

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  br label %91

106:                                              ; preds = %101, %91
  %107 = load i8*, i8** %6, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %140

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %115, %109
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  br label %110

118:                                              ; preds = %110
  %119 = load i8*, i8** %6, align 8
  store i8* %119, i8** %8, align 8
  br label %120

120:                                              ; preds = %134, %118
  %121 = load i8*, i8** %6, align 8
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @isupper(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call signext i8 @tolower(i8 signext %131)
  %133 = load i8*, i8** %6, align 8
  store i8 %132, i8* %133, align 1
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  br label %120

137:                                              ; preds = %120
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %137, %106
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %80, %14
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @vensync(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @echo(i8*) #1

declare dso_local i32 @delay(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @gobble(i8 signext, i8*) #1

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @ven_disconnect(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
