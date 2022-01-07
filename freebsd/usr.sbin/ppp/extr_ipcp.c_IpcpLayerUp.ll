; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_IpcpLayerUp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_IpcpLayerUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_14__, %struct.TYPE_17__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_11__ = type { i32 }
%struct.ipcp = type { i32, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@LogIPCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: LayerUp.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"myaddr %s hisaddr = %s\0A\00", align 1
@PROTO_VJCOMP = common dso_local global i32 0, align 4
@RAD_START = common dso_local global i32 0, align 4
@LINKUPFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsm*)* @IpcpLayerUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IpcpLayerUp(%struct.fsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca %struct.ipcp*, align 8
  %5 = alloca [16 x i8], align 16
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  %6 = load %struct.fsm*, %struct.fsm** %3, align 8
  %7 = call %struct.ipcp* @fsm2ipcp(%struct.fsm* %6)
  store %struct.ipcp* %7, %struct.ipcp** %4, align 8
  %8 = load i32, i32* @LogIPCP, align 4
  %9 = load %struct.fsm*, %struct.fsm** %3, align 8
  %10 = getelementptr inbounds %struct.fsm, %struct.fsm* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %18 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %19 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @inet_ntoa(i32 %20)
  %22 = call i32 @snprintf(i8* %17, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @LogIPCP, align 4
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %25 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %26 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @inet_ntoa(i32 %27)
  %29 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* %28)
  %30 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %31 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 16
  %34 = load i32, i32* @PROTO_VJCOMP, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %38 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %41 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = call i32 @sl_compress_init(i32* %39, i32 %44)
  br label %46

46:                                               ; preds = %36, %1
  %47 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %48 = call i32 @ipcp_InterfaceUp(%struct.ipcp* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %167

51:                                               ; preds = %46
  %52 = load %struct.fsm*, %struct.fsm** %3, align 8
  %53 = getelementptr inbounds %struct.fsm, %struct.fsm* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %57 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %56, i32 0, i32 4
  %58 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %59 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %58, i32 0, i32 3
  %60 = call i32 @radius_Account_Set_Ip(i32* %55, i32* %57, i32* %59)
  %61 = load %struct.fsm*, %struct.fsm** %3, align 8
  %62 = getelementptr inbounds %struct.fsm, %struct.fsm* %61, i32 0, i32 1
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.fsm*, %struct.fsm** %3, align 8
  %66 = getelementptr inbounds %struct.fsm, %struct.fsm* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load %struct.fsm*, %struct.fsm** %3, align 8
  %70 = getelementptr inbounds %struct.fsm, %struct.fsm* %69, i32 0, i32 1
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RAD_START, align 4
  %75 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %76 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %75, i32 0, i32 2
  %77 = call i32 @radius_Account(%struct.TYPE_18__* %64, i32* %68, i32 %73, i32 %74, i32* %76)
  %78 = load %struct.fsm*, %struct.fsm** %3, align 8
  %79 = getelementptr inbounds %struct.fsm, %struct.fsm* %78, i32 0, i32 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %51
  %88 = load %struct.fsm*, %struct.fsm** %3, align 8
  %89 = getelementptr inbounds %struct.fsm, %struct.fsm* %88, i32 0, i32 1
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %87
  %96 = load %struct.fsm*, %struct.fsm** %3, align 8
  %97 = getelementptr inbounds %struct.fsm, %struct.fsm* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = load %struct.fsm*, %struct.fsm** %3, align 8
  %100 = getelementptr inbounds %struct.fsm, %struct.fsm* %99, i32 0, i32 1
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @LINKUPFILE, align 4
  %106 = call i64 @system_Select(%struct.TYPE_17__* %98, i8* %104, i32 %105, i32* null, i32* null)
  br label %107

107:                                              ; preds = %95, %87, %51
  %108 = load %struct.fsm*, %struct.fsm** %3, align 8
  %109 = getelementptr inbounds %struct.fsm, %struct.fsm* %108, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = call i32 @radius_StartTimer(%struct.TYPE_17__* %110)
  %112 = load %struct.fsm*, %struct.fsm** %3, align 8
  %113 = getelementptr inbounds %struct.fsm, %struct.fsm* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %116 = load i32, i32* @LINKUPFILE, align 4
  %117 = call i64 @system_Select(%struct.TYPE_17__* %114, i8* %115, i32 %116, i32* null, i32* null)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %150

119:                                              ; preds = %107
  %120 = load %struct.fsm*, %struct.fsm** %3, align 8
  %121 = getelementptr inbounds %struct.fsm, %struct.fsm* %120, i32 0, i32 1
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = call i8* @bundle_GetLabel(%struct.TYPE_17__* %122)
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load %struct.fsm*, %struct.fsm** %3, align 8
  %127 = getelementptr inbounds %struct.fsm, %struct.fsm* %126, i32 0, i32 1
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = load %struct.fsm*, %struct.fsm** %3, align 8
  %130 = getelementptr inbounds %struct.fsm, %struct.fsm* %129, i32 0, i32 1
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = call i8* @bundle_GetLabel(%struct.TYPE_17__* %131)
  %133 = load i32, i32* @LINKUPFILE, align 4
  %134 = call i64 @system_Select(%struct.TYPE_17__* %128, i8* %132, i32 %133, i32* null, i32* null)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %125
  %137 = load %struct.fsm*, %struct.fsm** %3, align 8
  %138 = getelementptr inbounds %struct.fsm, %struct.fsm* %137, i32 0, i32 1
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = load i32, i32* @LINKUPFILE, align 4
  %141 = call i64 @system_Select(%struct.TYPE_17__* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32* null, i32* null)
  br label %142

142:                                              ; preds = %136, %125
  br label %149

143:                                              ; preds = %119
  %144 = load %struct.fsm*, %struct.fsm** %3, align 8
  %145 = getelementptr inbounds %struct.fsm, %struct.fsm* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = load i32, i32* @LINKUPFILE, align 4
  %148 = call i64 @system_Select(%struct.TYPE_17__* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32* null, i32* null)
  br label %149

149:                                              ; preds = %143, %142
  br label %150

150:                                              ; preds = %149, %107
  %151 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %152 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 3
  %157 = load %struct.fsm*, %struct.fsm** %3, align 8
  %158 = getelementptr inbounds %struct.fsm, %struct.fsm* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 8
  %160 = load %struct.fsm*, %struct.fsm** %3, align 8
  %161 = getelementptr inbounds %struct.fsm, %struct.fsm* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  store i32 %156, i32* %162, align 4
  %163 = load %struct.fsm*, %struct.fsm** %3, align 8
  %164 = getelementptr inbounds %struct.fsm, %struct.fsm* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  store i32 %156, i32* %165, align 8
  %166 = call i32 (...) @log_DisplayPrompts()
  store i32 1, i32* %2, align 4
  br label %167

167:                                              ; preds = %150, %50
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.ipcp* @fsm2ipcp(%struct.fsm*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @sl_compress_init(i32*, i32) #1

declare dso_local i32 @ipcp_InterfaceUp(%struct.ipcp*) #1

declare dso_local i32 @radius_Account_Set_Ip(i32*, i32*, i32*) #1

declare dso_local i32 @radius_Account(%struct.TYPE_18__*, i32*, i32, i32, i32*) #1

declare dso_local i64 @system_Select(%struct.TYPE_17__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @radius_StartTimer(%struct.TYPE_17__*) #1

declare dso_local i8* @bundle_GetLabel(%struct.TYPE_17__*) #1

declare dso_local i32 @log_DisplayPrompts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
