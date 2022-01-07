; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_feed_adc_mono.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_feed_adc_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_rchinfo = type { i32, i32, i32, i32, i64, i64, i32 }

@APUREG_CURPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_rchinfo*)* @aggch_feed_adc_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggch_feed_adc_mono(%struct.agg_rchinfo* %0) #0 {
  %2 = alloca %struct.agg_rchinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.agg_rchinfo* %0, %struct.agg_rchinfo** %2, align 8
  %5 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %6 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @agg_lock(i32 %7)
  %9 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %10 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @APUREG_CURPTR, align 4
  %13 = call i32 @wp_rdapu(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %15 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @agg_unlock(i32 %16)
  %18 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %19 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %22 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = ashr i32 %24, 1
  %26 = and i32 65535, %25
  %27 = load i32, i32* %3, align 4
  %28 = sub i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %30 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %1
  %36 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %37 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %43 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %49 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub i32 %50, %51
  %53 = call i32 @mixdown(i64 %41, i64 %47, i32 %52)
  %54 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %55 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %58 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @mixdown(i64 %56, i64 %59, i32 %60)
  br label %84

62:                                               ; preds = %1
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %68 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %74 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sub i32 %79, %80
  %82 = call i32 @mixdown(i64 %72, i64 %78, i32 %81)
  br label %83

83:                                               ; preds = %66, %62
  br label %84

84:                                               ; preds = %83, %35
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %87 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  ret void
}

declare dso_local i32 @agg_lock(i32) #1

declare dso_local i32 @wp_rdapu(i32, i32, i32) #1

declare dso_local i32 @agg_unlock(i32) #1

declare dso_local i32 @mixdown(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
