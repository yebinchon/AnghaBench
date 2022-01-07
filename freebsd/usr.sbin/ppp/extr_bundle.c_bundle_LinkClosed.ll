; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LinkClosed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LinkClosed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.datalink* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.datalink = type { i64, %struct.TYPE_4__*, %struct.datalink* }
%struct.TYPE_4__ = type { i64 }

@DATALINK_CLOSED = common dso_local global i64 0, align 8
@PHYS_AUTO = common dso_local global i64 0, align 8
@PHASE_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_LinkClosed(%struct.bundle* %0, %struct.datalink* %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca %struct.datalink*, align 8
  %6 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store %struct.datalink* %1, %struct.datalink** %4, align 8
  %7 = load %struct.datalink*, %struct.datalink** %4, align 8
  %8 = call i32 @log_SetTtyCommandMode(%struct.datalink* %7)
  store i32 0, i32* %6, align 4
  %9 = load %struct.bundle*, %struct.bundle** %3, align 8
  %10 = getelementptr inbounds %struct.bundle, %struct.bundle* %9, i32 0, i32 2
  %11 = load %struct.datalink*, %struct.datalink** %10, align 8
  store %struct.datalink* %11, %struct.datalink** %5, align 8
  br label %12

12:                                               ; preds = %29, %2
  %13 = load %struct.datalink*, %struct.datalink** %5, align 8
  %14 = icmp ne %struct.datalink* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.datalink*, %struct.datalink** %5, align 8
  %17 = load %struct.datalink*, %struct.datalink** %4, align 8
  %18 = icmp ne %struct.datalink* %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.datalink*, %struct.datalink** %5, align 8
  %21 = getelementptr inbounds %struct.datalink, %struct.datalink* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DATALINK_CLOSED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %19, %15
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.datalink*, %struct.datalink** %5, align 8
  %31 = getelementptr inbounds %struct.datalink, %struct.datalink* %30, i32 0, i32 2
  %32 = load %struct.datalink*, %struct.datalink** %31, align 8
  store %struct.datalink* %32, %struct.datalink** %5, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %69, label %36

36:                                               ; preds = %33
  %37 = load %struct.datalink*, %struct.datalink** %4, align 8
  %38 = getelementptr inbounds %struct.datalink, %struct.datalink* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PHYS_AUTO, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.bundle*, %struct.bundle** %3, align 8
  %46 = call i32 @bundle_DownInterface(%struct.bundle* %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.bundle*, %struct.bundle** %3, align 8
  %49 = getelementptr inbounds %struct.bundle, %struct.bundle* %48, i32 0, i32 1
  %50 = call i32 @ncp2initial(%struct.TYPE_6__* %49)
  %51 = load %struct.bundle*, %struct.bundle** %3, align 8
  %52 = getelementptr inbounds %struct.bundle, %struct.bundle* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @mp_Down(i32* %53)
  %55 = load %struct.bundle*, %struct.bundle** %3, align 8
  %56 = load i32, i32* @PHASE_DEAD, align 4
  %57 = call i32 @bundle_NewPhase(%struct.bundle* %55, i32 %56)
  %58 = load %struct.bundle*, %struct.bundle** %3, align 8
  %59 = getelementptr inbounds %struct.bundle, %struct.bundle* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load %struct.bundle*, %struct.bundle** %3, align 8
  %65 = call i32 @bundle_StopSessionTimer(%struct.bundle* %64)
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.bundle*, %struct.bundle** %3, align 8
  %68 = call i32 @bundle_StopIdleTimer(%struct.bundle* %67)
  br label %69

69:                                               ; preds = %66, %33
  ret void
}

declare dso_local i32 @log_SetTtyCommandMode(%struct.datalink*) #1

declare dso_local i32 @bundle_DownInterface(%struct.bundle*) #1

declare dso_local i32 @ncp2initial(%struct.TYPE_6__*) #1

declare dso_local i32 @mp_Down(i32*) #1

declare dso_local i32 @bundle_NewPhase(%struct.bundle*, i32) #1

declare dso_local i32 @bundle_StopSessionTimer(%struct.bundle*) #1

declare dso_local i32 @bundle_StopIdleTimer(%struct.bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
