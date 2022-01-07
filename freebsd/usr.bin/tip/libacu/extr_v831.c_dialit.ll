; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v831.c_dialit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v831.c_dialit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vaconfig = type { i64, i32, i32 }
%struct.termios = type { i32, i32 }

@vaconfig = common dso_local global %struct.vaconfig* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unable to locate dialer (%s)\0A\00", align 1
@AC = common dso_local global i32 0, align 4
@B2400 = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@TCIOFLUSH = common dso_local global i32 0, align 4
@STX = common dso_local global i32 0, align 4
@SI = common dso_local global i32 0, align 4
@ETX = common dso_local global i32 0, align 4
@ABORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dialit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dialit(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vaconfig*, align 8
  %7 = alloca %struct.termios, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @sanitize(i8* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 60
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 90, i32* %3, align 4
  br label %138

25:                                               ; preds = %18, %2
  %26 = load %struct.vaconfig*, %struct.vaconfig** @vaconfig, align 8
  store %struct.vaconfig* %26, %struct.vaconfig** %6, align 8
  br label %27

27:                                               ; preds = %41, %25
  %28 = load %struct.vaconfig*, %struct.vaconfig** %6, align 8
  %29 = getelementptr inbounds %struct.vaconfig, %struct.vaconfig* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.vaconfig*, %struct.vaconfig** %6, align 8
  %34 = getelementptr inbounds %struct.vaconfig, %struct.vaconfig* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strcmp(i64 %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %44

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.vaconfig*, %struct.vaconfig** %6, align 8
  %43 = getelementptr inbounds %struct.vaconfig, %struct.vaconfig* %42, i32 1
  store %struct.vaconfig* %43, %struct.vaconfig** %6, align 8
  br label %27

44:                                               ; preds = %39, %27
  %45 = load %struct.vaconfig*, %struct.vaconfig** %6, align 8
  %46 = getelementptr inbounds %struct.vaconfig, %struct.vaconfig* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 75, i32* %3, align 4
  br label %138

52:                                               ; preds = %44
  %53 = load i32, i32* @AC, align 4
  %54 = call i32 @tcgetattr(i32 %53, %struct.termios* %7)
  %55 = load i32, i32* @B2400, align 4
  %56 = call i32 @cfsetospeed(%struct.termios* %7, i32 %55)
  %57 = load i32, i32* @B2400, align 4
  %58 = call i32 @cfsetispeed(%struct.termios* %7, i32 %57)
  %59 = load i32, i32* @PARODD, align 4
  %60 = load i32, i32* @PARENB, align 4
  %61 = or i32 %59, %60
  %62 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @ISIG, align 4
  %66 = load i32, i32* @ICANON, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @AC, align 4
  %73 = load i32, i32* @TCSANOW, align 4
  %74 = call i32 @tcsetattr(i32 %72, i32 %73, %struct.termios* %7)
  %75 = load i32, i32* @AC, align 4
  %76 = load i32, i32* @TCIOFLUSH, align 4
  %77 = call i32 @tcflush(i32 %75, i32 %76)
  %78 = load i32, i32* @STX, align 4
  %79 = call i32 @pc(i32 %78)
  %80 = load %struct.vaconfig*, %struct.vaconfig** %6, align 8
  %81 = getelementptr inbounds %struct.vaconfig, %struct.vaconfig* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pc(i32 %82)
  %84 = load %struct.vaconfig*, %struct.vaconfig** %6, align 8
  %85 = getelementptr inbounds %struct.vaconfig, %struct.vaconfig* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @pc(i32 %86)
  br label %88

88:                                               ; preds = %100, %52
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 60
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ false, %88 ], [ %97, %93 ]
  br i1 %99, label %100, label %106

100:                                              ; preds = %98
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  %103 = load i8, i8* %101, align 1
  %104 = sext i8 %103 to i32
  %105 = call i32 @pc(i32 %104)
  br label %88

106:                                              ; preds = %98
  %107 = load i32, i32* @SI, align 4
  %108 = call i32 @pc(i32 %107)
  %109 = load i32, i32* @ETX, align 4
  %110 = call i32 @pc(i32 %109)
  %111 = call i32 @sleep(i32 1)
  %112 = load i32, i32* @AC, align 4
  %113 = call i32 @read(i32 %112, i8* %8, i32 1)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i8 77, i8* %8, align 1
  br label %117

117:                                              ; preds = %116, %106
  %118 = load i8, i8* %8, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 66
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8, i8* %8, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 71
  br i1 %124, label %125, label %133

125:                                              ; preds = %121, %117
  %126 = load i8, i8* %8, align 1
  store i8 %126, i8* %11, align 1
  %127 = load i32, i32* @ABORT, align 4
  %128 = call i32 @pc(i32 %127)
  %129 = load i32, i32* @AC, align 4
  %130 = call i32 @read(i32 %129, i8* %10, i32 1)
  %131 = load i8, i8* %11, align 1
  store i8 %131, i8* %8, align 1
  %132 = call i32 (...) @v831_disconnect()
  br label %133

133:                                              ; preds = %125, %121
  %134 = load i32, i32* @AC, align 4
  %135 = call i32 @close(i32 %134)
  %136 = load i8, i8* %8, align 1
  %137 = sext i8 %136 to i32
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %49, %24
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i8* @sanitize(i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @cfsetospeed(%struct.termios*, i32) #1

declare dso_local i32 @cfsetispeed(%struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @pc(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @v831_disconnect(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
