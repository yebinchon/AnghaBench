; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_dac_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1371_dac_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { i32 }

@ES_DAC1 = common dso_local global i32 0, align 4
@ES_SMPREG_DAC1 = common dso_local global i32 0, align 4
@ES_SMPREG_DAC2 = common dso_local global i32 0, align 4
@ES1371_DIS_P2 = common dso_local global i32 0, align 4
@ES1371_DIS_P1 = common dso_local global i32 0, align 4
@ES1371_DIS_SRC = common dso_local global i32 0, align 4
@ES1371_DIS_R1 = common dso_local global i32 0, align 4
@ES1371_REG_SMPRATE = common dso_local global i32 0, align 4
@ES_SMPREG_INT_REGS = common dso_local global i64 0, align 8
@ES_SMPREG_VFREQ_FRAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es_info*, i32, i32)* @es1371_dac_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1371_dac_rate(%struct.es_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.es_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.es_info* %0, %struct.es_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.es_info*, %struct.es_info** %4, align 8
  %13 = call i32 @ES_LOCK_ASSERT(%struct.es_info* %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ugt i32 %14, 48000
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 48000, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 4000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 4000, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 15
  %24 = add i32 %23, 1500
  %25 = udiv i32 %24, 3000
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul i32 %26, 3000
  %28 = lshr i32 %27, 15
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ES_DAC1, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @ES_SMPREG_DAC1, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @ES_SMPREG_DAC2, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ES_DAC1, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ES1371_DIS_P2, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ES1371_DIS_P1, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %11, align 4
  %47 = load %struct.es_info*, %struct.es_info** %4, align 8
  %48 = call i32 @es1371_wait_src_ready(%struct.es_info* %47)
  %49 = load i32, i32* @ES1371_DIS_SRC, align 4
  %50 = load i32, i32* @ES1371_DIS_P1, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ES1371_DIS_P2, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ES1371_DIS_R1, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %48, %55
  store i32 %56, i32* %8, align 4
  %57 = load %struct.es_info*, %struct.es_info** %4, align 8
  %58 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @es_wr(%struct.es_info* %57, i32 %58, i32 %59, i32 4)
  %61 = load %struct.es_info*, %struct.es_info** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @ES_SMPREG_INT_REGS, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.es_info*, %struct.es_info** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* @ES_SMPREG_INT_REGS, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @es1371_src_read(%struct.es_info* %66, i64 %70)
  %72 = and i32 %71, 255
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, 5
  %75 = and i32 %74, 64512
  %76 = or i32 %72, %75
  %77 = call i32 @es1371_src_write(%struct.es_info* %61, i64 %65, i32 %76)
  %78 = load %struct.es_info*, %struct.es_info** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @ES_SMPREG_VFREQ_FRAC, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 32767
  %85 = call i32 @es1371_src_write(%struct.es_info* %78, i64 %82, i32 %84)
  %86 = load %struct.es_info*, %struct.es_info** %4, align 8
  %87 = call i32 @es1371_wait_src_ready(%struct.es_info* %86)
  %88 = load i32, i32* @ES1371_DIS_SRC, align 4
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @ES1371_DIS_R1, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %87, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.es_info*, %struct.es_info** %4, align 8
  %95 = load i32, i32* @ES1371_REG_SMPRATE, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @es_wr(%struct.es_info* %94, i32 %95, i32 %96, i32 4)
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i32 @ES_LOCK_ASSERT(%struct.es_info*) #1

declare dso_local i32 @es1371_wait_src_ready(%struct.es_info*) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @es1371_src_write(%struct.es_info*, i64, i32) #1

declare dso_local i32 @es1371_src_read(%struct.es_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
