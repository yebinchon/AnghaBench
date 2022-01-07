; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_pci.c_mfi_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_pci.c_mfi_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32, i32, i32, i32 }

@MFI_FLAGS_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mfi_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.mfi_softc* @device_get_softc(i32 %9)
  store %struct.mfi_softc* %10, %struct.mfi_softc** %4, align 8
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %11, i32 0, i32 3
  %13 = call i32 @sx_xlock(i32* %12)
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %14, i32 0, i32 5
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MFI_FLAGS_OPEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %24, i32 0, i32 5
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %27, i32 0, i32 3
  %29 = call i32 @sx_xunlock(i32* %28)
  %30 = load i32, i32* @EBUSY, align 4
  store i32 %30, i32* %2, align 4
  br label %83

31:                                               ; preds = %1
  %32 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %34, i32 0, i32 5
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_get_children(i32 %39, i32** %8, i32* %6)
  store i32 %40, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %44 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %43, i32 0, i32 3
  %45 = call i32 @sx_xunlock(i32* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %54 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @device_delete_child(i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* @M_TEMP, align 4
  %68 = call i32 @free(i32* %66, i32 %67)
  %69 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %69, i32 0, i32 3
  %71 = call i32 @sx_xunlock(i32* %70)
  %72 = load i32, i32* @shutdown_final, align 4
  %73 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %74 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @EVENTHANDLER_DEREGISTER(i32 %72, i32 %75)
  %77 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %78 = call i32 @mfi_shutdown(%struct.mfi_softc* %77)
  %79 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %80 = call i32 @mfi_free(%struct.mfi_softc* %79)
  %81 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %82 = call i32 @mfi_pci_free(%struct.mfi_softc* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %65, %42, %23
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.mfi_softc* @device_get_softc(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @mfi_shutdown(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_free(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_pci_free(%struct.mfi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
