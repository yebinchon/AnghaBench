; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_interrupt.c_isci_interrupt_legacy_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_interrupt.c_isci_interrupt_legacy_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_INTERRUPT_INFO = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32)*, i64 (i32)* }
%struct.isci_softc = type { i32, %struct.ISCI_CONTROLLER* }
%struct.ISCI_CONTROLLER = type { i64, i64, i32, i32 }

@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_interrupt_legacy_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ISCI_INTERRUPT_INFO*, align 8
  %4 = alloca %struct.isci_softc*, align 8
  %5 = alloca i64 (i32)*, align 8
  %6 = alloca i32 (i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ISCI_CONTROLLER*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.ISCI_INTERRUPT_INFO*
  store %struct.ISCI_INTERRUPT_INFO* %11, %struct.ISCI_INTERRUPT_INFO** %3, align 8
  %12 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %3, align 8
  %13 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.isci_softc*
  store %struct.isci_softc* %15, %struct.isci_softc** %4, align 8
  %16 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %3, align 8
  %17 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64 (i32)*, i64 (i32)** %19, align 8
  store i64 (i32)* %20, i64 (i32)** %5, align 8
  %21 = load %struct.ISCI_INTERRUPT_INFO*, %struct.ISCI_INTERRUPT_INFO** %3, align 8
  %22 = getelementptr inbounds %struct.ISCI_INTERRUPT_INFO, %struct.ISCI_INTERRUPT_INFO* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  store i32 (i32)* %25, i32 (i32)** %6, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %74, %1
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.isci_softc*, %struct.isci_softc** %4, align 8
  %29 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = load %struct.isci_softc*, %struct.isci_softc** %4, align 8
  %34 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %33, i32 0, i32 1
  %35 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %35, i64 %37
  store %struct.ISCI_CONTROLLER* %38, %struct.ISCI_CONTROLLER** %8, align 8
  %39 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %40 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TRUE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %32
  %45 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %46 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @scif_controller_get_scic_handle(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i64 (i32)*, i64 (i32)** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 %49(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %44
  %54 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %55 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %54, i32 0, i32 2
  %56 = call i32 @mtx_lock(i32* %55)
  %57 = load i32 (i32)*, i32 (i32)** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 %57(i32 %58)
  %60 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %61 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TRUE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %67 = call i32 @isci_controller_release_queued_ccbs(%struct.ISCI_CONTROLLER* %66)
  br label %68

68:                                               ; preds = %65, %53
  %69 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %70 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %69, i32 0, i32 2
  %71 = call i32 @mtx_unlock(i32* %70)
  br label %72

72:                                               ; preds = %68, %44
  br label %73

73:                                               ; preds = %72, %32
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %26

77:                                               ; preds = %26
  ret void
}

declare dso_local i32 @scif_controller_get_scic_handle(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @isci_controller_release_queued_ccbs(%struct.ISCI_CONTROLLER*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
