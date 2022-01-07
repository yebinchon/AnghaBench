; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_release_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_release_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_softc = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"%s: %s releasing unowned bus.\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: %s don't own the bus. %s does. game over.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ow_release_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ow_release_bus(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ow_softc*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.ow_softc* @device_get_softc(i32* %6)
  store %struct.ow_softc* %7, %struct.ow_softc** %5, align 8
  %8 = load %struct.ow_softc*, %struct.ow_softc** %5, align 8
  %9 = call i32 @OW_ASSERT_UNLOCKED(%struct.ow_softc* %8)
  %10 = load %struct.ow_softc*, %struct.ow_softc** %5, align 8
  %11 = call i32 @OW_LOCK(%struct.ow_softc* %10)
  %12 = load %struct.ow_softc*, %struct.ow_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ow_softc, %struct.ow_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @device_get_nameunit(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @device_get_nameunit(i32* %19)
  %21 = call i32 (i8*, i32, i32, ...) @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.ow_softc*, %struct.ow_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ow_softc, %struct.ow_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @device_get_nameunit(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @device_get_nameunit(i32* %31)
  %33 = load %struct.ow_softc*, %struct.ow_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ow_softc, %struct.ow_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @device_get_nameunit(i32* %35)
  %37 = call i32 (i8*, i32, i32, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %28, %22
  %39 = load %struct.ow_softc*, %struct.ow_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ow_softc, %struct.ow_softc* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.ow_softc*, %struct.ow_softc** %5, align 8
  %42 = call i32 @wakeup(%struct.ow_softc* %41)
  %43 = load %struct.ow_softc*, %struct.ow_softc** %5, align 8
  %44 = call i32 @OW_UNLOCK(%struct.ow_softc* %43)
  ret void
}

declare dso_local %struct.ow_softc* @device_get_softc(i32*) #1

declare dso_local i32 @OW_ASSERT_UNLOCKED(%struct.ow_softc*) #1

declare dso_local i32 @OW_LOCK(%struct.ow_softc*) #1

declare dso_local i32 @panic(i8*, i32, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @wakeup(%struct.ow_softc*) #1

declare dso_local i32 @OW_UNLOCK(%struct.ow_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
