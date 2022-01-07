; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16mix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb16mix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb16_mixent = type { i32, i32, i64, i64 }
%struct.snd_mixer = type { i32 }
%struct.sb_info = type { i32 }

@sb16_mixtab = common dso_local global %struct.sb16_mixent* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @sb16mix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb16mix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sb_info*, align 8
  %10 = alloca %struct.sb16_mixent*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %13 = call %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer* %12)
  store %struct.sb_info* %13, %struct.sb_info** %9, align 8
  %14 = load %struct.sb16_mixent*, %struct.sb16_mixent** @sb16_mixtab, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sb16_mixent, %struct.sb16_mixent* %14, i64 %16
  store %struct.sb16_mixent* %17, %struct.sb16_mixent** %10, align 8
  %18 = load %struct.sb16_mixent*, %struct.sb16_mixent** %10, align 8
  %19 = getelementptr inbounds %struct.sb16_mixent, %struct.sb16_mixent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @rel2abs_volume(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @rel2abs_volume(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sb_info*, %struct.sb_info** %9, align 8
  %30 = load %struct.sb16_mixent*, %struct.sb16_mixent** %10, align 8
  %31 = getelementptr inbounds %struct.sb16_mixent, %struct.sb16_mixent* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.sb16_mixent*, %struct.sb16_mixent** %10, align 8
  %35 = getelementptr inbounds %struct.sb16_mixent, %struct.sb16_mixent* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %33, %36
  %38 = call i32 @sb_setmixer(%struct.sb_info* %29, i64 %32, i32 %37)
  %39 = load %struct.sb16_mixent*, %struct.sb16_mixent** %10, align 8
  %40 = getelementptr inbounds %struct.sb16_mixent, %struct.sb16_mixent* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %4
  %44 = load %struct.sb_info*, %struct.sb_info** %9, align 8
  %45 = load %struct.sb16_mixent*, %struct.sb16_mixent** %10, align 8
  %46 = getelementptr inbounds %struct.sb16_mixent, %struct.sb16_mixent* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.sb16_mixent*, %struct.sb16_mixent** %10, align 8
  %51 = getelementptr inbounds %struct.sb16_mixent, %struct.sb16_mixent* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %49, %52
  %54 = call i32 @sb_setmixer(%struct.sb_info* %44, i64 %48, i32 %53)
  br label %57

55:                                               ; preds = %4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %43
  %58 = load i32, i32* %7, align 4
  %59 = mul i32 %58, 100
  %60 = load i32, i32* %11, align 4
  %61 = udiv i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = mul i32 %62, 100
  %64 = load i32, i32* %11, align 4
  %65 = udiv i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %66, %68
  ret i32 %69
}

declare dso_local %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @rel2abs_volume(i32, i32) #1

declare dso_local i32 @sb_setmixer(%struct.sb_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
