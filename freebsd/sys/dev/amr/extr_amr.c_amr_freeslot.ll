; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_freeslot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_freeslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_command = type { i32, %struct.amr_softc* }
%struct.amr_softc = type { i32, i32** }

@.str = private unnamed_addr constant [24 x i8] c"amr: slot %d not busy?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_command*)* @amr_freeslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_freeslot(%struct.amr_command* %0) #0 {
  %2 = alloca %struct.amr_command*, align 8
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.amr_command* %0, %struct.amr_command** %2, align 8
  %5 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %6 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %5, i32 0, i32 1
  %7 = load %struct.amr_softc*, %struct.amr_softc** %6, align 8
  store %struct.amr_softc* %7, %struct.amr_softc** %3, align 8
  %8 = call i32 @debug_called(i32 3)
  %9 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %10 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %13 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %25 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  store i32* null, i32** %29, align 8
  %30 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %31 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %30, i32 0, i32 0
  %32 = call i32 @atomic_subtract_int(i32* %31, i32 1)
  ret i32 0
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
