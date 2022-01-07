; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_assign_btl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_assign_btl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_HBA_BUS = common dso_local global i32 0, align 4
@PQI_CTLR_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"External Raid Device!!!\00", align 1
@PQI_EXTERNAL_RAID_VOLUME_BUS = common dso_local global i32 0, align 4
@PQI_RAID_VOLUME_BUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @pqisrc_assign_btl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqisrc_assign_btl(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @GET_LE32(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @pqisrc_is_hba_lunid(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = load i32, i32* @PQI_HBA_BUS, align 4
  %20 = load i32, i32* @PQI_CTLR_INDEX, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 16383
  %23 = call i32 @pqisrc_set_btl(%struct.TYPE_6__* %18, i32 %19, i32 %20, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %56

26:                                               ; preds = %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = call i64 @pqisrc_is_logical_device(%struct.TYPE_6__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = call i64 @pqisrc_is_external_raid_device(%struct.TYPE_6__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = call i32 @DBG_DISC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @PQI_EXTERNAL_RAID_VOLUME_BUS, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 16383
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %7, align 4
  br label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @PQI_RAID_VOLUME_BUS, align 4
  store i32 %43, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 16383
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @pqisrc_set_btl(%struct.TYPE_6__* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %56

54:                                               ; preds = %26
  %55 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %46, %17
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @GET_LE32(i32*) #1

declare dso_local i64 @pqisrc_is_hba_lunid(i32*) #1

declare dso_local i32 @pqisrc_set_btl(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @pqisrc_is_logical_device(%struct.TYPE_6__*) #1

declare dso_local i64 @pqisrc_is_external_raid_device(%struct.TYPE_6__*) #1

declare dso_local i32 @DBG_DISC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
