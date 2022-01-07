; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_chinfo = type { i64, i32, i32, %struct.sb_info* }
%struct.sb_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@DSP_CMD_SPKON = common dso_local global i32 0, align 4
@BD_F_HISPEED = common dso_local global i32 0, align 4
@BD_F_DMARUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sb_chinfo*)* @sb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_start(%struct.sb_chinfo* %0) #0 {
  %2 = alloca %struct.sb_chinfo*, align 8
  %3 = alloca %struct.sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sb_chinfo* %0, %struct.sb_chinfo** %2, align 8
  %8 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %8, i32 0, i32 3
  %10 = load %struct.sb_info*, %struct.sb_info** %9, align 8
  store %struct.sb_info* %10, %struct.sb_info** %3, align 8
  %11 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %12 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCMDIR_PLAY, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %4, align 4
  %18 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %19 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @AFMT_CHANNEL(i32 %20)
  %22 = icmp sgt i32 %21, 1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sb_chinfo*, %struct.sb_chinfo** %2, align 8
  %26 = getelementptr inbounds %struct.sb_chinfo, %struct.sb_chinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %31 = call i32 @sb_lock(%struct.sb_info* %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %36 = load i32, i32* @DSP_CMD_SPKON, align 4
  %37 = call i32 @sb_cmd(%struct.sb_info* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %40 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BD_F_HISPEED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 144, i32 152
  store i32 %49, i32* %7, align 4
  br label %55

50:                                               ; preds = %38
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 28, i32 44
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 2, i32 0
  %61 = call i32 @sb_setmixer(%struct.sb_info* %56, i32 14, i32 %60)
  %62 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @sb_cmd2(%struct.sb_info* %62, i32 72, i32 %63)
  %65 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @sb_cmd(%struct.sb_info* %65, i32 %66)
  %68 = load i32, i32* @BD_F_DMARUN, align 4
  %69 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %70 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %74 = call i32 @sb_unlock(%struct.sb_info* %73)
  ret i32 0
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @sb_lock(%struct.sb_info*) #1

declare dso_local i32 @sb_cmd(%struct.sb_info*, i32) #1

declare dso_local i32 @sb_setmixer(%struct.sb_info*, i32, i32) #1

declare dso_local i32 @sb_cmd2(%struct.sb_info*, i32, i32) #1

declare dso_local i32 @sb_unlock(%struct.sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
