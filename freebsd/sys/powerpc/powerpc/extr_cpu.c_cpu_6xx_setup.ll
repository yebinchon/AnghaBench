; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_6xx_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_6xx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_HID0 = common dso_local global i32 0, align 4
@HID0_DOZE = common dso_local global i32 0, align 4
@HID0_NAP = common dso_local global i32 0, align 4
@HID0_SLEEP = common dso_local global i32 0, align 4
@HID0_DPM = common dso_local global i32 0, align 4
@powerpc_pow_enabled = common dso_local global i32 0, align 4
@HID0_SGE = common dso_local global i32 0, align 4
@HID0_BTIC = common dso_local global i32 0, align 4
@HID0_LRSTK = common dso_local global i32 0, align 4
@HID0_FOLD = common dso_local global i32 0, align 4
@HID0_BHT = common dso_local global i32 0, align 4
@HID0_DBP = common dso_local global i32 0, align 4
@HID0_EMCP = common dso_local global i32 0, align 4
@HID0_SPD = common dso_local global i32 0, align 4
@HID0_EIEC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@HID0_7450_BITMASK = common dso_local global i8* null, align 8
@HID0_BITMASK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"cpu%d: HID0 %b\0A\00", align 1
@cpu_idle_hook = common dso_local global i32* null, align 8
@cpu_idle_60x = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_6xx_setup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @SPR_HID0, align 4
  %9 = call i32 @mfspr(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @mfpvr()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %69 [
    i32 141, label %12
    i32 140, label %12
    i32 139, label %12
    i32 138, label %12
    i32 130, label %12
    i32 142, label %12
    i32 137, label %12
    i32 136, label %12
    i32 129, label %12
    i32 128, label %12
    i32 134, label %26
    i32 135, label %26
    i32 131, label %26
    i32 132, label %26
    i32 133, label %26
  ]

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %13 = load i32, i32* @HID0_DOZE, align 4
  %14 = load i32, i32* @HID0_NAP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @HID0_SLEEP, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @HID0_DOZE, align 4
  %22 = load i32, i32* @HID0_DPM, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  store i32 1, i32* @powerpc_pow_enabled, align 4
  br label %70

26:                                               ; preds = %2, %2, %2, %2, %2
  %27 = load i32, i32* @HID0_SGE, align 4
  %28 = load i32, i32* @HID0_BTIC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @HID0_LRSTK, align 4
  %33 = load i32, i32* @HID0_FOLD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @HID0_BHT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 16
  %41 = icmp eq i32 %40, 133
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 65535
  %45 = icmp sle i32 %44, 512
  br i1 %45, label %50, label %46

46:                                               ; preds = %42, %26
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 16
  %49 = icmp eq i32 %48, 131
  br i1 %49, label %50, label %55

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @HID0_BTIC, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* @HID0_DOZE, align 4
  %57 = load i32, i32* @HID0_NAP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @HID0_SLEEP, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @HID0_NAP, align 4
  %65 = load i32, i32* @HID0_DPM, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  store i32 1, i32* @powerpc_pow_enabled, align 4
  br label %70

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %69, %55, %12
  %71 = load i32, i32* %4, align 4
  switch i32 %71, label %103 [
    i32 142, label %72
    i32 130, label %72
    i32 137, label %86
    i32 136, label %86
  ]

72:                                               ; preds = %70, %70
  %73 = load i32, i32* @HID0_DBP, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @HID0_EMCP, align 4
  %78 = load i32, i32* @HID0_BTIC, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @HID0_SGE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @HID0_BHT, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %103

86:                                               ; preds = %70, %70
  %87 = load i32, i32* @HID0_SPD, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @HID0_EMCP, align 4
  %92 = load i32, i32* @HID0_BTIC, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @HID0_SGE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @HID0_BHT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @HID0_EIEC, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %70, %86, %72
  %104 = load i32, i32* @SPR_HID0, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @mtspr(i32 %104, i32 %105)
  %107 = load i64, i64* @bootverbose, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @cpu_6xx_print_cacheinfo(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %4, align 4
  switch i32 %114, label %117 [
    i32 135, label %115
    i32 134, label %115
    i32 133, label %115
    i32 132, label %115
    i32 131, label %115
  ]

115:                                              ; preds = %113, %113, %113, %113, %113
  %116 = load i8*, i8** @HID0_7450_BITMASK, align 8
  store i8* %116, i8** %7, align 8
  br label %119

117:                                              ; preds = %113
  %118 = load i8*, i8** @HID0_BITMASK, align 8
  store i8* %118, i8** %7, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121, i8* %122)
  %124 = load i32*, i32** @cpu_idle_hook, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32*, i32** @cpu_idle_60x, align 8
  store i32* %127, i32** @cpu_idle_hook, align 8
  br label %128

128:                                              ; preds = %126, %119
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @cpu_6xx_print_cacheinfo(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
