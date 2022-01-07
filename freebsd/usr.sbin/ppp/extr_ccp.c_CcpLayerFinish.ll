; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpLayerFinish.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpLayerFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ccp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ccp_opt* }
%struct.ccp_opt = type { %struct.ccp_opt* }

@LogCCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: LayerFinish.\0A\00", align 1
@ST_OPENED = common dso_local global i64 0, align 8
@LogLCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: Closing due to CCP completion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @CcpLayerFinish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CcpLayerFinish(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.ccp*, align 8
  %4 = alloca %struct.ccp_opt*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %5 = load %struct.fsm*, %struct.fsm** %2, align 8
  %6 = call %struct.ccp* @fsm2ccp(%struct.fsm* %5)
  store %struct.ccp* %6, %struct.ccp** %3, align 8
  %7 = load i32, i32* @LogCCP, align 4
  %8 = load %struct.fsm*, %struct.fsm** %2, align 8
  %9 = getelementptr inbounds %struct.fsm, %struct.fsm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @log_Printf(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %20, %1
  %15 = load %struct.ccp*, %struct.ccp** %3, align 8
  %16 = getelementptr inbounds %struct.ccp, %struct.ccp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.ccp_opt*, %struct.ccp_opt** %17, align 8
  %19 = icmp ne %struct.ccp_opt* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.ccp*, %struct.ccp** %3, align 8
  %22 = getelementptr inbounds %struct.ccp, %struct.ccp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.ccp_opt*, %struct.ccp_opt** %23, align 8
  %25 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %24, i32 0, i32 0
  %26 = load %struct.ccp_opt*, %struct.ccp_opt** %25, align 8
  store %struct.ccp_opt* %26, %struct.ccp_opt** %4, align 8
  %27 = load %struct.ccp*, %struct.ccp** %3, align 8
  %28 = getelementptr inbounds %struct.ccp, %struct.ccp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.ccp_opt*, %struct.ccp_opt** %29, align 8
  %31 = call i32 @free(%struct.ccp_opt* %30)
  %32 = load %struct.ccp_opt*, %struct.ccp_opt** %4, align 8
  %33 = load %struct.ccp*, %struct.ccp** %3, align 8
  %34 = getelementptr inbounds %struct.ccp, %struct.ccp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.ccp_opt* %32, %struct.ccp_opt** %35, align 8
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.ccp*, %struct.ccp** %3, align 8
  %38 = call i64 @ccp_Required(%struct.ccp* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load %struct.fsm*, %struct.fsm** %2, align 8
  %42 = getelementptr inbounds %struct.fsm, %struct.fsm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ST_OPENED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load i32, i32* @LogLCP, align 4
  %52 = load %struct.fsm*, %struct.fsm** %2, align 8
  %53 = getelementptr inbounds %struct.fsm, %struct.fsm* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @log_Printf(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %50, %40
  %59 = load %struct.fsm*, %struct.fsm** %2, align 8
  %60 = getelementptr inbounds %struct.fsm, %struct.fsm* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @fsm_Close(%struct.TYPE_8__* %63)
  br label %65

65:                                               ; preds = %58, %36
  ret void
}

declare dso_local %struct.ccp* @fsm2ccp(%struct.fsm*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.ccp_opt*) #1

declare dso_local i64 @ccp_Required(%struct.ccp*) #1

declare dso_local i32 @fsm_Close(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
