; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ttydevice = type { i32 }
%struct.termios = type { i32 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: Entering tty_Raw\0A\00", align 1
@PHYS_DIRECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Raw: descriptor = %d, mbits = %x\0A\00", align 1
@CLOCAL = common dso_local global i32 0, align 4
@CCTS_OFLOW = common dso_local global i32 0, align 4
@CRTS_IFLOW = common dso_local global i32 0, align 4
@PHYS_DEDICATED = common dso_local global i64 0, align 8
@HUPCL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: tcsetattr: Failed configuring device\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*)* @tty_Raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_Raw(%struct.physical* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.ttydevice*, align 8
  %5 = alloca %struct.termios, align 4
  %6 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %3, align 8
  %7 = load %struct.physical*, %struct.physical** %3, align 8
  %8 = getelementptr inbounds %struct.physical, %struct.physical* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ttydevice* @device2tty(i32 %9)
  store %struct.ttydevice* %10, %struct.ttydevice** %4, align 8
  %11 = load i32, i32* @LogDEBUG, align 4
  %12 = load %struct.physical*, %struct.physical** %3, align 8
  %13 = getelementptr inbounds %struct.physical, %struct.physical* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.physical*, %struct.physical** %3, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PHYS_DIRECT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.physical*, %struct.physical** %3, align 8
  %24 = getelementptr inbounds %struct.physical, %struct.physical* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %29 = call i32 @Online(%struct.ttydevice* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @LogDEBUG, align 4
  %33 = load %struct.physical*, %struct.physical** %3, align 8
  %34 = getelementptr inbounds %struct.physical, %struct.physical* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.physical*, %struct.physical** %3, align 8
  %38 = getelementptr inbounds %struct.physical, %struct.physical* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %41 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %31, %27, %22, %1
  %45 = load %struct.physical*, %struct.physical** %3, align 8
  %46 = call i32 @physical_IsSync(%struct.physical* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %104, label %48

48:                                               ; preds = %44
  %49 = load %struct.physical*, %struct.physical** %3, align 8
  %50 = call i32 @LoadLineDiscipline(%struct.physical* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %103, label %52

52:                                               ; preds = %48
  %53 = load %struct.physical*, %struct.physical** %3, align 8
  %54 = getelementptr inbounds %struct.physical, %struct.physical* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @tcgetattr(i64 %55, %struct.termios* %5)
  %57 = call i32 @cfmakeraw(%struct.termios* %5)
  %58 = load %struct.physical*, %struct.physical** %3, align 8
  %59 = getelementptr inbounds %struct.physical, %struct.physical* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  %64 = load i32, i32* @CLOCAL, align 4
  %65 = load i32, i32* @CCTS_OFLOW, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CRTS_IFLOW, align 4
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %77

72:                                               ; preds = %52
  %73 = load i32, i32* @CLOCAL, align 4
  %74 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %63
  %78 = load %struct.physical*, %struct.physical** %3, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PHYS_DEDICATED, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i32, i32* @HUPCL, align 4
  %85 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %77
  %89 = load %struct.physical*, %struct.physical** %3, align 8
  %90 = getelementptr inbounds %struct.physical, %struct.physical* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @TCSANOW, align 4
  %93 = call i32 @tcsetattr(i64 %91, i32 %92, %struct.termios* %5)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i32, i32* @LogWARN, align 4
  %97 = load %struct.physical*, %struct.physical** %3, align 8
  %98 = getelementptr inbounds %struct.physical, %struct.physical* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %95, %88
  br label %103

103:                                              ; preds = %102, %48
  br label %104

104:                                              ; preds = %103, %44
  %105 = load %struct.physical*, %struct.physical** %3, align 8
  %106 = getelementptr inbounds %struct.physical, %struct.physical* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @F_GETFL, align 4
  %109 = call i32 @fcntl(i64 %107, i32 %108, i32 0)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %122

113:                                              ; preds = %104
  %114 = load %struct.physical*, %struct.physical** %3, align 8
  %115 = getelementptr inbounds %struct.physical, %struct.physical* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @F_SETFL, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @O_NONBLOCK, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @fcntl(i64 %116, i32 %117, i32 %120)
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %113, %112
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @Online(%struct.ttydevice*) #1

declare dso_local i32 @physical_IsSync(%struct.physical*) #1

declare dso_local i32 @LoadLineDiscipline(%struct.physical*) #1

declare dso_local i32 @tcgetattr(i64, %struct.termios*) #1

declare dso_local i32 @cfmakeraw(%struct.termios*) #1

declare dso_local i32 @tcsetattr(i64, i32, %struct.termios*) #1

declare dso_local i32 @fcntl(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
