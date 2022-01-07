; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_chinfo = type { i32, i64, i64, %struct.es_info* }
%struct.es_info = type { i64 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@ES_DAC1 = common dso_local global i64 0, align 8
@ES1370_REG_DAC1_FRAMECNT = common dso_local global i32 0, align 4
@ES1370_REG_DAC2_FRAMECNT = common dso_local global i32 0, align 4
@ES1370_REG_ADC_FRAMECNT = common dso_local global i32 0, align 4
@ES1370_REG_MEMPAGE = common dso_local global i32 0, align 4
@ES_BLK_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @eschan_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eschan_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.es_chinfo*, align 8
  %6 = alloca %struct.es_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.es_chinfo*
  store %struct.es_chinfo* %10, %struct.es_chinfo** %5, align 8
  %11 = load %struct.es_chinfo*, %struct.es_chinfo** %5, align 8
  %12 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %11, i32 0, i32 3
  %13 = load %struct.es_info*, %struct.es_info** %12, align 8
  store %struct.es_info* %13, %struct.es_info** %6, align 8
  %14 = load %struct.es_info*, %struct.es_info** %6, align 8
  %15 = call i32 @ES_LOCK(%struct.es_info* %14)
  %16 = load %struct.es_info*, %struct.es_info** %6, align 8
  %17 = getelementptr inbounds %struct.es_info, %struct.es_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.es_chinfo*, %struct.es_chinfo** %5, align 8
  %22 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.es_chinfo*, %struct.es_chinfo** %5, align 8
  %26 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCMDIR_PLAY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.es_chinfo*, %struct.es_chinfo** %5, align 8
  %32 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ES_DAC1, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @ES1370_REG_DAC1_FRAMECNT, align 4
  store i32 %37, i32* %7, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ES1370_REG_DAC2_FRAMECNT, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %36
  br label %43

41:                                               ; preds = %24
  %42 = load i32, i32* @ES1370_REG_ADC_FRAMECNT, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = load %struct.es_info*, %struct.es_info** %6, align 8
  %45 = load i32, i32* @ES1370_REG_MEMPAGE, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 8
  %48 = call i32 @es_wr(%struct.es_info* %44, i32 %45, i32 %47, i32 4)
  %49 = load %struct.es_info*, %struct.es_info** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 255
  %52 = call i32 @es_rd(%struct.es_info* %49, i32 %51, i32 4)
  %53 = ashr i32 %52, 16
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %54, 2
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %43, %20
  %57 = load %struct.es_info*, %struct.es_info** %6, align 8
  %58 = call i32 @ES_UNLOCK(%struct.es_info* %57)
  %59 = load i32, i32* @ES_BLK_ALIGN, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @es_rd(%struct.es_info*, i32, i32) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
