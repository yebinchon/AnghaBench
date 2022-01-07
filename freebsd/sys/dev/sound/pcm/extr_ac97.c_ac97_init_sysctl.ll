; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_init_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_init_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32*, i32 }

@AC97_REG_POWER = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"eapd\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_snd_ac97_eapd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"AC97 External Amplifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ac97_info*)* @ac97_init_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac97_init_sysctl(%struct.ac97_info* %0) #0 {
  %2 = alloca %struct.ac97_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ac97_info* %0, %struct.ac97_info** %2, align 8
  %5 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %6 = icmp eq %struct.ac97_info* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %9 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %60

13:                                               ; preds = %7
  %14 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %15 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @snd_mtxlock(i32 %16)
  %18 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %19 = load i32, i32* @AC97_REG_POWER, align 4
  %20 = call i32 @ac97_rdcd(%struct.ac97_info* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %22 = load i32, i32* @AC97_REG_POWER, align 4
  %23 = load i32, i32* %3, align 4
  %24 = xor i32 %23, 32768
  %25 = call i32 @ac97_wrcd(%struct.ac97_info* %21, i32 %22, i32 %24)
  %26 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %27 = load i32, i32* @AC97_REG_POWER, align 4
  %28 = call i32 @ac97_rdcd(%struct.ac97_info* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %30 = load i32, i32* @AC97_REG_POWER, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ac97_wrcd(%struct.ac97_info* %29, i32 %30, i32 %31)
  %33 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %34 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @snd_mtxunlock(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 32768
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 32768
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %13
  br label %60

43:                                               ; preds = %13
  %44 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %45 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @device_get_sysctl_ctx(i32* %46)
  %48 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %49 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @device_get_sysctl_tree(i32* %50)
  %52 = call i32 @SYSCTL_CHILDREN(i32 %51)
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLTYPE_INT, align 4
  %55 = load i32, i32* @CTLFLAG_RW, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %58 = load i32, i32* @sysctl_hw_snd_ac97_eapd, align 4
  %59 = call i32 @SYSCTL_ADD_PROC(i32 %47, i32 %52, i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %56, %struct.ac97_info* %57, i32 8, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %43, %42, %12
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @ac97_rdcd(%struct.ac97_info*, i32) #1

declare dso_local i32 @ac97_wrcd(%struct.ac97_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.ac97_info*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
