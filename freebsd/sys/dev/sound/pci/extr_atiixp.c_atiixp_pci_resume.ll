; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i64, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATI_IXP_CHN_SUSPEND = common dso_local global i32 0, align 4
@PCMTRIG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atiixp_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.atiixp_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.atiixp_info* @pcm_getdevinfo(i32 %5)
  store %struct.atiixp_info* %6, %struct.atiixp_info** %4, align 8
  %7 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %8 = call i32 @atiixp_lock(%struct.atiixp_info* %7)
  %9 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %10 = call i32 @atiixp_reset_aclink(%struct.atiixp_info* %9)
  %11 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %12 = call i32 @atiixp_unlock(%struct.atiixp_info* %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mixer_reinit(i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %115

20:                                               ; preds = %1
  %21 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %22 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %28 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %34 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %33, i32 0, i32 2
  %35 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %36 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @atiixp_chan_setformat(i32* null, %struct.TYPE_3__* %34, i64 %38)
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %42 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATI_IXP_CHN_SUSPEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load i32, i32* @ATI_IXP_CHN_SUSPEND, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %52 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %50
  store i32 %55, i32* %53, align 8
  %56 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %57 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %56, i32 0, i32 2
  %58 = load i32, i32* @PCMTRIG_START, align 4
  %59 = call i32 @atiixp_chan_trigger(i32* null, %struct.TYPE_3__* %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %40
  br label %61

61:                                               ; preds = %60, %20
  %62 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %63 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %69 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %75 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %74, i32 0, i32 1
  %76 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %77 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @atiixp_chan_setformat(i32* null, %struct.TYPE_3__* %75, i64 %79)
  br label %81

81:                                               ; preds = %73, %67
  %82 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %83 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ATI_IXP_CHN_SUSPEND, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load i32, i32* @ATI_IXP_CHN_SUSPEND, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %93 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %91
  store i32 %96, i32* %94, align 8
  %97 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %98 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %97, i32 0, i32 1
  %99 = load i32, i32* @PCMTRIG_START, align 4
  %100 = call i32 @atiixp_chan_trigger(i32* null, %struct.TYPE_3__* %98, i32 %99)
  br label %101

101:                                              ; preds = %89, %81
  br label %102

102:                                              ; preds = %101, %61
  %103 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %104 = call i32 @atiixp_lock(%struct.atiixp_info* %103)
  %105 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %106 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %111 = call i32 @atiixp_enable_interrupts(%struct.atiixp_info* %110)
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %114 = call i32 @atiixp_unlock(%struct.atiixp_info* %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %112, %16
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.atiixp_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @atiixp_lock(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_reset_aclink(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_unlock(%struct.atiixp_info*) #1

declare dso_local i32 @mixer_reinit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @atiixp_chan_setformat(i32*, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @atiixp_chan_trigger(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @atiixp_enable_interrupts(%struct.atiixp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
