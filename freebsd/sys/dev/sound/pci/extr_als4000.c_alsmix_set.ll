; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alsmix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alsmix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.snd_mixer = type { i32 }
%struct.sc_info = type { i32 }

@amt = common dso_local global %struct.TYPE_2__* null, align 8
@SB16_OMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @alsmix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsmix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %15 = call %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer* %14)
  store %struct.sc_info* %15, %struct.sc_info** %9, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 8, %29
  %31 = shl i32 %23, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %13, align 4
  %34 = mul i32 %32, %33
  %35 = udiv i32 %34, 100
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @als_mix_rd(%struct.sc_info* %38, i64 %44)
  %46 = load i32, i32* %13, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %12, align 4
  %49 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @als_mix_wr(%struct.sc_info* %49, i64 %55, i32 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %13, align 4
  %70 = mul i32 %68, %69
  %71 = udiv i32 %70, 100
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @als_mix_rd(%struct.sc_info* %74, i64 %80)
  %82 = load i32, i32* %13, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  store i32 %84, i32* %12, align 4
  %85 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @als_mix_wr(%struct.sc_info* %85, i64 %91, i32 %94)
  br label %97

96:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %99 = load i64, i64* @SB16_OMASK, align 8
  %100 = call i32 @als_mix_rd(%struct.sc_info* %98, i64 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %125

116:                                              ; preds = %103, %97
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amt, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %116, %106
  %126 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %127 = load i64, i64* @SB16_OMASK, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @als_mix_wr(%struct.sc_info* %126, i64 %127, i32 %128)
  ret i32 0
}

declare dso_local %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @als_mix_rd(%struct.sc_info*, i64) #1

declare dso_local i32 @als_mix_wr(%struct.sc_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
