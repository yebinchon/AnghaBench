; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i64*, i64, i32, i64, i64, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipmi_release_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ipmi_softc* @device_get_softc(i32 %5)
  store %struct.ipmi_softc* %6, %struct.ipmi_softc** %3, align 8
  %7 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @bus_teardown_intr(i32 %12, i64 %15, i64 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @bus_release_resource(i32 %26, i32 %27, i64 %30, i64 %33)
  br label %35

35:                                               ; preds = %25, %20
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %69, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MAX_RES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %40
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @bus_release_resource(i32 %50, i32 %53, i64 %59, i64 %66)
  br label %68

68:                                               ; preds = %49, %40
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %36

72:                                               ; preds = %36
  ret void
}

declare dso_local %struct.ipmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
