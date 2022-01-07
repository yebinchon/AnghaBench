; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_jmicron_meta_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_jmicron_meta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmicron_raid_conf = type { i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@JMICRON_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"JMicron signature check failed on %s\00", align 1
@M_MD_JMICRON = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"JMicron checksum check failed on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jmicron_raid_conf* (%struct.g_consumer*)* @jmicron_meta_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jmicron_raid_conf* @jmicron_meta_read(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.jmicron_raid_conf*, align 8
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca %struct.jmicron_raid_conf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  store %struct.g_provider* %13, %struct.g_provider** %4, align 8
  %14 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %15 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @g_read_data(%struct.g_consumer* %14, i64 %21, i64 %24, i32* %7)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %30 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  store %struct.jmicron_raid_conf* null, %struct.jmicron_raid_conf** %2, align 8
  br label %92

34:                                               ; preds = %1
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to %struct.jmicron_raid_conf*
  store %struct.jmicron_raid_conf* %36, %struct.jmicron_raid_conf** %5, align 8
  %37 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %5, align 8
  %38 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @JMICRON_MAGIC, align 4
  %41 = load i32, i32* @JMICRON_MAGIC, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = call i64 @strncmp(i32 %39, i32 %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %47 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @g_free(i8* %50)
  store %struct.jmicron_raid_conf* null, %struct.jmicron_raid_conf** %2, align 8
  br label %92

52:                                               ; preds = %34
  %53 = load i32, i32* @M_MD_JMICRON, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = call %struct.jmicron_raid_conf* @malloc(i32 4, i32 %53, i32 %54)
  store %struct.jmicron_raid_conf* %55, %struct.jmicron_raid_conf** %5, align 8
  %56 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %59 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @min(i32 4, i64 %60)
  %62 = call i32 @memcpy(%struct.jmicron_raid_conf* %56, i8* %57, i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @g_free(i8* %63)
  store i64 0, i64* %9, align 8
  %65 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %5, align 8
  %66 = bitcast %struct.jmicron_raid_conf* %65 to i64*
  store i64* %66, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %76, %52
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 64
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i64*, i64** %10, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %10, align 8
  %73 = load i64, i64* %71, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %67

79:                                               ; preds = %67
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %84 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %5, align 8
  %88 = load i32, i32* @M_MD_JMICRON, align 4
  %89 = call i32 @free(%struct.jmicron_raid_conf* %87, i32 %88)
  store %struct.jmicron_raid_conf* null, %struct.jmicron_raid_conf** %2, align 8
  br label %92

90:                                               ; preds = %79
  %91 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %5, align 8
  store %struct.jmicron_raid_conf* %91, %struct.jmicron_raid_conf** %2, align 8
  br label %92

92:                                               ; preds = %90, %82, %45, %28
  %93 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %2, align 8
  ret %struct.jmicron_raid_conf* %93
}

declare dso_local i8* @g_read_data(%struct.g_consumer*, i64, i64, i32*) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local %struct.jmicron_raid_conf* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.jmicron_raid_conf*, i8*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @free(%struct.jmicron_raid_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
