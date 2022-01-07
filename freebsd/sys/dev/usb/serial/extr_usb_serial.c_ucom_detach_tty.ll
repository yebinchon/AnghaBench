; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_detach_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_detach_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32, %struct.TYPE_2__*, %struct.tty*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)* }
%struct.tty = type { i32 }
%struct.ucom_super_softc = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"sc = %p, tp = %p\0A\00", align 1
@M_USBDEV = common dso_local global i32 0, align 4
@UCOM_FLAG_CONSOLE = common dso_local global i32 0, align 4
@ucom_cons_softc = common dso_local global %struct.ucom_softc* null, align 8
@UCOM_FLAG_GONE = common dso_local global i32 0, align 4
@UCOM_FLAG_HL_READY = common dso_local global i32 0, align 4
@UCOM_FLAG_LL_READY = common dso_local global i32 0, align 4
@ucom_mtx = common dso_local global i32 0, align 4
@ucom_close_refs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_super_softc*, %struct.ucom_softc*)* @ucom_detach_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_detach_tty(%struct.ucom_super_softc* %0, %struct.ucom_softc* %1) #0 {
  %3 = alloca %struct.ucom_super_softc*, align 8
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca %struct.tty*, align 8
  store %struct.ucom_super_softc* %0, %struct.ucom_super_softc** %3, align 8
  store %struct.ucom_softc* %1, %struct.ucom_softc** %4, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 2
  %8 = load %struct.tty*, %struct.tty** %7, align 8
  store %struct.tty* %8, %struct.tty** %5, align 8
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %10 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %10, i32 0, i32 2
  %12 = load %struct.tty*, %struct.tty** %11, align 8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.ucom_softc* %9, %struct.tty* %12)
  %14 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @cnremove(i32* %21)
  %23 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @M_USBDEV, align 4
  %27 = call i32 @free(i32* %25, i32 %26)
  %28 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %18, %2
  %31 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UCOM_FLAG_CONSOLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.ucom_softc*, %struct.ucom_softc** @ucom_cons_softc, align 8
  %39 = call i32 @UCOM_MTX_LOCK(%struct.ucom_softc* %38)
  %40 = load %struct.ucom_softc*, %struct.ucom_softc** @ucom_cons_softc, align 8
  %41 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %40, i32 0, i32 2
  %42 = load %struct.tty*, %struct.tty** %41, align 8
  %43 = call i32 @ucom_close(%struct.tty* %42)
  %44 = load i32, i32* @UCOM_FLAG_CONSOLE, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ucom_softc*, %struct.ucom_softc** @ucom_cons_softc, align 8
  %51 = call i32 @UCOM_MTX_UNLOCK(%struct.ucom_softc* %50)
  store %struct.ucom_softc* null, %struct.ucom_softc** @ucom_cons_softc, align 8
  br label %52

52:                                               ; preds = %37, %30
  %53 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %54 = call i32 @UCOM_MTX_LOCK(%struct.ucom_softc* %53)
  %55 = load i32, i32* @UCOM_FLAG_GONE, align 4
  %56 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %61 = load i32, i32* @UCOM_FLAG_LL_READY, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %69 = call i32 @UCOM_MTX_UNLOCK(%struct.ucom_softc* %68)
  %70 = load %struct.tty*, %struct.tty** %5, align 8
  %71 = icmp ne %struct.tty* %70, null
  br i1 %71, label %72, label %117

72:                                               ; preds = %52
  %73 = call i32 @mtx_lock(i32* @ucom_mtx)
  %74 = load i32, i32* @ucom_close_refs, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @ucom_close_refs, align 4
  %76 = call i32 @mtx_unlock(i32* @ucom_mtx)
  %77 = load %struct.tty*, %struct.tty** %5, align 8
  %78 = call i32 @tty_lock(%struct.tty* %77)
  %79 = load %struct.tty*, %struct.tty** %5, align 8
  %80 = call i32 @ucom_close(%struct.tty* %79)
  %81 = load %struct.tty*, %struct.tty** %5, align 8
  %82 = call i32 @tty_rel_gone(%struct.tty* %81)
  %83 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %84 = call i32 @UCOM_MTX_LOCK(%struct.ucom_softc* %83)
  %85 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %86 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %88, align 8
  %90 = icmp ne i32 (%struct.ucom_softc*)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %72
  %92 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %95, align 8
  %97 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %98 = call i32 %96(%struct.ucom_softc* %97)
  br label %99

99:                                               ; preds = %91, %72
  %100 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %103, align 8
  %105 = icmp ne i32 (%struct.ucom_softc*)* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %108 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (%struct.ucom_softc*)*, i32 (%struct.ucom_softc*)** %110, align 8
  %112 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %113 = call i32 %111(%struct.ucom_softc* %112)
  br label %114

114:                                              ; preds = %106, %99
  %115 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %116 = call i32 @UCOM_MTX_UNLOCK(%struct.ucom_softc* %115)
  br label %117

117:                                              ; preds = %114, %52
  ret void
}

declare dso_local i32 @DPRINTF(i8*, %struct.ucom_softc*, %struct.tty*) #1

declare dso_local i32 @cnremove(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @UCOM_MTX_LOCK(%struct.ucom_softc*) #1

declare dso_local i32 @ucom_close(%struct.tty*) #1

declare dso_local i32 @UCOM_MTX_UNLOCK(%struct.ucom_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_rel_gone(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
