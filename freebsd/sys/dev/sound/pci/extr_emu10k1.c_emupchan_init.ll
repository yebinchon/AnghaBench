; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emupchan_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emupchan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbuf = type { i32 }
%struct.pcm_channel = type { i32 }
%struct.sc_info = type { i32, i32, i32, %struct.sc_pchinfo* }
%struct.sc_pchinfo = type { i32, i32, %struct.snd_dbuf*, i8*, i8*, i32, %struct.pcm_channel*, %struct.sc_info* }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"emupchan_init: bad direction\00", align 1
@AFMT_U8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, %struct.snd_dbuf*, %struct.pcm_channel*, i32)* @emupchan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emupchan_init(i32 %0, i8* %1, %struct.snd_dbuf* %2, %struct.pcm_channel* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_dbuf*, align 8
  %9 = alloca %struct.pcm_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sc_info*, align 8
  %12 = alloca %struct.sc_pchinfo*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.snd_dbuf* %2, %struct.snd_dbuf** %8, align 8
  store %struct.pcm_channel* %3, %struct.pcm_channel** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.sc_info*
  store %struct.sc_info* %15, %struct.sc_info** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @PCMDIR_PLAY, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 3
  %23 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %22, align 8
  %24 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %23, i64 %28
  store %struct.sc_pchinfo* %29, %struct.sc_pchinfo** %12, align 8
  %30 = load %struct.snd_dbuf*, %struct.snd_dbuf** %8, align 8
  %31 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %32 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %31, i32 0, i32 2
  store %struct.snd_dbuf* %30, %struct.snd_dbuf** %32, align 8
  %33 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %34 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %35 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %34, i32 0, i32 7
  store %struct.sc_info* %33, %struct.sc_info** %35, align 8
  %36 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %37 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %38 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %37, i32 0, i32 6
  store %struct.pcm_channel* %36, %struct.pcm_channel** %38, align 8
  %39 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 2
  %43 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %44 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @AFMT_U8, align 4
  %46 = call i32 @SND_FORMAT(i32 %45, i32 1, i32 0)
  %47 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %48 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %50 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %49, i32 0, i32 1
  store i32 8000, i32* %50, align 4
  %51 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %52 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_mtxlock(i32 %53)
  %55 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %56 = call i8* @emu_valloc(%struct.sc_info* %55)
  %57 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %58 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %60 = call i8* @emu_valloc(%struct.sc_info* %59)
  %61 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %62 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %64 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @snd_mtxunlock(i32 %65)
  %67 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %68 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %69 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %72 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.sc_info*, %struct.sc_info** %11, align 8
  %75 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  %78 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %77, i32 0, i32 2
  %79 = load %struct.snd_dbuf*, %struct.snd_dbuf** %78, align 8
  %80 = call i64 @emu_vinit(%struct.sc_info* %67, i8* %70, i8* %73, i32 %76, %struct.snd_dbuf* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %5
  br label %85

83:                                               ; preds = %5
  %84 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %12, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi %struct.sc_pchinfo* [ null, %82 ], [ %84, %83 ]
  %87 = bitcast %struct.sc_pchinfo* %86 to i8*
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  ret i8* %88
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SND_FORMAT(i32, i32, i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i8* @emu_valloc(%struct.sc_info*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i64 @emu_vinit(%struct.sc_info*, i8*, i8*, i32, %struct.snd_dbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
