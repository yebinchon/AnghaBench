; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_xeon_set_sbar_base_and_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_xeon_set_sbar_base_and_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*, i32, i32, i32)* @xeon_set_sbar_base_and_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xeon_set_sbar_base_and_limit(%struct.ntb_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ntb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @bar_get_xlat_params(%struct.ntb_softc* %12, i32 %13, i32* %10, i32* null, i32* %11)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @bar_is_64bit(%struct.ntb_softc* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @intel_ntb_reg_write(i32 4, i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @intel_ntb_reg_read(i32 4, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @intel_ntb_reg_write(i32 4, i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @intel_ntb_reg_read(i32 4, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  br label %64

51:                                               ; preds = %33
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @intel_ntb_reg_write(i32 8, i32 %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @intel_ntb_reg_read(i32 8, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @intel_ntb_reg_write(i32 8, i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @intel_ntb_reg_read(i32 8, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  br label %64

64:                                               ; preds = %51, %38
  ret void
}

declare dso_local i32 @bar_get_xlat_params(%struct.ntb_softc*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bar_is_64bit(%struct.ntb_softc*, i32) #1

declare dso_local i32 @intel_ntb_reg_write(i32, i32, i32) #1

declare dso_local i32 @intel_ntb_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
