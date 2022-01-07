; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { %struct.sbni_softc* }

@CSR0 = common dso_local global i32 0, align 4
@RC_RDY = common dso_local global i32 0, align 4
@TR_RDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbni_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sbni_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sbni_softc*
  store %struct.sbni_softc* %6, %struct.sbni_softc** %3, align 8
  br label %7

7:                                                ; preds = %54, %1
  store i32 0, i32* %4, align 4
  %8 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %9 = call i32 @SBNI_LOCK(%struct.sbni_softc* %8)
  %10 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %11 = load i32, i32* @CSR0, align 4
  %12 = call i32 @sbni_inb(%struct.sbni_softc* %10, i32 %11)
  %13 = load i32, i32* @RC_RDY, align 4
  %14 = load i32, i32* @TR_RDY, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %20 = call i32 @handle_channel(%struct.sbni_softc* %19)
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %7
  %22 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %23 = call i32 @SBNI_UNLOCK(%struct.sbni_softc* %22)
  %24 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %25 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %24, i32 0, i32 0
  %26 = load %struct.sbni_softc*, %struct.sbni_softc** %25, align 8
  %27 = icmp ne %struct.sbni_softc* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %21
  %29 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %30 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %29, i32 0, i32 0
  %31 = load %struct.sbni_softc*, %struct.sbni_softc** %30, align 8
  %32 = call i32 @SBNI_LOCK(%struct.sbni_softc* %31)
  %33 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %34 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %33, i32 0, i32 0
  %35 = load %struct.sbni_softc*, %struct.sbni_softc** %34, align 8
  %36 = load i32, i32* @CSR0, align 4
  %37 = call i32 @sbni_inb(%struct.sbni_softc* %35, i32 %36)
  %38 = load i32, i32* @RC_RDY, align 4
  %39 = load i32, i32* @TR_RDY, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %45 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %44, i32 0, i32 0
  %46 = load %struct.sbni_softc*, %struct.sbni_softc** %45, align 8
  %47 = call i32 @handle_channel(%struct.sbni_softc* %46)
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %28
  %49 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %50 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %49, i32 0, i32 0
  %51 = load %struct.sbni_softc*, %struct.sbni_softc** %50, align 8
  %52 = call i32 @SBNI_UNLOCK(%struct.sbni_softc* %51)
  br label %53

53:                                               ; preds = %48, %21
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %7, label %57

57:                                               ; preds = %54
  ret void
}

declare dso_local i32 @SBNI_LOCK(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @handle_channel(%struct.sbni_softc*) #1

declare dso_local i32 @SBNI_UNLOCK(%struct.sbni_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
