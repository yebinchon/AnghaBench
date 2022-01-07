; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_intr_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_intr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_softc = type { i32 }
%struct.fire_icarg = type { i8*, i8*, %struct.fire_softc* }

@ENXIO = common dso_local global i32 0, align 4
@FO_EQ_FIRST_INO = common dso_local global i64 0, align 8
@FO_EQ_LAST_INO = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fire_ic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fire_softc*, i64)* @fire_intr_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_intr_register(%struct.fire_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fire_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fire_icarg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.fire_softc* %0, %struct.fire_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @fire_get_intrmap(%struct.fire_softc* %10, i64 %11, i8** %8, i8** %7)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @FO_EQ_FIRST_INO, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @FO_EQ_LAST_INO, align 8
  %23 = icmp sle i64 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i64 4, i64 24
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.fire_icarg* @malloc(i32 %28, i32 %29, i32 %32)
  store %struct.fire_icarg* %33, %struct.fire_icarg** %6, align 8
  %34 = load %struct.fire_icarg*, %struct.fire_icarg** %6, align 8
  %35 = icmp eq %struct.fire_icarg* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %24
  %39 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %40 = load %struct.fire_icarg*, %struct.fire_icarg** %6, align 8
  %41 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %40, i32 0, i32 2
  store %struct.fire_softc* %39, %struct.fire_softc** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.fire_icarg*, %struct.fire_icarg** %6, align 8
  %44 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.fire_icarg*, %struct.fire_icarg** %6, align 8
  %47 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.fire_softc*, %struct.fire_softc** %4, align 8
  %49 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @INTMAP_VEC(i32 %50, i64 %51)
  %53 = load %struct.fire_icarg*, %struct.fire_icarg** %6, align 8
  %54 = call i32 @intr_controller_register(i32 %52, i32* @fire_ic, %struct.fire_icarg* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %38
  %58 = load %struct.fire_icarg*, %struct.fire_icarg** %6, align 8
  %59 = load i32, i32* @M_DEVBUF, align 4
  %60 = call i32 @free(%struct.fire_icarg* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %38
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %36, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @fire_get_intrmap(%struct.fire_softc*, i64, i8**, i8**) #1

declare dso_local %struct.fire_icarg* @malloc(i32, i32, i32) #1

declare dso_local i32 @intr_controller_register(i32, i32*, %struct.fire_icarg*) #1

declare dso_local i32 @INTMAP_VEC(i32, i64) #1

declare dso_local i32 @free(%struct.fire_icarg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
