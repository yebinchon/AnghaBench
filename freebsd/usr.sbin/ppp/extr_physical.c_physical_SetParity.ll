; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_SetParity.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_SetParity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.termios = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: %s: Invalid parity\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_SetParity(%struct.physical* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.termios, align 4
  %7 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @GetParityValue(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.physical*, %struct.physical** %4, align 8
  %15 = getelementptr inbounds %struct.physical, %struct.physical* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.physical*, %struct.physical** %4, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %12
  %22 = load %struct.physical*, %struct.physical** %4, align 8
  %23 = getelementptr inbounds %struct.physical, %struct.physical* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @tcgetattr(i64 %24, %struct.termios* %6)
  %26 = load i32, i32* @CSIZE, align 4
  %27 = load i32, i32* @PARODD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PARENB, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load %struct.physical*, %struct.physical** %4, align 8
  %40 = getelementptr inbounds %struct.physical, %struct.physical* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @TCSADRAIN, align 4
  %43 = call i32 @tcsetattr(i64 %41, i32 %42, %struct.termios* %6)
  br label %44

44:                                               ; preds = %21, %12
  store i32 0, i32* %3, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load i32, i32* @LogWARN, align 4
  %47 = load %struct.physical*, %struct.physical** %4, align 8
  %48 = getelementptr inbounds %struct.physical, %struct.physical* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @log_Printf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51)
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %44
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @GetParityValue(i8*) #1

declare dso_local i32 @tcgetattr(i64, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i64, i32, %struct.termios*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
