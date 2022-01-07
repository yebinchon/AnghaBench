; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }

@KCS_CTL_STS = common dso_local global i32 0, align 4
@KCS_CONTROL_GET_STATUS_ABORT = common dso_local global i32 0, align 4
@KCS_STATUS_OBF = common dso_local global i32 0, align 4
@KCS_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"KCS Error Data %02x\0A\00", align 1
@KCS_STATUS_STATE_READ = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"KCS error: %02x\0A\00", align 1
@KCS_DATA_IN_READ = common dso_local global i32 0, align 4
@KCS_STATUS_STATE_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"KCS: Error retry exhausted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_softc*)* @kcs_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcs_error(%struct.ipmi_softc* %0) #0 {
  %2 = alloca %struct.ipmi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %87, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %90

9:                                                ; preds = %6
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %11 = call i32 @kcs_wait_for_ibf(%struct.ipmi_softc* %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %13 = load i32, i32* @KCS_CTL_STS, align 4
  %14 = load i32, i32* @KCS_CONTROL_GET_STATUS_ABORT, align 4
  %15 = call i32 @OUTB(%struct.ipmi_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %17 = call i32 @kcs_wait_for_ibf(%struct.ipmi_softc* %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @kcs_clear_obf(%struct.ipmi_softc* %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @KCS_STATUS_OBF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %9
  %26 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %27 = load i32, i32* @KCS_DATA, align 4
  %28 = call i32 @INB(%struct.ipmi_softc* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %9
  %39 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %40 = load i32, i32* @KCS_DATA, align 4
  %41 = call i32 @OUTB(%struct.ipmi_softc* %39, i32 %40, i32 0)
  %42 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %43 = call i32 @kcs_wait_for_ibf(%struct.ipmi_softc* %42, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @KCS_STATUS_STATE(i32 %44)
  %46 = load i64, i64* @KCS_STATUS_STATE_READ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %38
  %49 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %50 = call i32 @kcs_wait_for_obf(%struct.ipmi_softc* %49, i32 1)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %52 = load i32, i32* @KCS_DATA, align 4
  %53 = call i32 @INB(%struct.ipmi_softc* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @bootverbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59, %56
  %63 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %59, %48
  %69 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %70 = load i32, i32* @KCS_DATA, align 4
  %71 = load i32, i32* @KCS_DATA_IN_READ, align 4
  %72 = call i32 @OUTB(%struct.ipmi_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %74 = call i32 @kcs_wait_for_ibf(%struct.ipmi_softc* %73, i32 0)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %38
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @KCS_STATUS_STATE(i32 %76)
  %78 = load i64, i64* @KCS_STATUS_STATE_IDLE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %82 = call i32 @kcs_wait_for_obf(%struct.ipmi_softc* %81, i32 1)
  store i32 %82, i32* %4, align 4
  %83 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @kcs_clear_obf(%struct.ipmi_softc* %83, i32 %84)
  br label %95

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %6

90:                                               ; preds = %6
  %91 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %80
  ret void
}

declare dso_local i32 @kcs_wait_for_ibf(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @OUTB(%struct.ipmi_softc*, i32, i32) #1

declare dso_local i32 @kcs_clear_obf(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @INB(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @KCS_STATUS_STATE(i32) #1

declare dso_local i32 @kcs_wait_for_obf(%struct.ipmi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
