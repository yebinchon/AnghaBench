; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_intr_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_intr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schizo_softc = type { i32, i32 }
%struct.schizo_icarg = type { i8*, i8*, %struct.schizo_softc* }

@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@schizo_ic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.schizo_softc*, i32)* @schizo_intr_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_intr_register(%struct.schizo_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.schizo_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.schizo_icarg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.schizo_softc* %0, %struct.schizo_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.schizo_softc*, %struct.schizo_softc** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @schizo_get_intrmap(%struct.schizo_softc* %10, i32 %11, i8** %8, i8** %7)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = call %struct.schizo_icarg* @malloc(i32 24, i32 %17, i32 %18)
  store %struct.schizo_icarg* %19, %struct.schizo_icarg** %6, align 8
  %20 = load %struct.schizo_icarg*, %struct.schizo_icarg** %6, align 8
  %21 = icmp eq %struct.schizo_icarg* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %16
  %25 = load %struct.schizo_softc*, %struct.schizo_softc** %4, align 8
  %26 = load %struct.schizo_icarg*, %struct.schizo_icarg** %6, align 8
  %27 = getelementptr inbounds %struct.schizo_icarg, %struct.schizo_icarg* %26, i32 0, i32 2
  store %struct.schizo_softc* %25, %struct.schizo_softc** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.schizo_icarg*, %struct.schizo_icarg** %6, align 8
  %30 = getelementptr inbounds %struct.schizo_icarg, %struct.schizo_icarg* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.schizo_icarg*, %struct.schizo_icarg** %6, align 8
  %33 = getelementptr inbounds %struct.schizo_icarg, %struct.schizo_icarg* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.schizo_softc*, %struct.schizo_softc** %4, align 8
  %35 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @INTMAP_VEC(i32 %36, i32 %37)
  %39 = load %struct.schizo_icarg*, %struct.schizo_icarg** %6, align 8
  %40 = call i32 @intr_controller_register(i32 %38, i32* @schizo_ic, %struct.schizo_icarg* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load %struct.schizo_icarg*, %struct.schizo_icarg** %6, align 8
  %45 = load i32, i32* @M_DEVBUF, align 4
  %46 = call i32 @free(%struct.schizo_icarg* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %24
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %22, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @schizo_get_intrmap(%struct.schizo_softc*, i32, i8**, i8**) #1

declare dso_local %struct.schizo_icarg* @malloc(i32, i32, i32) #1

declare dso_local i32 @intr_controller_register(i32, i32*, %struct.schizo_icarg*) #1

declare dso_local i32 @INTMAP_VEC(i32, i32) #1

declare dso_local i32 @free(%struct.schizo_icarg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
