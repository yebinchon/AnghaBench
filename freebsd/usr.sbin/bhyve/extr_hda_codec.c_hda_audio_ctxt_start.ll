; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_audio_ctxt_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_audio_ctxt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_audio_ctxt = type { i32, i32 (i32)*, i32, i32, i32, %struct.hda_audio_ctxt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_audio_ctxt*)* @hda_audio_ctxt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_audio_ctxt_start(%struct.hda_audio_ctxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_audio_ctxt*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_audio_ctxt* %0, %struct.hda_audio_ctxt** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %6 = call i32 @assert(%struct.hda_audio_ctxt* %5)
  %7 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %8 = getelementptr inbounds %struct.hda_audio_ctxt, %struct.hda_audio_ctxt* %7, i32 0, i32 5
  %9 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %8, align 8
  %10 = call i32 @assert(%struct.hda_audio_ctxt* %9)
  %11 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %12 = getelementptr inbounds %struct.hda_audio_ctxt, %struct.hda_audio_ctxt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %18 = getelementptr inbounds %struct.hda_audio_ctxt, %struct.hda_audio_ctxt* %17, i32 0, i32 2
  %19 = call i32 @pthread_mutex_lock(i32* %18)
  %20 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %21 = getelementptr inbounds %struct.hda_audio_ctxt, %struct.hda_audio_ctxt* %20, i32 0, i32 1
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.hda_audio_ctxt, %struct.hda_audio_ctxt* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %31 = getelementptr inbounds %struct.hda_audio_ctxt, %struct.hda_audio_ctxt* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %33 = getelementptr inbounds %struct.hda_audio_ctxt, %struct.hda_audio_ctxt* %32, i32 0, i32 3
  %34 = call i32 @pthread_cond_signal(i32* %33)
  br label %35

35:                                               ; preds = %29, %16
  %36 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %3, align 8
  %37 = getelementptr inbounds %struct.hda_audio_ctxt, %struct.hda_audio_ctxt* %36, i32 0, i32 2
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @assert(%struct.hda_audio_ctxt*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
