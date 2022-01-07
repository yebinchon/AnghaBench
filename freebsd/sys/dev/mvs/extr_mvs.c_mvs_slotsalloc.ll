; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_slotsalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_slotsalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, %struct.TYPE_3__, i32, %struct.mvs_slot* }
%struct.TYPE_3__ = type { i32 }
%struct.mvs_slot = type { i32, %struct.TYPE_4__, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@MVS_SLOT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FAILURE - create data_map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_slotsalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_slotsalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_slot*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mvs_channel* @device_get_softc(i32 %6)
  store %struct.mvs_channel* %7, %struct.mvs_channel** %3, align 8
  %8 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %9 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %8, i32 0, i32 3
  %10 = load %struct.mvs_slot*, %struct.mvs_slot** %9, align 8
  %11 = call i32 @bzero(%struct.mvs_slot* %10, i32 8)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %54, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %18 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %17, i32 0, i32 3
  %19 = load %struct.mvs_slot*, %struct.mvs_slot** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %19, i64 %21
  store %struct.mvs_slot* %22, %struct.mvs_slot** %5, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %25 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %28 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @MVS_SLOT_EMPTY, align 4
  %30 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %31 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %33 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %35 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %34, i32 0, i32 2
  %36 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %37 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %36, i32 0, i32 2
  %38 = call i32 @callout_init_mtx(i32* %35, i32* %37, i32 0)
  %39 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %40 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %44 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i64 @bus_dmamap_create(i32 %42, i32 0, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %16
  %49 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %50 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %16
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %12

57:                                               ; preds = %12
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.mvs_slot*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
