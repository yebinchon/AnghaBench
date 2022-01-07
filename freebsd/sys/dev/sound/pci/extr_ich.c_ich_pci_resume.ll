; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, %struct.sc_chinfo*, i32 }
%struct.sc_chinfo = type { i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"unable to reinitialize the card\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@PCMTRIG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ich_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ich_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sc_chinfo*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.sc_info* @pcm_getdevinfo(i32 %7)
  store %struct.sc_info* %8, %struct.sc_info** %4, align 8
  %9 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %10 = call i32 @ICH_LOCK(%struct.sc_info* %9)
  %11 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %12 = call i32 @ich_init(%struct.sc_info* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %18 = call i32 @ICH_UNLOCK(%struct.sc_info* %17)
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %82

20:                                               ; preds = %1
  %21 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %22 = call i32 @ich_pci_codec_reset(%struct.sc_info* %21)
  %23 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %24 = call i32 @ICH_UNLOCK(%struct.sc_info* %23)
  %25 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  %35 = call i32 @ac97_setextmode(i32 %27, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @mixer_reinit(i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %82

43:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %49 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %48, i32 0, i32 2
  %50 = load %struct.sc_chinfo*, %struct.sc_chinfo** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %50, i64 %52
  store %struct.sc_chinfo* %53, %struct.sc_chinfo** %6, align 8
  %54 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 2
  %56 = load %struct.sc_chinfo*, %struct.sc_chinfo** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %56, i64 %58
  %60 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %47
  %64 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %65 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %66 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ichchan_setblocksize(i32 0, %struct.sc_chinfo* %64, i32 %67)
  %69 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %70 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %71 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ichchan_setspeed(i32 0, %struct.sc_chinfo* %69, i32 %72)
  %74 = load %struct.sc_chinfo*, %struct.sc_chinfo** %6, align 8
  %75 = load i32, i32* @PCMTRIG_START, align 4
  %76 = call i32 @ichchan_trigger(i32 0, %struct.sc_chinfo* %74, i32 %75)
  br label %77

77:                                               ; preds = %63, %47
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %44

81:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %39, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @ICH_LOCK(%struct.sc_info*) #1

declare dso_local i32 @ich_init(%struct.sc_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ICH_UNLOCK(%struct.sc_info*) #1

declare dso_local i32 @ich_pci_codec_reset(%struct.sc_info*) #1

declare dso_local i32 @ac97_setextmode(i32, i32) #1

declare dso_local i32 @mixer_reinit(i32) #1

declare dso_local i32 @ichchan_setblocksize(i32, %struct.sc_chinfo*, i32) #1

declare dso_local i32 @ichchan_setspeed(i32, %struct.sc_chinfo*, i32) #1

declare dso_local i32 @ichchan_trigger(i32, %struct.sc_chinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
