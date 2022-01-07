; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_resume_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_resume_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_softc = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"resume resource type=%d 0x%jx+0x%jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*)* @bhndb_resume_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_resume_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.bhndb_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.resource* %3, %struct.resource** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.bhndb_softc* @device_get_softc(i32 %11)
  store %struct.bhndb_softc* %12, %struct.bhndb_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load %struct.resource*, %struct.resource** %9, align 8
  %19 = call i32 @rman_get_flags(%struct.resource* %18)
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %45

24:                                               ; preds = %17
  %25 = load i32, i32* @PRIO, align 4
  %26 = call i64 @BHNDB_DEBUG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.resource*, %struct.resource** %9, align 8
  %32 = call i32 @rman_get_start(%struct.resource* %31)
  %33 = load %struct.resource*, %struct.resource** %9, align 8
  %34 = call i32 @rman_get_size(%struct.resource* %33)
  %35 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %24
  %37 = load %struct.bhndb_softc*, %struct.bhndb_softc** %10, align 8
  %38 = load %struct.resource*, %struct.resource** %9, align 8
  %39 = call i32 @rman_get_device(%struct.resource* %38)
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.resource*, %struct.resource** %9, align 8
  %42 = call i32 @rman_get_rid(%struct.resource* %41)
  %43 = load %struct.resource*, %struct.resource** %9, align 8
  %44 = call i32 @bhndb_try_activate_resource(%struct.bhndb_softc* %37, i32 %39, i32 %40, i32 %42, %struct.resource* %43, i32* null)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %36, %23, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.bhndb_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i64 @BHNDB_DEBUG(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @bhndb_try_activate_resource(%struct.bhndb_softc*, i32, i32, i32, %struct.resource*, i32*) #1

declare dso_local i32 @rman_get_device(%struct.resource*) #1

declare dso_local i32 @rman_get_rid(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
