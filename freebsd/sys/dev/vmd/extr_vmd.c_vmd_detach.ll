; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmd_softc = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmd_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.vmd_softc* @device_get_softc(i32 %6)
  store %struct.vmd_softc* %7, %struct.vmd_softc** %4, align 8
  %8 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %9 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %14 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bus_generic_detach(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %24 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @device_delete_child(i32 %22, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %34 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %41 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @rman_fini(%struct.TYPE_4__* %42)
  br label %44

44:                                               ; preds = %39, %32
  %45 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %46 = call i32 @vmd_free(%struct.vmd_softc* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %29, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.vmd_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @rman_fini(%struct.TYPE_4__*) #1

declare dso_local i32 @vmd_free(%struct.vmd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
