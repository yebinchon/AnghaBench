; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816mix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816mix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.ad1816_info = type { i32 }

@AD1816_MUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ad1816_mixer_set(): unknown device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @ad1816mix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1816mix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ad1816_info*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %12 = call %struct.ad1816_info* @mix_getdevinfo(%struct.snd_mixer* %11)
  store %struct.ad1816_info* %12, %struct.ad1816_info** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @AD1816_MUTE, align 4
  %14 = load i32, i32* @AD1816_MUTE, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul i32 %14, %15
  %17 = udiv i32 %16, 100
  %18 = sub i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @AD1816_MUTE, align 4
  %20 = load i32, i32* @AD1816_MUTE, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul i32 %20, %21
  %23 = udiv i32 %22, 100
  %24 = sub i32 %19, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AD1816_MUTE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, 32768
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @AD1816_MUTE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, 128
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %44 = call i32 @ad1816_lock(%struct.ad1816_info* %43)
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %88 [
    i32 128, label %46
    i32 136, label %50
    i32 133, label %50
    i32 129, label %54
    i32 130, label %58
    i32 134, label %62
    i32 132, label %62
    i32 131, label %66
    i32 135, label %71
  ]

46:                                               ; preds = %42
  %47 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ad1816_write(%struct.ad1816_info* %47, i32 14, i32 %48)
  br label %90

50:                                               ; preds = %42, %42
  %51 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ad1816_write(%struct.ad1816_info* %51, i32 15, i32 %52)
  br label %90

54:                                               ; preds = %42
  %55 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @ad1816_write(%struct.ad1816_info* %55, i32 16, i32 %56)
  br label %90

58:                                               ; preds = %42
  %59 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ad1816_write(%struct.ad1816_info* %59, i32 4, i32 %60)
  br label %90

62:                                               ; preds = %42, %42
  %63 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @ad1816_write(%struct.ad1816_info* %63, i32 18, i32 %64)
  br label %90

66:                                               ; preds = %42
  %67 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, -256
  %70 = call i32 @ad1816_write(%struct.ad1816_info* %67, i32 19, i32 %69)
  br label %90

71:                                               ; preds = %42
  %72 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %73 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %74 = call i32 @ad1816_read(%struct.ad1816_info* %73, i32 20)
  %75 = and i32 %74, -3856
  %76 = load i32, i32* @AD1816_MUTE, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %76, %77
  %79 = udiv i32 %78, 2
  %80 = shl i32 %79, 8
  %81 = or i32 %75, %80
  %82 = load i32, i32* @AD1816_MUTE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub i32 %82, %83
  %85 = udiv i32 %84, 2
  %86 = or i32 %81, %85
  %87 = call i32 @ad1816_write(%struct.ad1816_info* %72, i32 20, i32 %86)
  br label %90

88:                                               ; preds = %42
  %89 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %71, %66, %62, %58, %54, %50, %46
  %91 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %92 = call i32 @ad1816_unlock(%struct.ad1816_info* %91)
  %93 = load i32, i32* @AD1816_MUTE, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub i32 %93, %94
  %96 = mul i32 %95, 100
  %97 = load i32, i32* @AD1816_MUTE, align 4
  %98 = udiv i32 %96, %97
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @AD1816_MUTE, align 4
  %100 = load i32, i32* %8, align 4
  %101 = sub i32 %99, %100
  %102 = mul i32 %101, 100
  %103 = load i32, i32* @AD1816_MUTE, align 4
  %104 = udiv i32 %102, %103
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = shl i32 %106, 8
  %108 = or i32 %105, %107
  ret i32 %108
}

declare dso_local %struct.ad1816_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @ad1816_lock(%struct.ad1816_info*) #1

declare dso_local i32 @ad1816_write(%struct.ad1816_info*, i32, i32) #1

declare dso_local i32 @ad1816_read(%struct.ad1816_info*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ad1816_unlock(%struct.ad1816_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
