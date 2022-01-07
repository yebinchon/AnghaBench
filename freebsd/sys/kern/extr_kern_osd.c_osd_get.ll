; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32** }
%struct.osd = type { i64, i8** }
%struct.rm_priotracker = type { i32 }

@OSD_FIRST = common dso_local global i64 0, align 8
@OSD_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Invalid type.\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid slot.\00", align 1
@osdm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Unused slot.\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Slot doesn't exist (type=%u, slot=%u).\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Returning slot value (type=%u, slot=%u, value=%p).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @osd_get(i64 %0, %struct.osd* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.osd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rm_priotracker, align 4
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.osd* %1, %struct.osd** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @OSD_FIRST, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @OSD_LAST, align 8
  %15 = icmp ule i64 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ false, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @rm_rlock(i32* %39, %struct.rm_priotracker* %7)
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.osd*, %struct.osd** %5, align 8
  %43 = getelementptr inbounds %struct.osd, %struct.osd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %16
  store i8* null, i8** %8, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 (i8*, i64, i64, ...) @OSD_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %47, i64 %48)
  br label %62

50:                                               ; preds = %16
  %51 = load %struct.osd*, %struct.osd** %5, align 8
  %52 = getelementptr inbounds %struct.osd, %struct.osd* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %8, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i8*, i64, i64, ...) @OSD_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %58, i64 %59, i8* %60)
  br label %62

62:                                               ; preds = %50, %46
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @rm_runlock(i32* %66, %struct.rm_priotracker* %7)
  %68 = load i8*, i8** %8, align 8
  ret i8* %68
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @OSD_DEBUG(i8*, i64, i64, ...) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
