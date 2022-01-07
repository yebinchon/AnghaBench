; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_reinitmixer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_reinitmixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ac97 codec init failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AC97_REG_POWER = common dso_local global i32 0, align 4
@AC97_F_EAPD_INV = common dso_local global i32 0, align 4
@AC97_REGEXT_STAT = common dso_local global i32 0, align 4
@AC97_EXTCAPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"ac97 codec failed to reset extended mode (%x, got %x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ac97 codec reports dac not ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_info*)* @ac97_reinitmixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_reinitmixer(%struct.ac97_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ac97_info*, align 8
  store %struct.ac97_info* %0, %struct.ac97_info** %3, align 8
  %4 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %5 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @snd_mtxlock(i32 %6)
  %8 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %9 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %12 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @AC97_INIT(i32 %10, i32 %13)
  %15 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %16 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %18 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %23 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %27 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snd_mtxunlock(i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  store i32 %30, i32* %2, align 4
  br label %106

31:                                               ; preds = %1
  %32 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %33 = load i32, i32* @AC97_REG_POWER, align 4
  %34 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %35 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 32768, i32 0
  %42 = call i32 @ac97_wrcd(%struct.ac97_info* %32, i32 %33, i32 %41)
  %43 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %44 = call i32 @ac97_reset(%struct.ac97_info* %43)
  %45 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %46 = load i32, i32* @AC97_REG_POWER, align 4
  %47 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %48 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 32768, i32 0
  %55 = call i32 @ac97_wrcd(%struct.ac97_info* %45, i32 %46, i32 %54)
  %56 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %57 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %90, label %60

60:                                               ; preds = %31
  %61 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %62 = load i32, i32* @AC97_REGEXT_STAT, align 4
  %63 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %64 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ac97_wrcd(%struct.ac97_info* %61, i32 %62, i32 %65)
  %67 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %68 = load i32, i32* @AC97_REGEXT_STAT, align 4
  %69 = call i32 @ac97_rdcd(%struct.ac97_info* %67, i32 %68)
  %70 = load i32, i32* @AC97_EXTCAPS, align 4
  %71 = and i32 %69, %70
  %72 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %73 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %60
  %77 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %78 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %81 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %84 = load i32, i32* @AC97_REGEXT_STAT, align 4
  %85 = call i32 @ac97_rdcd(%struct.ac97_info* %83, i32 %84)
  %86 = load i32, i32* @AC97_EXTCAPS, align 4
  %87 = and i32 %85, %86
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %76, %60
  br label %90

90:                                               ; preds = %89, %31
  %91 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %92 = load i32, i32* @AC97_REG_POWER, align 4
  %93 = call i32 @ac97_rdcd(%struct.ac97_info* %91, i32 %92)
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %98 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %96, %90
  %102 = load %struct.ac97_info*, %struct.ac97_info** %3, align 8
  %103 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @snd_mtxunlock(i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %101, %21
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i64 @AC97_INIT(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @ac97_wrcd(%struct.ac97_info*, i32, i32) #1

declare dso_local i32 @ac97_reset(%struct.ac97_info*) #1

declare dso_local i32 @ac97_rdcd(%struct.ac97_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
