; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_immediate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_immediate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_command = type { i32, %struct.mly_softc* }
%struct.mly_softc = type { i32, i32 }

@MLY_STATE_INTERRUPTS_ON = common dso_local global i32 0, align 4
@MLY_CMD_COMPLETE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mlywait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_command*)* @mly_immediate_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_immediate_command(%struct.mly_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_command*, align 8
  %4 = alloca %struct.mly_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.mly_command* %0, %struct.mly_command** %3, align 8
  %6 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %7 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %6, i32 0, i32 1
  %8 = load %struct.mly_softc*, %struct.mly_softc** %7, align 8
  store %struct.mly_softc* %8, %struct.mly_softc** %4, align 8
  %9 = call i32 @debug_called(i32 1)
  %10 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %11 = call i32 @MLY_ASSERT_LOCKED(%struct.mly_softc* %10)
  %12 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %13 = call i32 @mly_start(%struct.mly_command* %12)
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %1
  %18 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLY_STATE_INTERRUPTS_ON, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %33, %24
  %26 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %27 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MLY_CMD_COMPLETE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %35 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %35, i32 0, i32 1
  %37 = load i32, i32* @PRIBIO, align 4
  %38 = call i32 @mtx_sleep(%struct.mly_command* %34, i32* %36, i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %25

39:                                               ; preds = %25
  br label %55

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %49, %40
  %42 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %43 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MLY_CMD_COMPLETE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %51 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %50, i32 0, i32 1
  %52 = load %struct.mly_softc*, %struct.mly_softc** %51, align 8
  %53 = call i32 @mly_done(%struct.mly_softc* %52)
  br label %41

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %39
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_ASSERT_LOCKED(%struct.mly_softc*) #1

declare dso_local i32 @mly_start(%struct.mly_command*) #1

declare dso_local i32 @mtx_sleep(%struct.mly_command*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mly_done(%struct.mly_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
