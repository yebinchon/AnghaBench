; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_setstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_setstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"at io 0x%jx, 0x%jx irq %jd bufsz %u %s\00", align 1
@snd_ich = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ICH_DMA_NOCACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"PCI Master abort workaround enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @ich_setstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ich_setstatus(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %5 = load i32, i32* @SND_STATUSLEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* @SND_STATUSLEN, align 4
  %10 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rman_get_start(i32 %12)
  %14 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %15 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rman_get_start(i32 %16)
  %18 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rman_get_start(i32 %20)
  %22 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @snd_ich, align 4
  %26 = call i32 @PCM_KLDSTRING(i32 %25)
  %27 = call i32 @snprintf(i8* %8, i32 %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %21, i32 %24, i32 %26)
  %28 = load i64, i64* @bootverbose, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %1
  %31 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ICH_DMA_NOCACHE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %30, %1
  %43 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %44 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pcm_setstatus(i32 %45, i8* %8)
  %47 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i32) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
