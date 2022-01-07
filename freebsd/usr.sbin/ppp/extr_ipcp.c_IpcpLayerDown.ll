; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_IpcpLayerDown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_IpcpLayerDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32 }
%struct.ipcp = type { i32, i32 }

@IpcpLayerDown.recursing = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LogIPCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: LayerDown: %s\0A\00", align 1
@RAD_STOP = common dso_local global i32 0, align 4
@LINKDOWNFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@INADDR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @IpcpLayerDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IpcpLayerDown(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.ipcp*, align 8
  %4 = alloca [16 x i8], align 16
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %5 = load %struct.fsm*, %struct.fsm** %2, align 8
  %6 = call %struct.ipcp* @fsm2ipcp(%struct.fsm* %5)
  store %struct.ipcp* %6, %struct.ipcp** %3, align 8
  %7 = load i32, i32* @IpcpLayerDown.recursing, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @IpcpLayerDown.recursing, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %124, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %12 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %13 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @inet_ntoa(i32 %14)
  %16 = call i32 @snprintf(i8* %11, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @LogIPCP, align 4
  %18 = load %struct.fsm*, %struct.fsm** %2, align 8
  %19 = getelementptr inbounds %struct.fsm, %struct.fsm* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %24 = call i32 @log_Printf(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22, i8* %23)
  %25 = load %struct.fsm*, %struct.fsm** %2, align 8
  %26 = getelementptr inbounds %struct.fsm, %struct.fsm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @radius_Flush(%struct.TYPE_11__* %28)
  %30 = load %struct.fsm*, %struct.fsm** %2, align 8
  %31 = getelementptr inbounds %struct.fsm, %struct.fsm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.fsm*, %struct.fsm** %2, align 8
  %35 = getelementptr inbounds %struct.fsm, %struct.fsm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load %struct.fsm*, %struct.fsm** %2, align 8
  %39 = getelementptr inbounds %struct.fsm, %struct.fsm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RAD_STOP, align 4
  %44 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %45 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %44, i32 0, i32 0
  %46 = call i32 @radius_Account(%struct.TYPE_11__* %33, i32* %37, i32 %42, i32 %43, i32* %45)
  %47 = load %struct.fsm*, %struct.fsm** %2, align 8
  %48 = getelementptr inbounds %struct.fsm, %struct.fsm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %10
  %57 = load %struct.fsm*, %struct.fsm** %2, align 8
  %58 = getelementptr inbounds %struct.fsm, %struct.fsm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load %struct.fsm*, %struct.fsm** %2, align 8
  %66 = getelementptr inbounds %struct.fsm, %struct.fsm* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.fsm*, %struct.fsm** %2, align 8
  %69 = getelementptr inbounds %struct.fsm, %struct.fsm* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @LINKDOWNFILE, align 4
  %75 = call i64 @system_Select(%struct.TYPE_10__* %67, i8* %73, i32 %74, i32* null, i32* null)
  br label %76

76:                                               ; preds = %64, %56, %10
  %77 = load %struct.fsm*, %struct.fsm** %2, align 8
  %78 = getelementptr inbounds %struct.fsm, %struct.fsm* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = call i32 @radius_StopTimer(%struct.TYPE_11__* %80)
  %82 = load %struct.fsm*, %struct.fsm** %2, align 8
  %83 = getelementptr inbounds %struct.fsm, %struct.fsm* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %86 = load i32, i32* @LINKDOWNFILE, align 4
  %87 = call i64 @system_Select(%struct.TYPE_10__* %84, i8* %85, i32 %86, i32* null, i32* null)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %76
  %90 = load %struct.fsm*, %struct.fsm** %2, align 8
  %91 = getelementptr inbounds %struct.fsm, %struct.fsm* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = call i8* @bundle_GetLabel(%struct.TYPE_10__* %92)
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load %struct.fsm*, %struct.fsm** %2, align 8
  %97 = getelementptr inbounds %struct.fsm, %struct.fsm* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load %struct.fsm*, %struct.fsm** %2, align 8
  %100 = getelementptr inbounds %struct.fsm, %struct.fsm* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = call i8* @bundle_GetLabel(%struct.TYPE_10__* %101)
  %103 = load i32, i32* @LINKDOWNFILE, align 4
  %104 = call i64 @system_Select(%struct.TYPE_10__* %98, i8* %102, i32 %103, i32* null, i32* null)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %95
  %107 = load %struct.fsm*, %struct.fsm** %2, align 8
  %108 = getelementptr inbounds %struct.fsm, %struct.fsm* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* @LINKDOWNFILE, align 4
  %111 = call i64 @system_Select(%struct.TYPE_10__* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32* null, i32* null)
  br label %112

112:                                              ; preds = %106, %95
  br label %119

113:                                              ; preds = %89
  %114 = load %struct.fsm*, %struct.fsm** %2, align 8
  %115 = getelementptr inbounds %struct.fsm, %struct.fsm* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i32, i32* @LINKDOWNFILE, align 4
  %118 = call i64 @system_Select(%struct.TYPE_10__* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32* null, i32* null)
  br label %119

119:                                              ; preds = %113, %112
  br label %120

120:                                              ; preds = %119, %76
  %121 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %122 = load i32, i32* @INADDR_NONE, align 4
  %123 = call i32 @ipcp_Setup(%struct.ipcp* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %1
  %125 = load i32, i32* @IpcpLayerDown.recursing, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* @IpcpLayerDown.recursing, align 4
  ret void
}

declare dso_local %struct.ipcp* @fsm2ipcp(%struct.fsm*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @radius_Flush(%struct.TYPE_11__*) #1

declare dso_local i32 @radius_Account(%struct.TYPE_11__*, i32*, i32, i32, i32*) #1

declare dso_local i64 @system_Select(%struct.TYPE_10__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @radius_StopTimer(%struct.TYPE_11__*) #1

declare dso_local i8* @bundle_GetLabel(%struct.TYPE_10__*) #1

declare dso_local i32 @ipcp_Setup(%struct.ipcp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
