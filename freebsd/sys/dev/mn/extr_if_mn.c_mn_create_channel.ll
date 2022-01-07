; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_create_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_create_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i8*, %struct.schan** }
%struct.schan = type { i32, i32, i32, %struct.mn_softc* }

@M_MN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn_softc*, i32)* @mn_create_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn_create_channel(%struct.mn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.schan*, align 8
  store %struct.mn_softc* %0, %struct.mn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @M_MN, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @malloc(i32 24, i32 %6, i32 %9)
  %11 = inttoptr i64 %10 to %struct.schan*
  %12 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %12, i32 0, i32 1
  %14 = load %struct.schan**, %struct.schan*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.schan*, %struct.schan** %14, i64 %16
  store %struct.schan* %11, %struct.schan** %17, align 8
  store %struct.schan* %11, %struct.schan** %5, align 8
  %18 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %19 = load %struct.schan*, %struct.schan** %5, align 8
  %20 = getelementptr inbounds %struct.schan, %struct.schan* %19, i32 0, i32 3
  store %struct.mn_softc* %18, %struct.mn_softc** %20, align 8
  %21 = load i32, i32* @DOWN, align 4
  %22 = load %struct.schan*, %struct.schan** %5, align 8
  %23 = getelementptr inbounds %struct.schan, %struct.schan* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.schan*, %struct.schan** %5, align 8
  %26 = getelementptr inbounds %struct.schan, %struct.schan* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.schan*, %struct.schan** %5, align 8
  %28 = getelementptr inbounds %struct.schan, %struct.schan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sprintf(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  ret void
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
