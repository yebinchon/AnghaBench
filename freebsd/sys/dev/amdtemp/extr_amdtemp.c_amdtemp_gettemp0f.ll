; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_gettemp0f.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdtemp/extr_amdtemp.c_amdtemp_gettemp0f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtemp_softc = type { i32, i32 }

@AMDTEMP_THERMTP_STAT = common dso_local global i32 0, align 4
@AMDTEMP_TTSR_SELCORE = common dso_local global i32 0, align 4
@AMDTEMP_TTSR_SELSENSOR = common dso_local global i32 0, align 4
@AMDTEMP_FLAG_CS_SWAP = common dso_local global i32 0, align 4
@AMDTEMP_FLAG_CT_10BIT = common dso_local global i32 0, align 4
@AMDTEMP_FLAG_ALT_OFFSET = common dso_local global i32 0, align 4
@AMDTEMP_ZERO_C_TO_K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @amdtemp_gettemp0f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdtemp_gettemp0f(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdtemp_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.amdtemp_softc* @device_get_softc(i32 %9)
  store %struct.amdtemp_softc* %10, %struct.amdtemp_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @AMDTEMP_THERMTP_STAT, align 4
  %13 = call i32 @pci_read_config(i32 %11, i32 %12, i32 1)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @AMDTEMP_TTSR_SELCORE, align 4
  %15 = load i32, i32* @AMDTEMP_TTSR_SELSENSOR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %53 [
    i32 131, label %21
    i32 132, label %25
    i32 133, label %25
    i32 128, label %37
    i32 129, label %41
    i32 130, label %41
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @AMDTEMP_TTSR_SELSENSOR, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %2, %2, %21
  %26 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %5, align 8
  %27 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AMDTEMP_FLAG_CS_SWAP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @AMDTEMP_TTSR_SELCORE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %25
  br label %53

37:                                               ; preds = %2
  %38 = load i32, i32* @AMDTEMP_TTSR_SELSENSOR, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %2, %2, %37
  %42 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %5, align 8
  %43 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AMDTEMP_FLAG_CS_SWAP, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @AMDTEMP_TTSR_SELCORE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %41
  br label %53

53:                                               ; preds = %2, %52, %36
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @AMDTEMP_THERMTP_STAT, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pci_write_config(i32 %54, i32 %55, i32 %56, i32 1)
  %58 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %5, align 8
  %59 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AMDTEMP_FLAG_CT_10BIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1023, i32 1020
  store i32 %65, i32* %6, align 4
  %66 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %5, align 8
  %67 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AMDTEMP_FLAG_ALT_OFFSET, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 28, i32 49
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @AMDTEMP_THERMTP_STAT, align 4
  %76 = call i32 @pci_read_config(i32 %74, i32 %75, i32 4)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %77, 14
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %78, %79
  %81 = mul nsw i32 %80, 5
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %8, align 4
  %83 = load i64, i64* @AMDTEMP_ZERO_C_TO_K, align 8
  %84 = load %struct.amdtemp_softc*, %struct.amdtemp_softc** %5, align 8
  %85 = getelementptr inbounds %struct.amdtemp_softc, %struct.amdtemp_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %86, %87
  %89 = mul nsw i32 %88, 10
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %83, %90
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.amdtemp_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
