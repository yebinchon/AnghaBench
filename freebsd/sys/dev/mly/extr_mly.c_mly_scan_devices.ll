; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_scan_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_scan_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@MLY_MAX_TARGETS = common dso_local global i32 0, align 4
@MLY_BTL_RESCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*)* @mly_scan_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_scan_devices(%struct.mly_softc* %0) #0 {
  %2 = alloca %struct.mly_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %2, align 8
  %5 = call i32 @debug_called(i32 1)
  %6 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %6, i32 0, i32 1
  %8 = call i32 @bzero(%struct.TYPE_2__*** %7, i32 8)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @MLY_BUS_IS_VALID(%struct.mly_softc* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MLY_MAX_TARGETS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i32, i32* @MLY_BTL_RESCAN, align 4
  %27 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %26, i32* %37, align 4
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %21

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %15
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %9

46:                                               ; preds = %9
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_2__***, i32) #1

declare dso_local i64 @MLY_BUS_IS_VALID(%struct.mly_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
