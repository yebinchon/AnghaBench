; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_md_jmicron_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_g_raid_md_jmicron_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmicron_raid_conf = type { i32*, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32*, i32* }

@g_raid_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"********* ATA JMicron RAID Metadata *********\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"signature           <%c%c>\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"version             %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"checksum            0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"disk_id             0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"offset              0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"disk_sectors_high   0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"disk_sectors_low    0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"name                <%.16s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"type                %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"stripe_shift        %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"flags               %04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"spare              \00", align 1
@JMICRON_MAX_SPARE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c" 0x%08x\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"disks              \00", align 1
@JMICRON_MAX_DISKS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [51 x i8] c"=================================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jmicron_raid_conf*)* @g_raid_md_jmicron_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_jmicron_print(%struct.jmicron_raid_conf* %0) #0 {
  %2 = alloca %struct.jmicron_raid_conf*, align 8
  %3 = alloca i32, align 4
  store %struct.jmicron_raid_conf* %0, %struct.jmicron_raid_conf** %2, align 8
  %4 = load i32, i32* @g_raid_debug, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %99

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %10 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %15 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %18)
  %20 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %21 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %25 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %29 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %33 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %37 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %38)
  %40 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %41 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %45 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %44, i32 0, i32 7
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %46)
  %48 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %49 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %53 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %54)
  %56 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %57 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %74, %7
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @JMICRON_MAX_SPARE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %67 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %66, i32 0, i32 11
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %61

77:                                               ; preds = %61
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %93, %77
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @JMICRON_MAX_DISKS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  %86 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %85, i32 0, i32 12
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %80

96:                                               ; preds = %80
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %6
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
