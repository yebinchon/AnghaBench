; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_poll_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_poll_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_chinfo = type { i64, i64, i64, i32, i32, i32, i32, %struct.es_info*, i32* }
%struct.es_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@ES_DAC1 = common dso_local global i64 0, align 8
@ES1370_REG_DAC1_FRAMECNT = common dso_local global i32 0, align 4
@ES1370_REG_DAC2_FRAMECNT = common dso_local global i32 0, align 4
@ES1370_REG_ADC_FRAMECNT = common dso_local global i32 0, align 4
@ES1370_REG_MEMPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es_chinfo*)* @es_poll_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es_poll_channel(%struct.es_chinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.es_chinfo*, align 8
  %4 = alloca %struct.es_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.es_chinfo* %0, %struct.es_chinfo** %3, align 8
  %9 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %10 = icmp eq %struct.es_chinfo* %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %13 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %12, i32 0, i32 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %18 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11, %1
  store i32 0, i32* %2, align 4
  br label %96

22:                                               ; preds = %16
  %23 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %24 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %23, i32 0, i32 7
  %25 = load %struct.es_info*, %struct.es_info** %24, align 8
  store %struct.es_info* %25, %struct.es_info** %4, align 8
  %26 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %27 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCMDIR_PLAY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %33 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ES_DAC1, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ES1370_REG_DAC1_FRAMECNT, align 4
  store i32 %38, i32* %7, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ES1370_REG_DAC2_FRAMECNT, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %44

42:                                               ; preds = %22
  %43 = load i32, i32* @ES1370_REG_ADC_FRAMECNT, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %46 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %49 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.es_info*, %struct.es_info** %4, align 8
  %53 = load i32, i32* @ES1370_REG_MEMPAGE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 8
  %56 = call i32 @es_wr(%struct.es_info* %52, i32 %53, i32 %55, i32 4)
  %57 = load %struct.es_info*, %struct.es_info** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 255
  %60 = call i32 @es_rd(%struct.es_info* %57, i32 %59, i32 4)
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 2
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %66 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %8, align 4
  %69 = srem i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %71 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %81 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  %84 = load i32, i32* %5, align 4
  %85 = srem i32 %83, %84
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %88 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %96

92:                                               ; preds = %44
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.es_chinfo*, %struct.es_chinfo** %3, align 8
  %95 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %91, %21
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @es_rd(%struct.es_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
