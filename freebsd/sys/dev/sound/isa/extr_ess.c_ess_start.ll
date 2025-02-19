; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_chinfo = type { i32, i64, i32, i32, i32, i32, %struct.ess_info* }
%struct.ess_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@DSP_CMD_SPKON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_chinfo*)* @ess_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_start(%struct.ess_chinfo* %0) #0 {
  %2 = alloca %struct.ess_chinfo*, align 8
  %3 = alloca %struct.ess_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ess_chinfo* %0, %struct.ess_chinfo** %2, align 8
  %5 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %6 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %5, i32 0, i32 6
  %7 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  store %struct.ess_info* %7, %struct.ess_info** %3, align 8
  %8 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCMDIR_PLAY, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %16 = call i32 @ess_lock(%struct.ess_info* %15)
  %17 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %18 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %19 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %22 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %25 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %28 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %31 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ess_setupch(%struct.ess_info* %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %35 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.ess_chinfo*, %struct.ess_chinfo** %2, align 8
  %37 = getelementptr inbounds %struct.ess_chinfo, %struct.ess_chinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %42 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %43 = call i32 @ess_read(%struct.ess_info* %42, i32 184)
  %44 = or i32 %43, 1
  %45 = call i32 @ess_write(%struct.ess_info* %41, i32 184, i32 %44)
  br label %52

46:                                               ; preds = %1
  %47 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %48 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %49 = call i32 @ess_getmixer(%struct.ess_info* %48, i32 120)
  %50 = or i32 %49, 3
  %51 = call i32 @ess_setmixer(%struct.ess_info* %47, i32 120, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %57 = load i32, i32* @DSP_CMD_SPKON, align 4
  %58 = call i32 @ess_cmd(%struct.ess_info* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %61 = call i32 @ess_unlock(%struct.ess_info* %60)
  ret i32 0
}

declare dso_local i32 @ess_lock(%struct.ess_info*) #1

declare dso_local i32 @ess_setupch(%struct.ess_info*, i32, i32, i32, i32, i32) #1

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
