; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_user_mw_to_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_user_mw_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i64, i64 }

@B2B_MW_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*, i32)* @intel_ntb_user_mw_to_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_user_mw_to_idx(%struct.ntb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @B2B_MW_DISABLED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %35, label %22

22:                                               ; preds = %15, %10, %2
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @B2B_MW_DISABLED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %15
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %28, %22
  %39 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @B2B_MW_DISABLED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @B2B_MW_DISABLED, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %62, %56, %49, %44, %38
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
