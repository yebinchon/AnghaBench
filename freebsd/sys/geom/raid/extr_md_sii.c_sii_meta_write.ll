; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i64 }
%struct.sii_raid_conf = type { i64 }

@M_MD_SII = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot write metadata to %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.sii_raid_conf*)* @sii_meta_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii_meta_write(%struct.g_consumer* %0, %struct.sii_raid_conf* %1) #0 {
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.sii_raid_conf*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  store %struct.sii_raid_conf* %1, %struct.sii_raid_conf** %4, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  store %struct.g_provider* %13, %struct.g_provider** %5, align 8
  %14 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %4, align 8
  %15 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %4, align 8
  %17 = bitcast %struct.sii_raid_conf* %16 to i64*
  store i64* %17, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %27, %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 159
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i64*, i64** %10, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %10, align 8
  %24 = load i64, i64* %22, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %18

30:                                               ; preds = %18
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %4, align 8
  %33 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @M_MD_SII, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @malloc(i32 %38, i32 %39, i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %4, align 8
  %46 = call i32 @memcpy(i8* %44, %struct.sii_raid_conf* %45, i32 8)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %78, %30
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %81

50:                                               ; preds = %47
  %51 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %52 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %53 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %56 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 512, %58
  %60 = add nsw i32 1, %59
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %54, %62
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %66 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @g_write_data(%struct.g_consumer* %51, i64 %63, i8* %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %50
  %72 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %73 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  br label %81

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %47

81:                                               ; preds = %71, %47
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* @M_MD_SII, align 4
  %84 = call i32 @free(i8* %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.sii_raid_conf*, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i8*, i32) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
