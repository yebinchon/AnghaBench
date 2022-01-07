; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_core_clkctl_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_core_clkctl_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_clkctl = type { i32, i64, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@BHND_CLKCTL_QUIRK_CCS0 = common dso_local global i32 0, align 4
@BHND_CCS_HTAVAIL = common dso_local global i32 0, align 4
@BHND_CCS_ALPAVAIL = common dso_local global i32 0, align 4
@BHND_CCS0_HTAVAIL = common dso_local global i32 0, align 4
@BHND_CCS0_ALPAVAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"clkst wait timeout (value=%#x, mask=%#x)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_core_clkctl_wait(%struct.bhnd_core_clkctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_core_clkctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bhnd_core_clkctl* %0, %struct.bhnd_core_clkctl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %5, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @BHND_CLKCTL_LOCK_ASSERT(%struct.bhnd_core_clkctl* %12, i32 %13)
  %15 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %5, align 8
  %16 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BHND_CLKCTL_QUIRK_CCS0, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %24 = load i32, i32* @BHND_CCS_ALPAVAIL, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %30 = load i32, i32* @BHND_CCS_ALPAVAIL, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = load i32, i32* @BHND_CCS0_HTAVAIL, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %21
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @BHND_CCS0_HTAVAIL, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BHND_CCS_ALPAVAIL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @BHND_CCS0_ALPAVAIL, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @BHND_CCS_ALPAVAIL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @BHND_CCS0_ALPAVAIL, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %3
  store i64 0, i64* %11, align 8
  br label %73

73:                                               ; preds = %97, %72
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %5, align 8
  %76 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %5, align 8
  %81 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %5, align 8
  %84 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bhnd_bus_read_4(i32 %82, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %108

95:                                               ; preds = %79
  %96 = call i32 @DELAY(i32 10)
  br label %97

97:                                               ; preds = %95
  %98 = load i64, i64* %11, align 8
  %99 = add nsw i64 %98, 10
  store i64 %99, i64* %11, align 8
  br label %73

100:                                              ; preds = %73
  %101 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %5, align 8
  %102 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %94
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @BHND_CLKCTL_LOCK_ASSERT(%struct.bhnd_core_clkctl*, i32) #1

declare dso_local i32 @bhnd_bus_read_4(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
