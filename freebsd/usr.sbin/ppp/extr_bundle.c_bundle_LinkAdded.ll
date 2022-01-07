; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LinkAdded.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LinkAdded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.datalink = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@DATALINK_OPEN = common dso_local global i64 0, align 8
@PHYS_DEDICATED = common dso_local global i32 0, align 4
@PHYS_DDIAL = common dso_local global i32 0, align 4
@TIMER_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bundle*, %struct.datalink*)* @bundle_LinkAdded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bundle_LinkAdded(%struct.bundle* %0, %struct.datalink* %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca %struct.datalink*, align 8
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store %struct.datalink* %1, %struct.datalink** %4, align 8
  %5 = load %struct.datalink*, %struct.datalink** %4, align 8
  %6 = getelementptr inbounds %struct.datalink, %struct.datalink* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bundle*, %struct.bundle** %3, align 8
  %11 = getelementptr inbounds %struct.bundle, %struct.bundle* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %9
  store i32 %14, i32* %12, align 8
  %15 = load %struct.datalink*, %struct.datalink** %4, align 8
  %16 = getelementptr inbounds %struct.datalink, %struct.datalink* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DATALINK_OPEN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.datalink*, %struct.datalink** %4, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bundle*, %struct.bundle** %3, align 8
  %27 = getelementptr inbounds %struct.bundle, %struct.bundle* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %20, %2
  %32 = load %struct.bundle*, %struct.bundle** %3, align 8
  %33 = getelementptr inbounds %struct.bundle, %struct.bundle* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PHYS_DEDICATED, align 4
  %37 = load i32, i32* @PHYS_DDIAL, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load %struct.bundle*, %struct.bundle** %3, align 8
  %41 = getelementptr inbounds %struct.bundle, %struct.bundle* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %39, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %31
  %46 = load %struct.bundle*, %struct.bundle** %3, align 8
  %47 = getelementptr inbounds %struct.bundle, %struct.bundle* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TIMER_STOPPED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load %struct.bundle*, %struct.bundle** %3, align 8
  %55 = getelementptr inbounds %struct.bundle, %struct.bundle* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.bundle*, %struct.bundle** %3, align 8
  %61 = call i32 @bundle_StartSessionTimer(%struct.bundle* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %45, %31
  %64 = load %struct.bundle*, %struct.bundle** %3, align 8
  %65 = getelementptr inbounds %struct.bundle, %struct.bundle* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PHYS_DEDICATED, align 4
  %69 = load i32, i32* @PHYS_DDIAL, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load %struct.bundle*, %struct.bundle** %3, align 8
  %73 = getelementptr inbounds %struct.bundle, %struct.bundle* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %71, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %63
  %78 = load %struct.bundle*, %struct.bundle** %3, align 8
  %79 = getelementptr inbounds %struct.bundle, %struct.bundle* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TIMER_STOPPED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.bundle*, %struct.bundle** %3, align 8
  %87 = call i32 @bundle_StartIdleTimer(%struct.bundle* %86, i32 0)
  br label %88

88:                                               ; preds = %85, %77, %63
  ret void
}

declare dso_local i32 @bundle_StartSessionTimer(%struct.bundle*, i32) #1

declare dso_local i32 @bundle_StartIdleTimer(%struct.bundle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
