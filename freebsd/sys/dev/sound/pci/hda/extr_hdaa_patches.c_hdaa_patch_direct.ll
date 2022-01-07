; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa_patches.c_hdaa_patch_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa_patches.c_hdaa_patch_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32 }

@HDA_CODEC_ALC255 = common dso_local global i32 0, align 4
@HDA_CODEC_ALC256 = common dso_local global i32 0, align 4
@APPLE_INTEL_MAC = common dso_local global i32 0, align 4
@HDA_CODEC_ALC269 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdaa_patch_direct(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %7 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %8 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %11 = call i32 @hdaa_codec_id(%struct.hdaa_devinfo* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %13 = call i32 @hdaa_card_id(%struct.hdaa_devinfo* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %36 [
    i32 136, label %15
    i32 135, label %15
    i32 134, label %15
    i32 133, label %15
    i32 132, label %15
    i32 131, label %15
    i32 130, label %15
    i32 129, label %15
    i32 128, label %22
    i32 137, label %29
  ]

15:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %18 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HDA_CMD_12BIT(i32 0, i32 %19, i32 3992, i32 1)
  %21 = call i32 @hda_command(i32 %16, i32 %20)
  br label %22

22:                                               ; preds = %1, %15
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %25 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @HDA_CMD_12BIT(i32 0, i32 %26, i32 3976, i32 192)
  %28 = call i32 @hda_command(i32 %23, i32 %27)
  br label %36

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, -646441886
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @hdaa_write_coef(i32 %33, i32 32, i32 7, i32 1995)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %1, %35, %22
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @HDA_CODEC_ALC255, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @HDA_CODEC_ALC256, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @hdaa_read_coef(i32 %45, i32 32, i32 70)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, 12288
  %50 = call i32 @hdaa_write_coef(i32 %47, i32 32, i32 70, i32 %49)
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @APPLE_INTEL_MAC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %58 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @HDA_CMD_12BIT(i32 0, i32 %59, i32 2023, i32 0)
  %61 = call i32 @hda_command(i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %55, %51
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @HDA_CODEC_ALC269, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 383979587
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, -2095443901
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, -2092298173
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, -2087186365
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, -2083647421
  br i1 %80, label %81, label %88

81:                                               ; preds = %78, %75, %72, %69, %66
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @hdaa_read_coef(i32 %82, i32 32, i32 7)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, 128
  %87 = call i32 @hdaa_write_coef(i32 %84, i32 32, i32 7, i32 %86)
  br label %88

88:                                               ; preds = %81, %78
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 353833027
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @hdaa_write_coef(i32 %92, i32 32, i32 18, i32 10240)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %62
  ret void
}

declare dso_local i32 @hdaa_codec_id(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_card_id(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_12BIT(i32, i32, i32, i32) #1

declare dso_local i32 @hdaa_write_coef(i32, i32, i32, i32) #1

declare dso_local i32 @hdaa_read_coef(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
