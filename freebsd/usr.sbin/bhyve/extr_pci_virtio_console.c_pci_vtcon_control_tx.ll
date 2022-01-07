; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_control_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_control_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtcon_port = type { i32, i32, i32, %struct.pci_vtcon_softc* }
%struct.pci_vtcon_softc = type { i32, i64, %struct.pci_vtcon_port* }
%struct.iovec = type { i64 }
%struct.pci_vtcon_control = type { i32, i64, i32 }

@VTCON_MAXPORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"VTCON_PORT_READY event for unknown port %d\0A\00", align 1
@VTCON_CONSOLE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtcon_port*, i8*, %struct.iovec*, i32)* @pci_vtcon_control_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtcon_control_tx(%struct.pci_vtcon_port* %0, i8* %1, %struct.iovec* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_vtcon_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_vtcon_softc*, align 8
  %10 = alloca %struct.pci_vtcon_port*, align 8
  %11 = alloca %struct.pci_vtcon_control, align 8
  %12 = alloca %struct.pci_vtcon_control*, align 8
  %13 = alloca i32, align 4
  store %struct.pci_vtcon_port* %0, %struct.pci_vtcon_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %5, align 8
  %19 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %18, i32 0, i32 3
  %20 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %19, align 8
  store %struct.pci_vtcon_softc* %20, %struct.pci_vtcon_softc** %9, align 8
  %21 = load %struct.iovec*, %struct.iovec** %7, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.pci_vtcon_control*
  store %struct.pci_vtcon_control* %24, %struct.pci_vtcon_control** %12, align 8
  %25 = load %struct.pci_vtcon_control*, %struct.pci_vtcon_control** %12, align 8
  %26 = getelementptr inbounds %struct.pci_vtcon_control, %struct.pci_vtcon_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %99 [
    i32 129, label %28
    i32 128, label %62
  ]

28:                                               ; preds = %4
  %29 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %9, align 8
  %30 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %58, %28
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @VTCON_MAXPORTS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %9, align 8
  %37 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %36, i32 0, i32 2
  %38 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %38, i64 %40
  store %struct.pci_vtcon_port* %41, %struct.pci_vtcon_port** %10, align 8
  %42 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %43 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %48 = call i32 @pci_vtcon_announce_port(%struct.pci_vtcon_port* %47)
  br label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %51 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %56 = call i32 @pci_vtcon_open_port(%struct.pci_vtcon_port* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %31

61:                                               ; preds = %31
  br label %99

62:                                               ; preds = %4
  %63 = load %struct.pci_vtcon_control*, %struct.pci_vtcon_control** %12, align 8
  %64 = getelementptr inbounds %struct.pci_vtcon_control, %struct.pci_vtcon_control* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %9, align 8
  %67 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.pci_vtcon_control*, %struct.pci_vtcon_control** %12, align 8
  %72 = getelementptr inbounds %struct.pci_vtcon_control, %struct.pci_vtcon_control* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @WPRINTF(i8* %74)
  br label %99

76:                                               ; preds = %62
  %77 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %9, align 8
  %78 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %77, i32 0, i32 2
  %79 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %78, align 8
  %80 = load %struct.pci_vtcon_control*, %struct.pci_vtcon_control** %12, align 8
  %81 = getelementptr inbounds %struct.pci_vtcon_control, %struct.pci_vtcon_control* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %79, i64 %82
  store %struct.pci_vtcon_port* %83, %struct.pci_vtcon_port** %10, align 8
  %84 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %10, align 8
  %85 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %76
  %89 = load i32, i32* @VTCON_CONSOLE_PORT, align 4
  %90 = getelementptr inbounds %struct.pci_vtcon_control, %struct.pci_vtcon_control* %11, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load %struct.pci_vtcon_control*, %struct.pci_vtcon_control** %12, align 8
  %92 = getelementptr inbounds %struct.pci_vtcon_control, %struct.pci_vtcon_control* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.pci_vtcon_control, %struct.pci_vtcon_control* %11, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  %95 = getelementptr inbounds %struct.pci_vtcon_control, %struct.pci_vtcon_control* %11, i32 0, i32 2
  store i32 1, i32* %95, align 8
  %96 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %9, align 8
  %97 = call i32 @pci_vtcon_control_send(%struct.pci_vtcon_softc* %96, %struct.pci_vtcon_control* %11, i32* null, i32 0)
  br label %98

98:                                               ; preds = %88, %76
  br label %99

99:                                               ; preds = %70, %4, %98, %61
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_vtcon_announce_port(%struct.pci_vtcon_port*) #1

declare dso_local i32 @pci_vtcon_open_port(%struct.pci_vtcon_port*, i32) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @pci_vtcon_control_send(%struct.pci_vtcon_softc*, %struct.pci_vtcon_control*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
