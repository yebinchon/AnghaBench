; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sbpromix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sbpromix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @sbpromix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbpromix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %15 = call %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer* %14)
  store %struct.sb_info* %15, %struct.sb_info** %10, align 8
  store i32 7, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %23 [
    i32 130, label %17
    i32 131, label %18
    i32 128, label %19
    i32 129, label %20
    i32 133, label %21
    i32 132, label %22
  ]

17:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  br label %24

18:                                               ; preds = %4
  store i32 10, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %24

19:                                               ; preds = %4
  store i32 34, i32* %11, align 4
  br label %24

20:                                               ; preds = %4
  store i32 38, i32* %11, align 4
  br label %24

21:                                               ; preds = %4
  store i32 40, i32* %11, align 4
  br label %24

22:                                               ; preds = %4
  store i32 46, i32* %11, align 4
  br label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %69

24:                                               ; preds = %22, %21, %20, %19, %18, %17
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %12, align 4
  %27 = mul i32 %25, %26
  %28 = udiv i32 %27, 100
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %12, align 4
  %36 = mul i32 %34, %35
  %37 = udiv i32 %36, 100
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %32, %31 ], [ %37, %33 ]
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 131
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 1
  br label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 5
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 1
  %50 = or i32 %47, %49
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i32 [ %44, %42 ], [ %50, %45 ]
  store i32 %52, i32* %13, align 4
  %53 = load %struct.sb_info*, %struct.sb_info** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @sb_setmixer(%struct.sb_info* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = mul i32 %57, 100
  %59 = load i32, i32* %12, align 4
  %60 = udiv i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul i32 %61, 100
  %63 = load i32, i32* %12, align 4
  %64 = udiv i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %65, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %51, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @sb_setmixer(%struct.sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
