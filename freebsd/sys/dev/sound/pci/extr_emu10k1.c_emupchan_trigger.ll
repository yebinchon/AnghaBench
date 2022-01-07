; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emupchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emupchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pchinfo = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.sc_info* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.sc_info = type { i32 }

@PCMTRIG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @emupchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emupchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_pchinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sc_pchinfo*
  store %struct.sc_pchinfo* %11, %struct.sc_pchinfo** %8, align 8
  %12 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %13 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %12, i32 0, i32 3
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PCMTRIG_COMMON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_mtxlock(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PCMTRIG_START, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %29 = call i32 @emu_vsetup(%struct.sc_pchinfo* %28)
  %30 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %31 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %32 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @emu_vwrite(%struct.sc_info* %30, %struct.TYPE_4__* %33)
  %35 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %36 = call i32 @emu_settimer(%struct.sc_info* %35)
  %37 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %38 = call i32 @emu_enatimer(%struct.sc_info* %37, i32 1)
  br label %39

39:                                               ; preds = %27, %19
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PCMTRIG_START, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %46 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %48 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %49 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.sc_pchinfo*, %struct.sc_pchinfo** %8, align 8
  %52 = getelementptr inbounds %struct.sc_pchinfo, %struct.sc_pchinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @emu_vtrigger(%struct.sc_info* %47, %struct.TYPE_4__* %50, i32 %53)
  %55 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_mtxunlock(i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %39, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @emu_vsetup(%struct.sc_pchinfo*) #1

declare dso_local i32 @emu_vwrite(%struct.sc_info*, %struct.TYPE_4__*) #1

declare dso_local i32 @emu_settimer(%struct.sc_info*) #1

declare dso_local i32 @emu_enatimer(%struct.sc_info*, i32) #1

declare dso_local i32 @emu_vtrigger(%struct.sc_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
