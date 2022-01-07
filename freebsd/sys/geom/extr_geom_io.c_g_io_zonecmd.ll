; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_io_zonecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_io_zonecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_zone_args = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.g_consumer = type { i32 }
%struct.bio = type { i32, %struct.disk_zone_args, i32*, i32 }

@G_T_BIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bio_zone(%d)\00", align 1
@BIO_ZONE = common dso_local global i32 0, align 4
@DISK_ZONE_REPORT_ZONES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"gzone\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_io_zonecmd(%struct.disk_zone_args* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca %struct.disk_zone_args*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.disk_zone_args* %0, %struct.disk_zone_args** %3, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %4, align 8
  %7 = load i32, i32* @G_T_BIO, align 4
  %8 = load %struct.disk_zone_args*, %struct.disk_zone_args** %3, align 8
  %9 = getelementptr inbounds %struct.disk_zone_args, %struct.disk_zone_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @g_trace(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %12, %struct.bio** %5, align 8
  %13 = load i32, i32* @BIO_ZONE, align 4
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.disk_zone_args*, %struct.disk_zone_args** %3, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = call i32 @bcopy(%struct.disk_zone_args* %18, %struct.disk_zone_args* %20, i32 16)
  %22 = load %struct.disk_zone_args*, %struct.disk_zone_args** %3, align 8
  %23 = getelementptr inbounds %struct.disk_zone_args, %struct.disk_zone_args* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DISK_ZONE_REPORT_ZONES, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.disk_zone_args*, %struct.disk_zone_args** %3, align 8
  %29 = getelementptr inbounds %struct.disk_zone_args, %struct.disk_zone_args* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %41

38:                                               ; preds = %2
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %27
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %44 = call i32 @g_io_request(%struct.bio* %42, %struct.g_consumer* %43)
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = call i32 @biowait(%struct.bio* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %6, align 4
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  %49 = load %struct.disk_zone_args*, %struct.disk_zone_args** %3, align 8
  %50 = call i32 @bcopy(%struct.disk_zone_args* %48, %struct.disk_zone_args* %49, i32 16)
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = call i32 @g_destroy_bio(%struct.bio* %51)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @g_trace(i32, i8*, i64) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @bcopy(%struct.disk_zone_args*, %struct.disk_zone_args*, i32) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i32 @biowait(%struct.bio*, i8*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
