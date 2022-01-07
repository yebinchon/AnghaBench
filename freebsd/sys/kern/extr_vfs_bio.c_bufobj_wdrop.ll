; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufobj_wdrop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufobj_wdrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufobj = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"NULL bo in bufobj_wdrop\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"bufobj_wdrop non-positive count\00", align 1
@BO_WWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufobj_wdrop(%struct.bufobj* %0) #0 {
  %2 = alloca %struct.bufobj*, align 8
  store %struct.bufobj* %0, %struct.bufobj** %2, align 8
  %3 = load %struct.bufobj*, %struct.bufobj** %2, align 8
  %4 = icmp ne %struct.bufobj* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @KASSERT(i32 %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.bufobj*, %struct.bufobj** %2, align 8
  %8 = call i32 @BO_LOCK(%struct.bufobj* %7)
  %9 = load %struct.bufobj*, %struct.bufobj** %2, align 8
  %10 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.bufobj*, %struct.bufobj** %2, align 8
  %16 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.bufobj*, %struct.bufobj** %2, align 8
  %22 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BO_WWAIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i32, i32* @BO_WWAIT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.bufobj*, %struct.bufobj** %2, align 8
  %31 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.bufobj*, %struct.bufobj** %2, align 8
  %35 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %34, i32 0, i32 0
  %36 = call i32 @wakeup(i64* %35)
  br label %37

37:                                               ; preds = %27, %20, %1
  %38 = load %struct.bufobj*, %struct.bufobj** %2, align 8
  %39 = call i32 @BO_UNLOCK(%struct.bufobj* %38)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
