; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufobj_wwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufobj_wwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufobj = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"NULL bo in bufobj_wwait\00", align 1
@BO_WWAIT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"bo_wwait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufobj_wwait(%struct.bufobj* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bufobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bufobj* %0, %struct.bufobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %9 = icmp ne %struct.bufobj* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %13 = call i32 @ASSERT_BO_WLOCKED(%struct.bufobj* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %38, %3
  %15 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %16 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load i32, i32* @BO_WWAIT, align 4
  %21 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %22 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %26 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %25, i32 0, i32 0
  %27 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %28 = call i32 @BO_LOCKPTR(%struct.bufobj* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PRIBIO, align 4
  %31 = add nsw i32 %30, 1
  %32 = or i32 %29, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @msleep(i64* %26, i32 %28, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %39

38:                                               ; preds = %19
  br label %14

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ASSERT_BO_WLOCKED(%struct.bufobj*) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @BO_LOCKPTR(%struct.bufobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
