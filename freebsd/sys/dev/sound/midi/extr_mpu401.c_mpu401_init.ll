; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_mpu401.c_mpu401_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu401 = type { i32, i64, i8*, i32, i32 }

@M_MIDI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@mpu401_class = common dso_local global i32 0, align 4
@mpu401_intr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"mpu401_init error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpu401* @mpu401_init(i32 %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.mpu401*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.mpu401*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %11 = load i32**, i32*** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @M_MIDI, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.mpu401* @malloc(i32 32, i32 %12, i32 %15)
  store %struct.mpu401* %16, %struct.mpu401** %10, align 8
  %17 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %18 = icmp ne %struct.mpu401* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.mpu401* null, %struct.mpu401** %5, align 8
  br label %54

20:                                               ; preds = %4
  %21 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %22 = ptrtoint %struct.mpu401* %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @kobj_init(i32 %22, i32 %23)
  %25 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %26 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %25, i32 0, i32 4
  %27 = call i32 @callout_init(i32* %26, i32 1)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %30 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %33 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %35 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %37 = call i32 @midi_init(i32* @mpu401_class, i32 0, i32 0, %struct.mpu401* %36)
  %38 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %39 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %41 = getelementptr inbounds %struct.mpu401, %struct.mpu401* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %20
  br label %49

45:                                               ; preds = %20
  %46 = load i32*, i32** @mpu401_intr, align 8
  %47 = load i32**, i32*** %9, align 8
  store i32* %46, i32** %47, align 8
  %48 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  store %struct.mpu401* %48, %struct.mpu401** %5, align 8
  br label %54

49:                                               ; preds = %44
  %50 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.mpu401*, %struct.mpu401** %10, align 8
  %52 = load i32, i32* @M_MIDI, align 4
  %53 = call i32 @free(%struct.mpu401* %51, i32 %52)
  store %struct.mpu401* null, %struct.mpu401** %5, align 8
  br label %54

54:                                               ; preds = %49, %45, %19
  %55 = load %struct.mpu401*, %struct.mpu401** %5, align 8
  ret %struct.mpu401* %55
}

declare dso_local %struct.mpu401* @malloc(i32, i32, i32) #1

declare dso_local i32 @kobj_init(i32, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @midi_init(i32*, i32, i32, %struct.mpu401*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(%struct.mpu401*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
