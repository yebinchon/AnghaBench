; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_channel_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_channel_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @hdaa_channel_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_channel_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdaa_chan*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.hdaa_chan*
  store %struct.hdaa_chan* %11, %struct.hdaa_chan** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @PCMTRIG_COMMON(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load %struct.hdaa_chan*, %struct.hdaa_chan** %8, align 8
  %18 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hdaa_lock(i32 %19)
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %25
    i32 130, label %25
  ]

22:                                               ; preds = %16
  %23 = load %struct.hdaa_chan*, %struct.hdaa_chan** %8, align 8
  %24 = call i32 @hdaa_channel_start(%struct.hdaa_chan* %23)
  store i32 %24, i32* %9, align 4
  br label %29

25:                                               ; preds = %16, %16
  %26 = load %struct.hdaa_chan*, %struct.hdaa_chan** %8, align 8
  %27 = call i32 @hdaa_channel_stop(%struct.hdaa_chan* %26)
  br label %29

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %25, %22
  %30 = load %struct.hdaa_chan*, %struct.hdaa_chan** %8, align 8
  %31 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hdaa_unlock(i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @hdaa_lock(i32) #1

declare dso_local i32 @hdaa_channel_start(%struct.hdaa_chan*) #1

declare dso_local i32 @hdaa_channel_stop(%struct.hdaa_chan*) #1

declare dso_local i32 @hdaa_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
