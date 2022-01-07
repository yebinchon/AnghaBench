; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LayerUp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LayerUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.bundle = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.physical = type { i32 }

@PROTO_LCP = common dso_local global i64 0, align 8
@EX_NORMAL = common dso_local global i32 0, align 4
@PROTO_CCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fsm*)* @bundle_LayerUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bundle_LayerUp(i8* %0, %struct.fsm* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.physical*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.fsm* %1, %struct.fsm** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bundle*
  store %struct.bundle* %8, %struct.bundle** %5, align 8
  %9 = load %struct.fsm*, %struct.fsm** %4, align 8
  %10 = getelementptr inbounds %struct.fsm, %struct.fsm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PROTO_LCP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.fsm*, %struct.fsm** %4, align 8
  %16 = getelementptr inbounds %struct.fsm, %struct.fsm* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.physical* @link2physical(i32 %17)
  store %struct.physical* %18, %struct.physical** %6, align 8
  %19 = load %struct.bundle*, %struct.bundle** %5, align 8
  %20 = load %struct.physical*, %struct.physical** %6, align 8
  %21 = getelementptr inbounds %struct.physical, %struct.physical* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bundle_LinkAdded(%struct.bundle* %19, i32 %22)
  %24 = load %struct.bundle*, %struct.bundle** %5, align 8
  %25 = getelementptr inbounds %struct.bundle, %struct.bundle* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @mp_CheckAutoloadTimer(i32* %26)
  br label %83

28:                                               ; preds = %2
  %29 = load %struct.fsm*, %struct.fsm** %4, align 8
  %30 = getelementptr inbounds %struct.fsm, %struct.fsm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @isncp(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %28
  %35 = load %struct.fsm*, %struct.fsm** %4, align 8
  %36 = getelementptr inbounds %struct.fsm, %struct.fsm* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i32 @ncp_LayersOpen(%struct.TYPE_7__* %38)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %66

41:                                               ; preds = %34
  %42 = load %struct.fsm*, %struct.fsm** %4, align 8
  %43 = getelementptr inbounds %struct.fsm, %struct.fsm* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i32 @bundle_CalculateBandwidth(%struct.TYPE_8__* %44)
  %46 = load %struct.bundle*, %struct.bundle** %5, align 8
  %47 = getelementptr inbounds %struct.bundle, %struct.bundle* %46, i32 0, i32 1
  %48 = call i32 @time(i32* %47)
  %49 = load %struct.bundle*, %struct.bundle** %5, align 8
  %50 = getelementptr inbounds %struct.bundle, %struct.bundle* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load %struct.bundle*, %struct.bundle** %5, align 8
  %56 = call i32 @bundle_StartSessionTimer(%struct.bundle* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %41
  %58 = load %struct.bundle*, %struct.bundle** %5, align 8
  %59 = call i32 @bundle_StartIdleTimer(%struct.bundle* %58, i32 0)
  %60 = load %struct.fsm*, %struct.fsm** %4, align 8
  %61 = getelementptr inbounds %struct.fsm, %struct.fsm* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i32 @mp_CheckAutoloadTimer(i32* %64)
  br label %66

66:                                               ; preds = %57, %34
  %67 = load %struct.bundle*, %struct.bundle** %5, align 8
  %68 = load i32, i32* @EX_NORMAL, align 4
  %69 = call i32 @bundle_Notify(%struct.bundle* %67, i32 %68)
  br label %82

70:                                               ; preds = %28
  %71 = load %struct.fsm*, %struct.fsm** %4, align 8
  %72 = getelementptr inbounds %struct.fsm, %struct.fsm* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PROTO_CCP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.fsm*, %struct.fsm** %4, align 8
  %78 = getelementptr inbounds %struct.fsm, %struct.fsm* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = call i32 @bundle_CalculateBandwidth(%struct.TYPE_8__* %79)
  br label %81

81:                                               ; preds = %76, %70
  br label %82

82:                                               ; preds = %81, %66
  br label %83

83:                                               ; preds = %82, %14
  ret void
}

declare dso_local %struct.physical* @link2physical(i32) #1

declare dso_local i32 @bundle_LinkAdded(%struct.bundle*, i32) #1

declare dso_local i32 @mp_CheckAutoloadTimer(i32*) #1

declare dso_local i64 @isncp(i64) #1

declare dso_local i32 @ncp_LayersOpen(%struct.TYPE_7__*) #1

declare dso_local i32 @bundle_CalculateBandwidth(%struct.TYPE_8__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @bundle_StartSessionTimer(%struct.bundle*, i32) #1

declare dso_local i32 @bundle_StartIdleTimer(%struct.bundle*, i32) #1

declare dso_local i32 @bundle_Notify(%struct.bundle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
