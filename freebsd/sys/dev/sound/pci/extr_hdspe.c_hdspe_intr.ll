; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { i32 (%struct.sc_pcminfo*)* }
%struct.sc_info = type { i32, i32 }

@HDSPE_STATUS_REG = common dso_local global i32 0, align 4
@HDSPE_AUDIO_IRQ_PENDING = common dso_local global i32 0, align 4
@HDSPE_INTERRUPT_ACK = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hdspe_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdspe_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_pcminfo*, align 8
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.sc_info*
  store %struct.sc_info* %11, %struct.sc_info** %4, align 8
  %12 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %13 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @snd_mtxlock(i32 %14)
  %16 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %17 = load i32, i32* @HDSPE_STATUS_REG, align 4
  %18 = call i32 @hdspe_read_1(%struct.sc_info* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @HDSPE_AUDIO_IRQ_PENDING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %1
  %24 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_get_children(i32 %26, i32** %5, i32* %6)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %68

30:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.sc_pcminfo* @device_get_ivars(i32 %40)
  store %struct.sc_pcminfo* %41, %struct.sc_pcminfo** %3, align 8
  %42 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %43 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %42, i32 0, i32 0
  %44 = load i32 (%struct.sc_pcminfo*)*, i32 (%struct.sc_pcminfo*)** %43, align 8
  %45 = icmp ne i32 (%struct.sc_pcminfo*)* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %48 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %47, i32 0, i32 0
  %49 = load i32 (%struct.sc_pcminfo*)*, i32 (%struct.sc_pcminfo*)** %48, align 8
  %50 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %3, align 8
  %51 = call i32 %49(%struct.sc_pcminfo* %50)
  br label %52

52:                                               ; preds = %46, %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %58 = load i32, i32* @HDSPE_INTERRUPT_ACK, align 4
  %59 = call i32 @hdspe_write_1(%struct.sc_info* %57, i32 %58, i32 0)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @M_TEMP, align 4
  %62 = call i32 @free(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %1
  %64 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @snd_mtxunlock(i32 %66)
  br label %68

68:                                               ; preds = %63, %29
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @hdspe_read_1(%struct.sc_info*, i32) #1

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local %struct.sc_pcminfo* @device_get_ivars(i32) #1

declare dso_local i32 @hdspe_write_1(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
