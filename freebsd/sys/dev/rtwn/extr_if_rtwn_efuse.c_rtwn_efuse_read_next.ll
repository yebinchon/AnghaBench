; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_efuse_read_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_efuse_read_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@R92C_EFUSE_CTRL = common dso_local global i32 0, align 4
@R92C_EFUSE_CTRL_ADDR = common dso_local global i32 0, align 4
@R92C_EFUSE_CTRL_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not read efuse byte at address 0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@R92C_EFUSE_CTRL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtwn_efuse_read_next(%struct.rtwn_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %10 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %13 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EFAULT, align 4
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %20 = load i32, i32* @R92C_EFUSE_CTRL, align 4
  %21 = call i32 @rtwn_read_4(%struct.rtwn_softc* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @R92C_EFUSE_CTRL_ADDR, align 4
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %25 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @RW(i32 %22, i32 %23, i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @R92C_EFUSE_CTRL_VALID, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %33 = load i32, i32* @R92C_EFUSE_CTRL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @rtwn_write_4(%struct.rtwn_softc* %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %18
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %80

40:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 100
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %46 = load i32, i32* @R92C_EFUSE_CTRL, align 4
  %47 = call i32 @rtwn_read_4(%struct.rtwn_softc* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @R92C_EFUSE_CTRL_VALID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %59

53:                                               ; preds = %44
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %55 = call i32 @rtwn_delay(%struct.rtwn_softc* %54, i32 10)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %41

59:                                               ; preds = %52, %41
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 100
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %64 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %67 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %70, i32* %3, align 4
  br label %80

71:                                               ; preds = %59
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @R92C_EFUSE_CTRL_DATA, align 4
  %74 = call i32 @MS(i32 %72, i32 %73)
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %77 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %71, %62, %38, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @RW(i32, i32, i64) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
