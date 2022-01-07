; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_smartpqi_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.pqisrc_softstate = type { %struct.TYPE_4__*** }
%struct.TYPE_4__ = type { i32 }
%struct.ccb_getdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_CTLR_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @smartpqi_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smartpqi_async(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pqisrc_softstate*, align 8
  %10 = alloca %struct.ccb_getdev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.pqisrc_softstate*
  store %struct.pqisrc_softstate* %14, %struct.pqisrc_softstate** %9, align 8
  %15 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %56 [
    i32 128, label %17
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %19, %struct.ccb_getdev** %10, align 8
  %20 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %21 = icmp eq %struct.ccb_getdev* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %57

23:                                               ; preds = %17
  %24 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %25 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* @PQI_CTLR_INDEX, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = icmp ule i64 %28, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %23
  %34 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %9, align 8
  %35 = icmp ne %struct.pqisrc_softstate* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %9, align 8
  %38 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %39, i64 %40
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %44 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %12, align 8
  %49 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @smartpqi_adjust_queue_depth(%struct.cam_path* %49, i32 %52)
  br label %54

54:                                               ; preds = %36, %33
  br label %55

55:                                               ; preds = %54, %23
  br label %57

56:                                               ; preds = %4
  br label %57

57:                                               ; preds = %56, %55, %22
  %58 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @smartpqi_adjust_queue_depth(%struct.cam_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
