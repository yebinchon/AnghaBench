; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32** }
%struct.osd = type { i64, i32* }
%struct.rm_priotracker = type { i32 }

@OSD_FIRST = common dso_local global i64 0, align 8
@OSD_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Invalid type.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Non-null osd_slots.\00", align 1
@osdm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Unused slot (type=%u, slot=%u).\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Object exit (type=%u).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_exit(i64 %0, %struct.osd* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.osd*, align 8
  %5 = alloca %struct.rm_priotracker, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.osd* %1, %struct.osd** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @OSD_FIRST, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @OSD_LAST, align 8
  %13 = icmp ule i64 %11, %12
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.osd*, %struct.osd** %4, align 8
  %19 = getelementptr inbounds %struct.osd, %struct.osd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.osd*, %struct.osd** %4, align 8
  %24 = getelementptr inbounds %struct.osd, %struct.osd* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %73

29:                                               ; preds = %14
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @rm_rlock(i32* %33, %struct.rm_priotracker* %5)
  store i64 1, i64* %6, align 8
  br label %35

35:                                               ; preds = %62, %29
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.osd*, %struct.osd** %4, align 8
  %38 = getelementptr inbounds %struct.osd, %struct.osd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ule i64 %36, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load i64, i64* %3, align 8
  %54 = load %struct.osd*, %struct.osd** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @do_osd_del(i64 %53, %struct.osd* %54, i64 %55, i32 0)
  br label %61

57:                                               ; preds = %41
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 (i8*, i64, ...) @OSD_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %35

65:                                               ; preds = %35
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @rm_runlock(i32* %69, %struct.rm_priotracker* %5)
  %71 = load i64, i64* %3, align 8
  %72 = call i32 (i8*, i64, ...) @OSD_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %65, %22
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @do_osd_del(i64, %struct.osd*, i64, i32) #1

declare dso_local i32 @OSD_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
