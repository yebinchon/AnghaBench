; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i64, i32, i32, i32* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdpm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdpm_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.amdpm_softc* @device_get_softc(i32 %4)
  store %struct.amdpm_softc* %5, %struct.amdpm_softc** %3, align 8
  %6 = load %struct.amdpm_softc*, %struct.amdpm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.amdpm_softc*, %struct.amdpm_softc** %3, align 8
  %13 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @device_delete_child(i32 %11, i32* %14)
  %16 = load %struct.amdpm_softc*, %struct.amdpm_softc** %3, align 8
  %17 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.amdpm_softc*, %struct.amdpm_softc** %3, align 8
  %20 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %19, i32 0, i32 2
  %21 = call i32 @mtx_destroy(i32* %20)
  %22 = load %struct.amdpm_softc*, %struct.amdpm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SYS_RES_IOPORT, align 4
  %29 = load %struct.amdpm_softc*, %struct.amdpm_softc** %3, align 8
  %30 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.amdpm_softc*, %struct.amdpm_softc** %3, align 8
  %33 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bus_release_resource(i32 %27, i32 %28, i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %26, %18
  ret i32 0
}

declare dso_local %struct.amdpm_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
