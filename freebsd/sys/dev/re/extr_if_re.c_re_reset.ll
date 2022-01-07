; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RL_COMMAND = common dso_local global i32 0, align 4
@RL_CMD_RESET = common dso_local global i32 0, align 4
@RL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset never completed!\0A\00", align 1
@RL_FLAG_MACRESET = common dso_local global i32 0, align 4
@RL_HWREV_8169S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @re_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_reset(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %4 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %5 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %4)
  %6 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %7 = load i32, i32* @RL_COMMAND, align 4
  %8 = load i32, i32* @RL_CMD_RESET, align 4
  %9 = call i32 @CSR_WRITE_1(%struct.rl_softc* %6, i32 %7, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RL_TIMEOUT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = call i32 @DELAY(i32 10)
  %16 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %17 = load i32, i32* @RL_COMMAND, align 4
  %18 = call i32 @CSR_READ_1(%struct.rl_softc* %16, i32 %17)
  %19 = load i32, i32* @RL_CMD_RESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %10

27:                                               ; preds = %22, %10
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @RL_TIMEOUT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %33 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %38 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RL_FLAG_MACRESET, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %45 = call i32 @CSR_WRITE_1(%struct.rl_softc* %44, i32 130, i32 1)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %48 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RL_HWREV_8169S, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @re_gmii_writereg(i32 %57, i32 1, i32 11, i32 0)
  br label %59

59:                                               ; preds = %54, %46
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @re_gmii_writereg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
