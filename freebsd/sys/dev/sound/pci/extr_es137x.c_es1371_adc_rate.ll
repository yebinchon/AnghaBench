; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_adc_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_adc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { i32 }

@ES_SMPREG_ADC = common dso_local global i64 0, align 8
@ES_SMPREG_TRUNC_N = common dso_local global i64 0, align 8
@ES_SMPREG_INT_REGS = common dso_local global i64 0, align 8
@ES_SMPREG_VFREQ_FRAC = common dso_local global i64 0, align 8
@ES_SMPREG_VOL_ADC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es_info*, i32, i32)* @es1371_adc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1371_adc_rate(%struct.es_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.es_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.es_info* %0, %struct.es_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.es_info*, %struct.es_info** %4, align 8
  %12 = call i32 @ES_LOCK_ASSERT(%struct.es_info* %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 48000
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 48000, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %17, 4000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 4000, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %5, align 4
  %22 = udiv i32 %21, 3000
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %24, 43520
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* %7, align 4
  %32 = mul i32 21, %31
  %33 = sub i32 %32, 1
  %34 = or i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = udiv i64 1572864000, %36
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = udiv i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = udiv i64 1572864000, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %122

50:                                               ; preds = %30
  %51 = load i32, i32* %5, align 4
  %52 = icmp uge i32 %51, 24000
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp ugt i32 %54, 239
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 239, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.es_info*, %struct.es_info** %4, align 8
  %59 = load i64, i64* @ES_SMPREG_ADC, align 8
  %60 = load i64, i64* @ES_SMPREG_TRUNC_N, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = sub i32 239, %62
  %64 = lshr i32 %63, 1
  %65 = shl i32 %64, 9
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 4
  %68 = or i32 %65, %67
  %69 = call i32 @es1371_src_write(%struct.es_info* %58, i64 %61, i32 %68)
  br label %88

70:                                               ; preds = %50
  %71 = load i32, i32* %8, align 4
  %72 = icmp ugt i32 %71, 119
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 119, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load %struct.es_info*, %struct.es_info** %4, align 8
  %76 = load i64, i64* @ES_SMPREG_ADC, align 8
  %77 = load i64, i64* @ES_SMPREG_TRUNC_N, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = sub i32 119, %79
  %81 = lshr i32 %80, 1
  %82 = shl i32 %81, 9
  %83 = or i32 32768, %82
  %84 = load i32, i32* %7, align 4
  %85 = shl i32 %84, 4
  %86 = or i32 %83, %85
  %87 = call i32 @es1371_src_write(%struct.es_info* %75, i64 %78, i32 %86)
  br label %88

88:                                               ; preds = %74, %57
  %89 = load %struct.es_info*, %struct.es_info** %4, align 8
  %90 = load i64, i64* @ES_SMPREG_ADC, align 8
  %91 = load i64, i64* @ES_SMPREG_INT_REGS, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.es_info*, %struct.es_info** %4, align 8
  %94 = load i64, i64* @ES_SMPREG_ADC, align 8
  %95 = load i64, i64* @ES_SMPREG_INT_REGS, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @es1371_src_read(%struct.es_info* %93, i64 %96)
  %98 = and i32 %97, 255
  %99 = load i32, i32* %9, align 4
  %100 = lshr i32 %99, 5
  %101 = and i32 %100, 64512
  %102 = or i32 %98, %101
  %103 = call i32 @es1371_src_write(%struct.es_info* %89, i64 %92, i32 %102)
  %104 = load %struct.es_info*, %struct.es_info** %4, align 8
  %105 = load i64, i64* @ES_SMPREG_ADC, align 8
  %106 = load i64, i64* @ES_SMPREG_VFREQ_FRAC, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 32767
  %110 = call i32 @es1371_src_write(%struct.es_info* %104, i64 %107, i32 %109)
  %111 = load %struct.es_info*, %struct.es_info** %4, align 8
  %112 = load i64, i64* @ES_SMPREG_VOL_ADC, align 8
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 8
  %115 = call i32 @es1371_src_write(%struct.es_info* %111, i64 %112, i32 %114)
  %116 = load %struct.es_info*, %struct.es_info** %4, align 8
  %117 = load i64, i64* @ES_SMPREG_VOL_ADC, align 8
  %118 = add nsw i64 %117, 1
  %119 = load i32, i32* %7, align 4
  %120 = shl i32 %119, 8
  %121 = call i32 @es1371_src_write(%struct.es_info* %116, i64 %118, i32 %120)
  br label %122

122:                                              ; preds = %88, %30
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @ES_LOCK_ASSERT(%struct.es_info*) #1

declare dso_local i32 @es1371_src_write(%struct.es_info*, i64, i32) #1

declare dso_local i32 @es1371_src_read(%struct.es_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
