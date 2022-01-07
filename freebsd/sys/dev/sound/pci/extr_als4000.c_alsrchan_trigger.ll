; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alsrchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_alsrchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { %struct.sc_info* }
%struct.sc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @alsrchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsrchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %10, %struct.sc_chinfo** %7, align 8
  %11 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %12 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %11, i32 0, i32 0
  %13 = load %struct.sc_info*, %struct.sc_info** %12, align 8
  store %struct.sc_info* %13, %struct.sc_info** %8, align 8
  %14 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %15 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_mtxlock(i32 %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 128, label %22
    i32 130, label %22
  ]

19:                                               ; preds = %3
  %20 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %21 = call i32 @als_capture_start(%struct.sc_chinfo* %20)
  br label %25

22:                                               ; preds = %3, %3
  %23 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %24 = call i32 @als_capture_stop(%struct.sc_chinfo* %23)
  br label %25

25:                                               ; preds = %3, %22, %19
  %26 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_mtxunlock(i32 %28)
  ret i32 0
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @als_capture_start(%struct.sc_chinfo*) #1

declare dso_local i32 @als_capture_stop(%struct.sc_chinfo*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
