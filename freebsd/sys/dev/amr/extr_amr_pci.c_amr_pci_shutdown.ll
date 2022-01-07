; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@AMR_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"flushing cache...\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@AMR_MAXLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amr_pci_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_pci_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.amr_softc* @device_get_softc(i32 %6)
  store %struct.amr_softc* %7, %struct.amr_softc** %3, align 8
  %8 = call i32 @debug_called(i32 1)
  %9 = load i32, i32* @AMR_STATE_SHUTDOWN, align 4
  %10 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %11 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %15 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %19 = call i64 @amr_flush(%struct.amr_softc* %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %23 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %62, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AMR_MAXLD, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %30 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %28
  %39 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %40 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %43 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @device_delete_child(i32 %41, i64 %49)
  store i32 %50, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %66

53:                                               ; preds = %38
  %54 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %55 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %53, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %24

65:                                               ; preds = %24
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.amr_softc* @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @amr_flush(%struct.amr_softc*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
