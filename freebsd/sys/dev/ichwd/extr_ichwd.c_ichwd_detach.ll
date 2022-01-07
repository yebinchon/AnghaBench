; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i64, i64, i32, i64, i32, i32, i64, i32, i64, i32, i32*, i64 }

@watchdog_list = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ichwd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichwd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ichwd_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ichwd_softc* @device_get_softc(i32 %4)
  store %struct.ichwd_softc* %5, %struct.ichwd_softc** %3, align 8
  %6 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %6, i32 0, i32 11
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %12 = call i32 @ichwd_tmr_disable(%struct.ichwd_softc* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %20 = call i32 @ichwd_smi_enable(%struct.ichwd_softc* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %22, i32 0, i32 10
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @watchdog_list, align 4
  %28 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %28, i32 0, i32 10
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @EVENTHANDLER_DEREGISTER(i32 %27, i32* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %33, i32 0, i32 10
  store i32* null, i32** %34, align 8
  %35 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %36 = call i32 @ichwd_sts_reset(%struct.ichwd_softc* %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SYS_RES_IOPORT, align 4
  %39 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bus_release_resource(i32 %37, i32 %38, i32 %41, i64 %44)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SYS_RES_IOPORT, align 4
  %48 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %50, i64 %53)
  %55 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %32
  %60 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SYS_RES_MEMORY, align 4
  %64 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 %66, i64 %69)
  br label %71

71:                                               ; preds = %59, %32
  %72 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @SYS_RES_MEMORY, align 4
  %79 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ichwd_softc*, %struct.ichwd_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @bus_release_resource(i32 %77, i32 %78, i32 %81, i64 %84)
  br label %86

86:                                               ; preds = %76, %71
  ret i32 0
}

declare dso_local %struct.ichwd_softc* @device_get_softc(i32) #1

declare dso_local i32 @ichwd_tmr_disable(%struct.ichwd_softc*) #1

declare dso_local i32 @ichwd_smi_enable(%struct.ichwd_softc*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @ichwd_sts_reset(%struct.ichwd_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
