; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_pcf.c_pcf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pcf/extr_pcf.c_pcf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf_softc = type { i32 }

@ESO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf_read(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pcf_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.pcf_softc* @DEVTOSOFTC(i32 %16)
  store %struct.pcf_softc* %17, %struct.pcf_softc** %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %19 = call i32 @PCF_LOCK(%struct.pcf_softc* %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %30 = load i32, i32* @ESO, align 4
  %31 = call i32 @pcf_set_S1(%struct.pcf_softc* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25, %22
  %33 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %34 = call i32 @dummy_read(%struct.pcf_softc* %33)
  br label %35

35:                                               ; preds = %32, %6
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %66, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %41 = call i32 @pcf_wait_byte(%struct.pcf_softc* %40)
  store i32 %41, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %45 = call i32 @pcf_stop_locked(%struct.pcf_softc* %44)
  br label %77

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %54 = call i32 @pcf_stop_locked(%struct.pcf_softc* %53)
  br label %66

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %63 = load i32, i32* @ESO, align 4
  %64 = call i32 @pcf_set_S1(%struct.pcf_softc* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58, %55
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %68 = call i32 @pcf_get_S0(%struct.pcf_softc* %67)
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %36

76:                                               ; preds = %36
  br label %77

77:                                               ; preds = %76, %43
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.pcf_softc*, %struct.pcf_softc** %13, align 8
  %81 = call i32 @PCF_UNLOCK(%struct.pcf_softc* %80)
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local %struct.pcf_softc* @DEVTOSOFTC(i32) #1

declare dso_local i32 @PCF_LOCK(%struct.pcf_softc*) #1

declare dso_local i32 @pcf_set_S1(%struct.pcf_softc*, i32) #1

declare dso_local i32 @dummy_read(%struct.pcf_softc*) #1

declare dso_local i32 @pcf_wait_byte(%struct.pcf_softc*) #1

declare dso_local i32 @pcf_stop_locked(%struct.pcf_softc*) #1

declare dso_local i32 @pcf_get_S0(%struct.pcf_softc*) #1

declare dso_local i32 @PCF_UNLOCK(%struct.pcf_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
