; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_suspend_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_suspend_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_softc = type { i32 }
%struct.bhndb_dw_alloc = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"suspend resource type=%d 0x%jx+0x%jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.resource*)* @bhndb_suspend_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bhndb_suspend_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.bhndb_softc*, align 8
  %10 = alloca %struct.bhndb_dw_alloc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.resource* %3, %struct.resource** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.bhndb_softc* @device_get_softc(i32 %11)
  store %struct.bhndb_softc* %12, %struct.bhndb_softc** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %51

17:                                               ; preds = %4
  %18 = load %struct.bhndb_softc*, %struct.bhndb_softc** %9, align 8
  %19 = call i32 @BHNDB_LOCK(%struct.bhndb_softc* %18)
  %20 = load %struct.bhndb_softc*, %struct.bhndb_softc** %9, align 8
  %21 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = call %struct.bhndb_dw_alloc* @bhndb_dw_find_resource(i32 %22, %struct.resource* %23)
  store %struct.bhndb_dw_alloc* %24, %struct.bhndb_dw_alloc** %10, align 8
  %25 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %10, align 8
  %26 = icmp eq %struct.bhndb_dw_alloc* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.bhndb_softc*, %struct.bhndb_softc** %9, align 8
  %29 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %28)
  br label %51

30:                                               ; preds = %17
  %31 = load i32, i32* @PRIO, align 4
  %32 = call i64 @BHNDB_DEBUG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.resource*, %struct.resource** %8, align 8
  %38 = call i32 @rman_get_start(%struct.resource* %37)
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = call i32 @rman_get_size(%struct.resource* %39)
  %41 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %34, %30
  %43 = load %struct.bhndb_softc*, %struct.bhndb_softc** %9, align 8
  %44 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %10, align 8
  %47 = load %struct.resource*, %struct.resource** %8, align 8
  %48 = call i32 @bhndb_dw_release(i32 %45, %struct.bhndb_dw_alloc* %46, %struct.resource* %47)
  %49 = load %struct.bhndb_softc*, %struct.bhndb_softc** %9, align 8
  %50 = call i32 @BHNDB_UNLOCK(%struct.bhndb_softc* %49)
  br label %51

51:                                               ; preds = %42, %27, %16
  ret void
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @BHNDB_LOCK(%struct.bhndb_softc*) #1

declare dso_local %struct.bhndb_dw_alloc* @bhndb_dw_find_resource(i32, %struct.resource*) #1

declare dso_local i32 @BHNDB_UNLOCK(%struct.bhndb_softc*) #1

declare dso_local i64 @BHNDB_DEBUG(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @bhndb_dw_release(i32, %struct.bhndb_dw_alloc*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
