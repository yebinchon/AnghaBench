; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_quartz_poll_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_quartz_poll_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_command = type { i64, i32, i32, i32, i32, i32, %struct.amr_softc* }
%struct.amr_softc = type { i32, i32 }

@amr_setup_polled_dmamap = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_command*)* @amr_quartz_poll_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_quartz_poll_command(%struct.amr_command* %0) #0 {
  %2 = alloca %struct.amr_command*, align 8
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.amr_command* %0, %struct.amr_command** %2, align 8
  %5 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %6 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %5, i32 0, i32 6
  %7 = load %struct.amr_softc*, %struct.amr_softc** %6, align 8
  store %struct.amr_softc* %7, %struct.amr_softc** %3, align 8
  %8 = call i32 @debug_called(i32 2)
  store i32 0, i32* %4, align 4
  %9 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %10 = call i64 @AC_IS_SG64(%struct.amr_command* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %14 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %17 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %19 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %22 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %25 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %28 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %30 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %33 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %12
  %35 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %36 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %41 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %44 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %47 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %50 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @amr_setup_polled_dmamap, align 4
  %53 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %54 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %55 = call i64 @bus_dmamap_load(i32 %42, i32 %45, i64 %48, i32 %51, i32 %52, %struct.amr_command* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %39
  br label %63

59:                                               ; preds = %34
  %60 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %61 = load %struct.amr_command*, %struct.amr_command** %2, align 8
  %62 = call i32 @amr_quartz_poll_command1(%struct.amr_softc* %60, %struct.amr_command* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @AC_IS_SG64(%struct.amr_command*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i64, i32, i32, %struct.amr_command*, i32) #1

declare dso_local i32 @amr_quartz_poll_command1(%struct.amr_softc*, %struct.amr_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
