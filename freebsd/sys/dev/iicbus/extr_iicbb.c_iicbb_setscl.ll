; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_setscl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbb_softc = type { i32, i64 }

@SBT_1US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"iicbb-scl-low\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @iicbb_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iicbb_setscl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iicbb_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.iicbb_softc* @device_get_softc(i32 %9)
  store %struct.iicbb_softc* %10, %struct.iicbb_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @I2C_SETSCL(i32 %11, i32 %12)
  %14 = load %struct.iicbb_softc*, %struct.iicbb_softc** %5, align 8
  %15 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @DELAY(i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %72

21:                                               ; preds = %2
  %22 = call i64 (...) @sbinuptime()
  %23 = load %struct.iicbb_softc*, %struct.iicbb_softc** %5, align 8
  %24 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SBT_1US, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %22, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct.iicbb_softc*, %struct.iicbb_softc** %5, align 8
  %31 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MIN(i32 %32, i32 1000)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %42, %21
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @I2C_GETSCL(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %72

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @I2C_SETSCL(i32 %43, i32 1)
  %45 = load %struct.iicbb_softc*, %struct.iicbb_softc** %5, align 8
  %46 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @DELAY(i64 %47)
  %49 = load %struct.iicbb_softc*, %struct.iicbb_softc** %5, align 8
  %50 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  br label %34

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %68, %56
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @I2C_GETSCL(i32 %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = call i64 (...) @sbinuptime()
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @SBT_1MS, align 4
  %70 = call i32 @C_PREL(i32 8)
  %71 = call i32 @pause_sbt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 0)
  br label %57

72:                                               ; preds = %20, %41, %67, %57
  ret void
}

declare dso_local %struct.iicbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @I2C_SETSCL(i32, i32) #1

declare dso_local i32 @DELAY(i64) #1

declare dso_local i64 @sbinuptime(...) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @I2C_GETSCL(i32) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @C_PREL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
