; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LayerFinish.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LayerFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32 }
%struct.bundle = type { %struct.TYPE_2__, %struct.datalink* }
%struct.TYPE_2__ = type { i32 }
%struct.datalink = type { i64, %struct.datalink* }

@PHASE_DEAD = common dso_local global i64 0, align 8
@PHASE_TERMINATE = common dso_local global i32 0, align 4
@DATALINK_OPEN = common dso_local global i64 0, align 8
@CLOSE_STAYDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fsm*)* @bundle_LayerFinish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bundle_LayerFinish(i8* %0, %struct.fsm* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.datalink*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.fsm* %1, %struct.fsm** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bundle*
  store %struct.bundle* %8, %struct.bundle** %5, align 8
  %9 = load %struct.fsm*, %struct.fsm** %4, align 8
  %10 = getelementptr inbounds %struct.fsm, %struct.fsm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @isncp(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %2
  %15 = load %struct.bundle*, %struct.bundle** %5, align 8
  %16 = getelementptr inbounds %struct.bundle, %struct.bundle* %15, i32 0, i32 0
  %17 = call i32 @ncp_LayersUnfinished(%struct.TYPE_2__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %14
  %20 = load %struct.bundle*, %struct.bundle** %5, align 8
  %21 = call i64 @bundle_Phase(%struct.bundle* %20)
  %22 = load i64, i64* @PHASE_DEAD, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.bundle*, %struct.bundle** %5, align 8
  %26 = load i32, i32* @PHASE_TERMINATE, align 4
  %27 = call i32 @bundle_NewPhase(%struct.bundle* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.bundle*, %struct.bundle** %5, align 8
  %30 = getelementptr inbounds %struct.bundle, %struct.bundle* %29, i32 0, i32 1
  %31 = load %struct.datalink*, %struct.datalink** %30, align 8
  store %struct.datalink* %31, %struct.datalink** %6, align 8
  br label %32

32:                                               ; preds = %46, %28
  %33 = load %struct.datalink*, %struct.datalink** %6, align 8
  %34 = icmp ne %struct.datalink* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.datalink*, %struct.datalink** %6, align 8
  %37 = getelementptr inbounds %struct.datalink, %struct.datalink* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DATALINK_OPEN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.datalink*, %struct.datalink** %6, align 8
  %43 = load i32, i32* @CLOSE_STAYDOWN, align 4
  %44 = call i32 @datalink_Close(%struct.datalink* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.datalink*, %struct.datalink** %6, align 8
  %48 = getelementptr inbounds %struct.datalink, %struct.datalink* %47, i32 0, i32 1
  %49 = load %struct.datalink*, %struct.datalink** %48, align 8
  store %struct.datalink* %49, %struct.datalink** %6, align 8
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.fsm*, %struct.fsm** %4, align 8
  %52 = call i32 @fsm2initial(%struct.fsm* %51)
  %53 = load %struct.bundle*, %struct.bundle** %5, align 8
  %54 = getelementptr inbounds %struct.bundle, %struct.bundle* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @mp_Down(i32* %55)
  br label %57

57:                                               ; preds = %50, %14, %2
  ret void
}

declare dso_local i64 @isncp(i32) #1

declare dso_local i32 @ncp_LayersUnfinished(%struct.TYPE_2__*) #1

declare dso_local i64 @bundle_Phase(%struct.bundle*) #1

declare dso_local i32 @bundle_NewPhase(%struct.bundle*, i32) #1

declare dso_local i32 @datalink_Close(%struct.datalink*, i32) #1

declare dso_local i32 @fsm2initial(%struct.fsm*) #1

declare dso_local i32 @mp_Down(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
