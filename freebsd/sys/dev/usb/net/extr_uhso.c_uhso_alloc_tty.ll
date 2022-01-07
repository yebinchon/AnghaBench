; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_alloc_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_alloc_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uhso_softc* }

@M_USBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Allocated TTY %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhso_softc*)* @uhso_alloc_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_alloc_tty(%struct.uhso_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhso_softc*, align 8
  store %struct.uhso_softc* %0, %struct.uhso_softc** %3, align 8
  %4 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %5 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  %8 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @M_USBDEV, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @reallocf(%struct.TYPE_2__* %10, i32 %16, i32 %17, i32 %20)
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  %23 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %23, i32 0, i32 1
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %26 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp eq %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %74

30:                                               ; preds = %1
  %31 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %32 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @M_USBDEV, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = load i32, i32* @M_ZERO, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @reallocf(%struct.TYPE_2__* %33, i32 %39, i32 %40, i32 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_2__*
  %46 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %46, i32 0, i32 2
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp eq %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %74

53:                                               ; preds = %30
  %54 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %55 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %56 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %59 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.uhso_softc* %54, %struct.uhso_softc** %64, align 8
  %65 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %66 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @UHSO_DPRINTF(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.uhso_softc*, %struct.uhso_softc** %3, align 8
  %71 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %53, %52, %29
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i8* @reallocf(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
