; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpLayerDown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpLayerDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 (i32*)* }
%struct.TYPE_8__ = type { i32 (i32*)* }
%struct.fsm = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ccp = type { %struct.TYPE_11__, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, %struct.ccp_opt*, i32* }
%struct.ccp_opt = type { %struct.ccp_opt* }
%struct.TYPE_9__ = type { i64, i32* }

@LogCCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: LayerDown.\0A\00", align 1
@algorithm = common dso_local global %struct.TYPE_12__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @CcpLayerDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CcpLayerDown(%struct.fsm* %0) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @log_Printf(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ccp*, %struct.ccp** %3, align 8
  %15 = getelementptr inbounds %struct.ccp, %struct.ccp* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @algorithm, align 8
  %21 = load %struct.ccp*, %struct.ccp** %3, align 8
  %22 = getelementptr inbounds %struct.ccp, %struct.ccp* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %20, i64 %24
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = load %struct.ccp*, %struct.ccp** %3, align 8
  %31 = getelementptr inbounds %struct.ccp, %struct.ccp* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 %29(i32* %33)
  %35 = load %struct.ccp*, %struct.ccp** %3, align 8
  %36 = getelementptr inbounds %struct.ccp, %struct.ccp* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.ccp*, %struct.ccp** %3, align 8
  %39 = getelementptr inbounds %struct.ccp, %struct.ccp* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 -1, i64* %40, align 8
  br label %41

41:                                               ; preds = %19, %1
  %42 = load %struct.ccp*, %struct.ccp** %3, align 8
  %43 = getelementptr inbounds %struct.ccp, %struct.ccp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @algorithm, align 8
  %49 = load %struct.ccp*, %struct.ccp** %3, align 8
  %50 = getelementptr inbounds %struct.ccp, %struct.ccp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %48, i64 %52
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32 (i32*)*, i32 (i32*)** %56, align 8
  %58 = load %struct.ccp*, %struct.ccp** %3, align 8
  %59 = getelementptr inbounds %struct.ccp, %struct.ccp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 %57(i32* %61)
  %63 = load %struct.ccp*, %struct.ccp** %3, align 8
  %64 = getelementptr inbounds %struct.ccp, %struct.ccp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.ccp*, %struct.ccp** %3, align 8
  %67 = getelementptr inbounds %struct.ccp, %struct.ccp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i64 -1, i64* %68, align 8
  br label %69

69:                                               ; preds = %47, %41
  %70 = load %struct.ccp*, %struct.ccp** %3, align 8
  %71 = getelementptr inbounds %struct.ccp, %struct.ccp* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.ccp*, %struct.ccp** %3, align 8
  %73 = getelementptr inbounds %struct.ccp, %struct.ccp* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %80, %69
  %75 = load %struct.ccp*, %struct.ccp** %3, align 8
  %76 = getelementptr inbounds %struct.ccp, %struct.ccp* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.ccp_opt*, %struct.ccp_opt** %77, align 8
  %79 = icmp ne %struct.ccp_opt* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.ccp*, %struct.ccp** %3, align 8
  %82 = getelementptr inbounds %struct.ccp, %struct.ccp* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load %struct.ccp_opt*, %struct.ccp_opt** %83, align 8
  %85 = getelementptr inbounds %struct.ccp_opt, %struct.ccp_opt* %84, i32 0, i32 0
  %86 = load %struct.ccp_opt*, %struct.ccp_opt** %85, align 8
  store %struct.ccp_opt* %86, %struct.ccp_opt** %4, align 8
  %87 = load %struct.ccp*, %struct.ccp** %3, align 8
  %88 = getelementptr inbounds %struct.ccp, %struct.ccp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load %struct.ccp_opt*, %struct.ccp_opt** %89, align 8
  %91 = call i32 @free(%struct.ccp_opt* %90)
  %92 = load %struct.ccp_opt*, %struct.ccp_opt** %4, align 8
  %93 = load %struct.ccp*, %struct.ccp** %3, align 8
  %94 = getelementptr inbounds %struct.ccp, %struct.ccp* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store %struct.ccp_opt* %92, %struct.ccp_opt** %95, align 8
  br label %74

96:                                               ; preds = %74
  %97 = load %struct.ccp*, %struct.ccp** %3, align 8
  %98 = call i32 @ccp_Setup(%struct.ccp* %97)
  ret void
}

declare dso_local %struct.ccp* @fsm2ccp(%struct.fsm*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.ccp_opt*) #1

declare dso_local i32 @ccp_Setup(%struct.ccp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
