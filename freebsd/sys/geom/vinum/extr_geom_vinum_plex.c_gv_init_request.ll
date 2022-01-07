; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_init_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_sd = type { i64, i32, %struct.gv_drive* }
%struct.gv_drive = type { %struct.g_consumer* }
%struct.g_consumer = type { i32 }
%struct.bio = type { %struct.gv_sd*, i8*, i8*, i32, i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"gv_init_request: NULL s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gv_init_request: NULL d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"gv_init_request: NULL cp\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"subdisk '%s' init: write failed at offset %jd (drive offset %jd); out of memory\00", align 1
@BIO_WRITE = common dso_local global i32 0, align 4
@gv_done = common dso_local global i8* null, align 8
@GV_BIO_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_init_request(%struct.gv_sd* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.gv_sd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gv_drive*, align 8
  %10 = alloca %struct.g_consumer*, align 8
  %11 = alloca %struct.bio*, align 8
  %12 = alloca %struct.bio*, align 8
  store %struct.gv_sd* %0, %struct.gv_sd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %14 = icmp ne %struct.gv_sd* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %18 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %17, i32 0, i32 2
  %19 = load %struct.gv_drive*, %struct.gv_drive** %18, align 8
  store %struct.gv_drive* %19, %struct.gv_drive** %9, align 8
  %20 = load %struct.gv_drive*, %struct.gv_drive** %9, align 8
  %21 = icmp ne %struct.gv_drive* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.gv_drive*, %struct.gv_drive** %9, align 8
  %25 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %24, i32 0, i32 0
  %26 = load %struct.g_consumer*, %struct.g_consumer** %25, align 8
  store %struct.g_consumer* %26, %struct.g_consumer** %10, align 8
  %27 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %28 = icmp ne %struct.g_consumer* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %31 = call %struct.bio* (...) @g_new_bio()
  store %struct.bio* %31, %struct.bio** %11, align 8
  %32 = load %struct.bio*, %struct.bio** %11, align 8
  %33 = icmp eq %struct.bio* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %4
  %35 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %36 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %39 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i8*, i8** %6, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %41, i32 %43)
  br label %96

45:                                               ; preds = %4
  %46 = load i32, i32* @BIO_WRITE, align 4
  %47 = load %struct.bio*, %struct.bio** %11, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.bio*, %struct.bio** %11, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** @gv_done, align 8
  %53 = load %struct.bio*, %struct.bio** %11, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.bio*, %struct.bio** %11, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.bio*, %struct.bio** %11, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @GV_BIO_INIT, align 4
  %61 = load %struct.bio*, %struct.bio** %11, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.bio*, %struct.bio** %11, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %69 = load %struct.bio*, %struct.bio** %11, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 0
  store %struct.gv_sd* %68, %struct.gv_sd** %70, align 8
  %71 = load %struct.bio*, %struct.bio** %11, align 8
  %72 = call %struct.bio* @g_clone_bio(%struct.bio* %71)
  store %struct.bio* %72, %struct.bio** %12, align 8
  %73 = load %struct.bio*, %struct.bio** %12, align 8
  %74 = icmp eq %struct.bio* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %45
  %76 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %77 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %80 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i8*, i8** %6, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %82, i32 %84)
  br label %96

86:                                               ; preds = %45
  %87 = load i8*, i8** @gv_done, align 8
  %88 = load %struct.bio*, %struct.bio** %12, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %91 = load %struct.bio*, %struct.bio** %12, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 0
  store %struct.gv_sd* %90, %struct.gv_sd** %92, align 8
  %93 = load %struct.bio*, %struct.bio** %12, align 8
  %94 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %95 = call i32 @g_io_request(%struct.bio* %93, %struct.g_consumer* %94)
  br label %96

96:                                               ; preds = %86, %75, %34
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_new_bio(...) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
