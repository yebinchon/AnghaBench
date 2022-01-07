; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan1371_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan1371_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_chinfo = type { i64, i32, %struct.es_info* }
%struct.es_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @eschan1371_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eschan1371_setspeed(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.es_chinfo*, align 8
  %9 = alloca %struct.es_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.es_chinfo*
  store %struct.es_chinfo* %13, %struct.es_chinfo** %8, align 8
  %14 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %15 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %14, i32 0, i32 2
  %16 = load %struct.es_info*, %struct.es_info** %15, align 8
  store %struct.es_info* %16, %struct.es_info** %9, align 8
  %17 = load %struct.es_info*, %struct.es_info** %9, align 8
  %18 = call i32 @ES_LOCK(%struct.es_info* %17)
  %19 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %20 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCMDIR_PLAY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.es_info*, %struct.es_info** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %28 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @es1371_dac_rate(%struct.es_info* %25, i64 %26, i32 %29)
  store i64 %30, i64* %10, align 8
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.es_info*, %struct.es_info** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.es_chinfo*, %struct.es_chinfo** %8, align 8
  %35 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @es1371_adc_rate(%struct.es_info* %32, i64 %33, i32 %36)
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.es_info*, %struct.es_info** %9, align 8
  %40 = call i32 @ES_UNLOCK(%struct.es_info* %39)
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %45, %46
  br label %52

48:                                               ; preds = %38
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub nsw i64 %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i64 [ %47, %44 ], [ %51, %48 ]
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %4, align 8
  br label %61

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i64 @es1371_dac_rate(%struct.es_info*, i64, i32) #1

declare dso_local i64 @es1371_adc_rate(%struct.es_info*, i64, i32) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
