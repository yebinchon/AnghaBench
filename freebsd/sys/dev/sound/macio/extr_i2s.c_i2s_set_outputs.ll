; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_set_outputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_set_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_softc = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"enabled outputs: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SPEAKER \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"HEADPHONE \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LINEOUT \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @i2s_set_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_set_outputs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2s_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.i2s_softc*
  store %struct.i2s_softc* %7, %struct.i2s_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %10 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %16 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %15, i32 0, i32 1
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %19 = call i32 @i2s_mute_speaker(%struct.i2s_softc* %18, i32 1)
  %20 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %21 = call i32 @i2s_mute_headphone(%struct.i2s_softc* %20, i32 1)
  %22 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %23 = call i32 @i2s_mute_lineout(%struct.i2s_softc* %22, i32 1)
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %31 = call i32 @i2s_mute_speaker(%struct.i2s_softc* %30, i32 0)
  br label %32

32:                                               ; preds = %28, %14
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %39 = call i32 @i2s_mute_headphone(%struct.i2s_softc* %38, i32 0)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %47 = call i32 @i2s_mute_lineout(%struct.i2s_softc* %46, i32 0)
  br label %48

48:                                               ; preds = %44, %40
  %49 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %52 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.i2s_softc*, %struct.i2s_softc** %5, align 8
  %54 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %53, i32 0, i32 1
  %55 = call i32 @mtx_unlock(i32* %54)
  br label %56

56:                                               ; preds = %48, %13
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @i2s_mute_speaker(%struct.i2s_softc*, i32) #1

declare dso_local i32 @i2s_mute_headphone(%struct.i2s_softc*, i32) #1

declare dso_local i32 @i2s_mute_lineout(%struct.i2s_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
