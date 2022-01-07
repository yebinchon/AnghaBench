; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_slotsfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_slotsfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { %struct.TYPE_3__, %struct.mvs_slot* }
%struct.TYPE_3__ = type { i32 }
%struct.mvs_slot = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_slotsfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_slotsfree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_slot*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mvs_channel* @device_get_softc(i32 %6)
  store %struct.mvs_channel* %7, %struct.mvs_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %14 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %13, i32 0, i32 1
  %15 = load %struct.mvs_slot*, %struct.mvs_slot** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %15, i64 %17
  store %struct.mvs_slot* %18, %struct.mvs_slot** %5, align 8
  %19 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %20 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %19, i32 0, i32 1
  %21 = call i32 @callout_drain(i32* %20)
  %22 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %23 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %12
  %28 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %29 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %33 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_dmamap_destroy(i32 %31, i32* %35)
  %37 = load %struct.mvs_slot*, %struct.mvs_slot** %5, align 8
  %38 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %27, %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %8

44:                                               ; preds = %8
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
