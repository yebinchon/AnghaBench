; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_snapshot.c_ffs_snapdata_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_snapshot.c_ffs_snapdata_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapdata = type { i32, i32 }

@snapfree_lock = common dso_local global i32 0, align 4
@snapfree = common dso_local global i32 0, align 4
@sn_link = common dso_local global i32 0, align 4
@M_UFSMNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"snaplk\00", align 1
@VLKTIMEOUT = common dso_local global i32 0, align 4
@LK_CANRECURSE = common dso_local global i32 0, align 4
@LK_NOSHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snapdata* ()* @ffs_snapdata_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snapdata* @ffs_snapdata_alloc() #0 {
  %1 = alloca %struct.snapdata*, align 8
  %2 = alloca %struct.snapdata*, align 8
  %3 = call i32 @mtx_lock(i32* @snapfree_lock)
  %4 = call %struct.snapdata* @LIST_FIRST(i32* @snapfree)
  store %struct.snapdata* %4, %struct.snapdata** %2, align 8
  %5 = load %struct.snapdata*, %struct.snapdata** %2, align 8
  %6 = icmp ne %struct.snapdata* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.snapdata*, %struct.snapdata** %2, align 8
  %9 = load i32, i32* @sn_link, align 4
  %10 = call i32 @LIST_REMOVE(%struct.snapdata* %8, i32 %9)
  br label %11

11:                                               ; preds = %7, %0
  %12 = call i32 @mtx_unlock(i32* @snapfree_lock)
  %13 = load %struct.snapdata*, %struct.snapdata** %2, align 8
  %14 = icmp ne %struct.snapdata* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load %struct.snapdata*, %struct.snapdata** %2, align 8
  store %struct.snapdata* %16, %struct.snapdata** %1, align 8
  br label %35

17:                                               ; preds = %11
  %18 = load i32, i32* @M_UFSMNT, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.snapdata* @malloc(i32 8, i32 %18, i32 %21)
  store %struct.snapdata* %22, %struct.snapdata** %2, align 8
  %23 = load %struct.snapdata*, %struct.snapdata** %2, align 8
  %24 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %23, i32 0, i32 1
  %25 = call i32 @TAILQ_INIT(i32* %24)
  %26 = load %struct.snapdata*, %struct.snapdata** %2, align 8
  %27 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %26, i32 0, i32 0
  %28 = load i32, i32* @PVFS, align 4
  %29 = load i32, i32* @VLKTIMEOUT, align 4
  %30 = load i32, i32* @LK_CANRECURSE, align 4
  %31 = load i32, i32* @LK_NOSHARE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @lockinit(i32* %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.snapdata*, %struct.snapdata** %2, align 8
  store %struct.snapdata* %34, %struct.snapdata** %1, align 8
  br label %35

35:                                               ; preds = %17, %15
  %36 = load %struct.snapdata*, %struct.snapdata** %1, align 8
  ret %struct.snapdata* %36
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.snapdata* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.snapdata*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.snapdata* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @lockinit(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
