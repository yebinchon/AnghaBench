; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_UpdateSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_UpdateSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.bundle = type { i64, %struct.TYPE_13__, %struct.datalink*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.datalink = type { i32, %struct.datalink* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i8*, i32, %struct.bundle*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@PHASE_NETWORK = common dso_local global i64 0, align 8
@PHYS_AUTO = common dso_local global i32 0, align 4
@TIMER_RUNNING = common dso_local global i64 0, align 8
@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: fdset(r) %d\0A\00", align 1
@TUN_NAME = common dso_local global i32 0, align 4
@TIMER_STOPPED = common dso_local global i64 0, align 8
@bundle_ClearQueues = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"output choke\00", align 1
@SECTICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdescriptor*, i32*, i32*, i32*, i32*)* @bundle_UpdateSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bundle_UpdateSet(%struct.fdescriptor* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.fdescriptor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bundle*, align 8
  %12 = alloca %struct.datalink*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.fdescriptor* %0, %struct.fdescriptor** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.fdescriptor*, %struct.fdescriptor** %6, align 8
  %18 = call %struct.bundle* @descriptor2bundle(%struct.fdescriptor* %17)
  store %struct.bundle* %18, %struct.bundle** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.bundle*, %struct.bundle** %11, align 8
  %20 = getelementptr inbounds %struct.bundle, %struct.bundle* %19, i32 0, i32 2
  %21 = load %struct.datalink*, %struct.datalink** %20, align 8
  store %struct.datalink* %21, %struct.datalink** %12, align 8
  br label %22

22:                                               ; preds = %28, %5
  %23 = load %struct.datalink*, %struct.datalink** %12, align 8
  %24 = icmp ne %struct.datalink* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load %struct.datalink*, %struct.datalink** %12, align 8
  %30 = getelementptr inbounds %struct.datalink, %struct.datalink* %29, i32 0, i32 1
  %31 = load %struct.datalink*, %struct.datalink** %30, align 8
  store %struct.datalink* %31, %struct.datalink** %12, align 8
  br label %22

32:                                               ; preds = %22
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %171

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.bundle*, %struct.bundle** %11, align 8
  %40 = getelementptr inbounds %struct.bundle, %struct.bundle* %39, i32 0, i32 1
  %41 = load %struct.bundle*, %struct.bundle** %11, align 8
  %42 = call i64 @ncp_FillPhysicalQueues(%struct.TYPE_13__* %40, %struct.bundle* %41)
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.bundle*, %struct.bundle** %11, align 8
  %45 = getelementptr inbounds %struct.bundle, %struct.bundle* %44, i32 0, i32 1
  %46 = call i64 @ncp_QueueLen(%struct.TYPE_13__* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i64 [ %42, %38 ], [ %46, %43 ]
  store i64 %48, i64* %16, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %170

51:                                               ; preds = %47
  %52 = load %struct.bundle*, %struct.bundle** %11, align 8
  %53 = getelementptr inbounds %struct.bundle, %struct.bundle* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PHASE_NETWORK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load %struct.bundle*, %struct.bundle** %11, align 8
  %59 = getelementptr inbounds %struct.bundle, %struct.bundle* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PHYS_AUTO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %170

65:                                               ; preds = %57, %51
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.bundle*, %struct.bundle** %11, align 8
  %68 = getelementptr inbounds %struct.bundle, %struct.bundle* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %14, align 4
  br label %79

74:                                               ; preds = %65
  %75 = load %struct.bundle*, %struct.bundle** %11, align 8
  %76 = getelementptr inbounds %struct.bundle, %struct.bundle* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  br label %79

79:                                               ; preds = %74, %72
  %80 = phi i32 [ %73, %72 ], [ %78, %74 ]
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %130

85:                                               ; preds = %79
  %86 = load %struct.bundle*, %struct.bundle** %11, align 8
  %87 = getelementptr inbounds %struct.bundle, %struct.bundle* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TIMER_RUNNING, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.bundle*, %struct.bundle** %11, align 8
  %95 = getelementptr inbounds %struct.bundle, %struct.bundle* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = call i32 @timer_Stop(%struct.TYPE_22__* %96)
  br label %98

98:                                               ; preds = %93, %85
  %99 = load %struct.bundle*, %struct.bundle** %11, align 8
  %100 = getelementptr inbounds %struct.bundle, %struct.bundle* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @FD_SET(i32 %102, i32* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bundle*, %struct.bundle** %11, align 8
  %108 = getelementptr inbounds %struct.bundle, %struct.bundle* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  %112 = icmp slt i32 %106, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %98
  %114 = load %struct.bundle*, %struct.bundle** %11, align 8
  %115 = getelementptr inbounds %struct.bundle, %struct.bundle* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %98
  %121 = load i32, i32* @LogTIMER, align 4
  %122 = load i32, i32* @TUN_NAME, align 4
  %123 = load %struct.bundle*, %struct.bundle** %11, align 8
  %124 = getelementptr inbounds %struct.bundle, %struct.bundle* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @log_Printf(i32 %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %169

130:                                              ; preds = %79
  %131 = load %struct.bundle*, %struct.bundle** %11, align 8
  %132 = getelementptr inbounds %struct.bundle, %struct.bundle* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @TIMER_STOPPED, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %130
  %139 = load i32, i32* @bundle_ClearQueues, align 4
  %140 = load %struct.bundle*, %struct.bundle** %11, align 8
  %141 = getelementptr inbounds %struct.bundle, %struct.bundle* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 4
  store i32 %139, i32* %143, align 8
  %144 = load %struct.bundle*, %struct.bundle** %11, align 8
  %145 = getelementptr inbounds %struct.bundle, %struct.bundle* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %147, align 8
  %148 = load %struct.bundle*, %struct.bundle** %11, align 8
  %149 = getelementptr inbounds %struct.bundle, %struct.bundle* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SECTICKS, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load %struct.bundle*, %struct.bundle** %11, align 8
  %156 = getelementptr inbounds %struct.bundle, %struct.bundle* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 2
  store i32 %154, i32* %158, align 8
  %159 = load %struct.bundle*, %struct.bundle** %11, align 8
  %160 = load %struct.bundle*, %struct.bundle** %11, align 8
  %161 = getelementptr inbounds %struct.bundle, %struct.bundle* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 3
  store %struct.bundle* %159, %struct.bundle** %163, align 8
  %164 = load %struct.bundle*, %struct.bundle** %11, align 8
  %165 = getelementptr inbounds %struct.bundle, %struct.bundle* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = call i32 @timer_Start(%struct.TYPE_22__* %166)
  br label %168

168:                                              ; preds = %138, %130
  br label %169

169:                                              ; preds = %168, %120
  br label %170

170:                                              ; preds = %169, %57, %47
  br label %171

171:                                              ; preds = %170, %32
  %172 = load %struct.bundle*, %struct.bundle** %11, align 8
  %173 = getelementptr inbounds %struct.bundle, %struct.bundle* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i32*, i32** %7, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = call i64 @descriptor_UpdateSet(i32* %174, i32* %175, i32* %176, i32* %177, i32* %178)
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %13, align 4
  %184 = load %struct.bundle*, %struct.bundle** %11, align 8
  %185 = getelementptr inbounds %struct.bundle, %struct.bundle* %184, i32 0, i32 2
  %186 = load %struct.datalink*, %struct.datalink** %185, align 8
  store %struct.datalink* %186, %struct.datalink** %12, align 8
  br label %187

187:                                              ; preds = %202, %171
  %188 = load %struct.datalink*, %struct.datalink** %12, align 8
  %189 = icmp ne %struct.datalink* %188, null
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = load %struct.datalink*, %struct.datalink** %12, align 8
  %192 = getelementptr inbounds %struct.datalink, %struct.datalink* %191, i32 0, i32 0
  %193 = load i32*, i32** %7, align 8
  %194 = load i32*, i32** %8, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = call i64 @descriptor_UpdateSet(i32* %192, i32* %193, i32* %194, i32* %195, i32* %196)
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %190
  %203 = load %struct.datalink*, %struct.datalink** %12, align 8
  %204 = getelementptr inbounds %struct.datalink, %struct.datalink* %203, i32 0, i32 1
  %205 = load %struct.datalink*, %struct.datalink** %204, align 8
  store %struct.datalink* %205, %struct.datalink** %12, align 8
  br label %187

206:                                              ; preds = %187
  %207 = load %struct.bundle*, %struct.bundle** %11, align 8
  %208 = getelementptr inbounds %struct.bundle, %struct.bundle* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32*, i32** %7, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = load i32*, i32** %9, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = call i64 @descriptor_UpdateSet(i32* %211, i32* %212, i32* %213, i32* %214, i32* %215)
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  ret i32 %221
}

declare dso_local %struct.bundle* @descriptor2bundle(%struct.fdescriptor*) #1

declare dso_local i64 @ncp_FillPhysicalQueues(%struct.TYPE_13__*, %struct.bundle*) #1

declare dso_local i64 @ncp_QueueLen(%struct.TYPE_13__*) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_22__*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @timer_Start(%struct.TYPE_22__*) #1

declare dso_local i64 @descriptor_UpdateSet(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
