; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_screamer_set_outputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_screamer_set_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davbus_softc = type { i32, i32 }

@SCREAMER_MUTE_SPEAKER = common dso_local global i32 0, align 4
@SCREAMER_MUTE_HEADPHONES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Enabled outputs: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SPEAKER \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"HEADPHONES \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Enabling programmable output.\0A\00", align 1
@SCREAMER_PROG_OUTPUT0 = common dso_local global i32 0, align 4
@SCREAMER_PROG_OUTPUT1 = common dso_local global i32 0, align 4
@SCREAMER_CODEC_ADDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davbus_softc*, i32)* @screamer_set_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screamer_set_outputs(%struct.davbus_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.davbus_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.davbus_softc* %0, %struct.davbus_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %8 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %83

12:                                               ; preds = %2
  %13 = load i32, i32* @SCREAMER_MUTE_SPEAKER, align 4
  %14 = load i32, i32* @SCREAMER_MUTE_HEADPHONES, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @SCREAMER_MUTE_SPEAKER, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %12
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @SCREAMER_MUTE_HEADPHONES, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %39 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %44 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 11
  br i1 %46, label %47, label %52

47:                                               ; preds = %42, %36
  %48 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @SCREAMER_PROG_OUTPUT0, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %54 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %59 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 11
  br i1 %61, label %62, label %75

62:                                               ; preds = %57, %52
  %63 = load i32, i32* @SCREAMER_MUTE_SPEAKER, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @SCREAMER_PROG_OUTPUT1, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %62
  br label %75

75:                                               ; preds = %74, %57
  %76 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %77 = load i32, i32* @SCREAMER_CODEC_ADDR1, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @screamer_write_locked(%struct.davbus_softc* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %82 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %11
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @screamer_write_locked(%struct.davbus_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
