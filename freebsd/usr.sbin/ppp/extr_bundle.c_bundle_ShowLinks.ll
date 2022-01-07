; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_ShowLinks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_ShowLinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.datalink* }
%struct.TYPE_15__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.pppThroughput }
%struct.pppThroughput = type { i32, i64, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.datalink = type { i64, i64, %struct.TYPE_19__*, %struct.TYPE_25__, %struct.datalink* }
%struct.TYPE_19__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"Name: %s [%s, %s]\00", align 1
@DATALINK_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c" bandwidth %d, %llu bps (%llu bytes/sec)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Currently averaging %llu bps (%llu bytes/sec) over the last %d secs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bundle_ShowLinks(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca %struct.pppThroughput*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load %struct.datalink*, %struct.datalink** %10, align 8
  store %struct.datalink* %11, %struct.datalink** %3, align 8
  br label %12

12:                                               ; preds = %95, %1
  %13 = load %struct.datalink*, %struct.datalink** %3, align 8
  %14 = icmp ne %struct.datalink* %13, null
  br i1 %14, label %15, label %99

15:                                               ; preds = %12
  %16 = load %struct.datalink*, %struct.datalink** %3, align 8
  %17 = getelementptr inbounds %struct.datalink, %struct.datalink* %16, i32 0, i32 2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.datalink*, %struct.datalink** %3, align 8
  %26 = getelementptr inbounds %struct.datalink, %struct.datalink* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @MAX(i32 %24, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %36 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.datalink*, %struct.datalink** %3, align 8
  %39 = getelementptr inbounds %struct.datalink, %struct.datalink* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.datalink*, %struct.datalink** %3, align 8
  %42 = getelementptr inbounds %struct.datalink, %struct.datalink* %41, i32 0, i32 2
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @mode2Nam(i32 %45)
  %47 = load %struct.datalink*, %struct.datalink** %3, align 8
  %48 = call i32 @datalink_State(%struct.datalink* %47)
  %49 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %46, i32 %48)
  %50 = load %struct.datalink*, %struct.datalink** %3, align 8
  %51 = getelementptr inbounds %struct.datalink, %struct.datalink* %50, i32 0, i32 2
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %15
  %60 = load %struct.datalink*, %struct.datalink** %3, align 8
  %61 = getelementptr inbounds %struct.datalink, %struct.datalink* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DATALINK_OPEN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %59
  %66 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %67 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.datalink*, %struct.datalink** %3, align 8
  %70 = getelementptr inbounds %struct.datalink, %struct.datalink* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.datalink*, %struct.datalink** %3, align 8
  %76 = getelementptr inbounds %struct.datalink, %struct.datalink* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  br label %84

79:                                               ; preds = %65
  %80 = load %struct.datalink*, %struct.datalink** %3, align 8
  %81 = getelementptr inbounds %struct.datalink, %struct.datalink* %80, i32 0, i32 2
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = call i64 @physical_GetSpeed(%struct.TYPE_19__* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i64 [ %78, %74 ], [ %83, %79 ]
  %86 = load i64, i64* %5, align 8
  %87 = mul i64 %86, 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %84, %59, %15
  %91 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %92 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90
  %96 = load %struct.datalink*, %struct.datalink** %3, align 8
  %97 = getelementptr inbounds %struct.datalink, %struct.datalink* %96, i32 0, i32 4
  %98 = load %struct.datalink*, %struct.datalink** %97, align 8
  store %struct.datalink* %98, %struct.datalink** %3, align 8
  br label %12

99:                                               ; preds = %12
  %100 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %101 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %100, i32 0, i32 1
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  store %struct.pppThroughput* %107, %struct.pppThroughput** %4, align 8
  %108 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %109 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %113 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @MAX(i32 %111, i32 %115)
  store i64 %116, i64* %5, align 8
  %117 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %118 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %99
  br label %125

122:                                              ; preds = %99
  %123 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %124 = call i32 @throughput_uptime(%struct.pppThroughput* %123)
  br label %125

125:                                              ; preds = %122, %121
  %126 = phi i32 [ 0, %121 ], [ %124, %122 ]
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %129 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %134 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %132, %125
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %141 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %5, align 8
  %144 = mul i64 %143, 8
  %145 = load i64, i64* %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %142, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %144, i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %139, %136
  ret i32 0
}

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i64 @mode2Nam(i32) #1

declare dso_local i32 @datalink_State(%struct.datalink*) #1

declare dso_local i64 @physical_GetSpeed(%struct.TYPE_19__*) #1

declare dso_local i32 @throughput_uptime(%struct.pppThroughput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
