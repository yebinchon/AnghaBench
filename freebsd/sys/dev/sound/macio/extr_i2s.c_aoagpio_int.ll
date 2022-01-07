; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_aoagpio_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_aoagpio_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoagpio_softc = type { i32, i32, i64 }

@GPIO_LEVEL_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aoagpio_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoagpio_int(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.aoagpio_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.aoagpio_softc* @device_get_softc(i8* %6)
  store %struct.aoagpio_softc* %7, %struct.aoagpio_softc** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @macgpio_read(i8* %8)
  %10 = load i32, i32* @GPIO_LEVEL_RO, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %4, align 8
  %15 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %4, align 8
  %21 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %4, align 8
  %27 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %19, %13
  %29 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %4, align 8
  %30 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %4, align 8
  %35 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @i2s_cint(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  ret void
}

declare dso_local %struct.aoagpio_softc* @device_get_softc(i8*) #1

declare dso_local i32 @macgpio_read(i8*) #1

declare dso_local i32 @i2s_cint(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
