; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_if_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_if_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@IFC_QFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @iflib_if_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_if_qflush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_9__* @if_getsoftc(i32 %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call i32 @STATE_LOCK(%struct.TYPE_9__* %11)
  %13 = load i32, i32* @IFC_QFLUSH, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @STATE_UNLOCK(%struct.TYPE_9__* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %45, %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i32 @NTXQSETS(%struct.TYPE_9__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %41, %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ifmp_ring_is_idle(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ifmp_ring_is_stalled(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ true, %26 ], [ %37, %32 ]
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = call i32 @iflib_txq_check_drain(%struct.TYPE_8__* %42, i32 0)
  br label %26

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 1
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %4, align 8
  br label %20

50:                                               ; preds = %20
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = call i32 @STATE_LOCK(%struct.TYPE_9__* %51)
  %53 = load i32, i32* @IFC_QFLUSH, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call i32 @STATE_UNLOCK(%struct.TYPE_9__* %59)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @if_qflush(i32 %61)
  ret void
}

declare dso_local %struct.TYPE_9__* @if_getsoftc(i32) #1

declare dso_local i32 @STATE_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @STATE_UNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @NTXQSETS(%struct.TYPE_9__*) #1

declare dso_local i64 @ifmp_ring_is_idle(i32) #1

declare dso_local i64 @ifmp_ring_is_stalled(i32) #1

declare dso_local i32 @iflib_txq_check_drain(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @if_qflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
