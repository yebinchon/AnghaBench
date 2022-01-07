; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_power_control_timer_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_power_control_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_21__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_22__**, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCIC_SDS_PHY_PROTOCOL_SAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_controller_power_control_timer_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @FALSE, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 8
  br label %168

23:                                               ; preds = %1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %162, %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @SCI_MAX_PHYS, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi i1 [ false, %24 ], [ %33, %28 ]
  br i1 %35, label %36, label %165

36:                                               ; preds = %34
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %40, i64 %41
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  %44 = icmp ne %struct.TYPE_22__* %43, null
  br i1 %44, label %45, label %161

45:                                               ; preds = %36
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %49, %55
  br i1 %56, label %57, label %159

57:                                               ; preds = %45
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %61, i64 %62
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %4, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %68, i64 %69
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = call i32 @scic_sds_phy_consume_power_handler(%struct.TYPE_22__* %81)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SCIC_SDS_PHY_PROTOCOL_SAS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %158

88:                                               ; preds = %57
  store i64 0, i64* %6, align 8
  br label %89

89:                                               ; preds = %154, %88
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @SCI_MAX_PHYS, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %157

93:                                               ; preds = %89
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %97, i64 %98
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %99, align 8
  store %struct.TYPE_22__* %100, %struct.TYPE_22__** %7, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %102 = icmp ne %struct.TYPE_22__* %101, null
  br i1 %102, label %103, label %153

103:                                              ; preds = %93
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %106 = icmp ne %struct.TYPE_22__* %104, %105
  br i1 %106, label %107, label %153

107:                                              ; preds = %103
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %114, %121
  br i1 %122, label %123, label %153

123:                                              ; preds = %107
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %130, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %123
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %143, i64 %144
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, -1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = call i32 @scic_sds_phy_consume_power_handler(%struct.TYPE_22__* %151)
  br label %153

153:                                              ; preds = %139, %123, %107, %103, %93
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %6, align 8
  br label %89

157:                                              ; preds = %89
  br label %158

158:                                              ; preds = %157, %57
  br label %160

159:                                              ; preds = %45
  br label %165

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160, %36
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %5, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %5, align 8
  br label %24

165:                                              ; preds = %159, %34
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %167 = call i32 @scic_sds_controller_power_control_timer_start(%struct.TYPE_13__* %166)
  br label %168

168:                                              ; preds = %165, %18
  ret void
}

declare dso_local i32 @scic_sds_phy_consume_power_handler(%struct.TYPE_22__*) #1

declare dso_local i32 @scic_sds_controller_power_control_timer_start(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
