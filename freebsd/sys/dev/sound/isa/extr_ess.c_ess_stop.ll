; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_chinfo = type { i64, i32, i32, %struct.ess_info* }
%struct.ess_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@DSP_CMD_SPKOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_chinfo*)* @ess_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_stop(%struct.ess_chinfo* %0) #0 {
  %2 = alloca %struct.ess_chinfo*, align 8
  %3 = alloca %struct.ess_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ess_chinfo* %0, %struct.ess_chinfo** %2, align 8
  %5 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %6 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %5, i32 0, i32 3
  %7 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  store %struct.ess_info* %7, %struct.ess_info** %3, align 8
  %8 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCMDIR_PLAY, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %16 = call i32 @ess_lock(%struct.ess_info* %15)
  %17 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %18 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %17, i32 0, i32 1
  store i32 1, i32* %18, align 8
  %19 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %20 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %25 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %26 = call i32 @ess_read(%struct.ess_info* %25, i32 184)
  %27 = and i32 %26, -5
  %28 = call i32 @ess_write(%struct.ess_info* %24, i32 184, i32 %27)
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %31 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %32 = call i32 @ess_getmixer(%struct.ess_info* %31, i32 120)
  %33 = and i32 %32, -17
  %34 = call i32 @ess_setmixer(%struct.ess_info* %30, i32 120, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %40 = load i32, i32* @DSP_CMD_SPKOFF, align 4
  %41 = call i32 @ess_cmd(%struct.ess_info* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %44 = call i32 @ess_unlock(%struct.ess_info* %43)
  ret i32 0
}

declare dso_local i32 @ess_lock(%struct.ess_info*) #1

declare dso_local i32 @ess_write(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @ess_read(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_setmixer(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @ess_getmixer(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_cmd(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_unlock(%struct.ess_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
