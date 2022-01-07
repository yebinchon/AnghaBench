; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_oss_cookedmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_oss_cookedmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CHN_F_BITPERFECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_channel*, %struct.pcm_channel*, i32)* @dsp_oss_cookedmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_oss_cookedmode(%struct.pcm_channel* %0, %struct.pcm_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_channel*, align 8
  %6 = alloca %struct.pcm_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %5, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %68

15:                                               ; preds = %10, %3
  %16 = load i32, i32* %7, align 4
  %17 = xor i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %19 = icmp ne %struct.pcm_channel* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %22 = call i32 @CHN_LOCK(%struct.pcm_channel* %21)
  %23 = load i32, i32* @CHN_F_BITPERFECT, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %26 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @CHN_F_BITPERFECT, align 4
  br label %34

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %37 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %41 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %40)
  br label %42

42:                                               ; preds = %34, %15
  %43 = load %struct.pcm_channel*, %struct.pcm_channel** %6, align 8
  %44 = icmp ne %struct.pcm_channel* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.pcm_channel*, %struct.pcm_channel** %6, align 8
  %47 = call i32 @CHN_LOCK(%struct.pcm_channel* %46)
  %48 = load i32, i32* @CHN_F_BITPERFECT, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.pcm_channel*, %struct.pcm_channel** %6, align 8
  %51 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @CHN_F_BITPERFECT, align 4
  br label %59

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = load %struct.pcm_channel*, %struct.pcm_channel** %6, align 8
  %62 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.pcm_channel*, %struct.pcm_channel** %6, align 8
  %66 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %65)
  br label %67

67:                                               ; preds = %59, %42
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %13
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @CHN_LOCK(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_UNLOCK(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
