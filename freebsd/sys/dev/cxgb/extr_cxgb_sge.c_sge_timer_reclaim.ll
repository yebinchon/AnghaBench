; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_sge_timer_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_sge_timer_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.sge_qset* }
%struct.sge_qset = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i64, %struct.mtx }
%struct.mtx = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@USING_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't call timer reclaim for msi-x\00", align 1
@TXQ_OFLD = common dso_local global i32 0, align 4
@A_SG_RSPQ_FL_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sge_timer_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_timer_reclaim(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.sge_qset*, align 8
  %10 = alloca %struct.mtx*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.port_info*
  store %struct.port_info* %13, %struct.port_info** %5, align 8
  %14 = load %struct.port_info*, %struct.port_info** %5, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.port_info*, %struct.port_info** %5, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @USING_MSIX, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %155, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %158

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.sge_qset*, %struct.sge_qset** %35, align 8
  %37 = load %struct.port_info*, %struct.port_info** %5, align 8
  %38 = getelementptr inbounds %struct.port_info, %struct.port_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %36, i64 %42
  store %struct.sge_qset* %43, %struct.sge_qset** %9, align 8
  %44 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %45 = load i32, i32* @TXQ_OFLD, align 4
  %46 = call i32 @reclaim_completed_tx(%struct.sge_qset* %44, i32 16, i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @USING_MSIX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %32
  %54 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %55 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  br label %65

57:                                               ; preds = %32
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.sge_qset*, %struct.sge_qset** %60, align 8
  %62 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %61, i64 0
  %63 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  br label %65

65:                                               ; preds = %57, %53
  %66 = phi %struct.mtx* [ %56, %53 ], [ %64, %57 ]
  store %struct.mtx* %66, %struct.mtx** %10, align 8
  %67 = load %struct.mtx*, %struct.mtx** %10, align 8
  %68 = call i64 @mtx_trylock(%struct.mtx* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %154

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = load i32, i32* @A_SG_RSPQ_FL_STATUS, align 4
  %73 = call i32 @t3_read_reg(%struct.TYPE_10__* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %75 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %81 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 16
  %87 = icmp slt i32 %79, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %70
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %91 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 0
  %94 = call i32 @__refill_fl(%struct.TYPE_10__* %89, %struct.TYPE_12__* %93)
  br label %95

95:                                               ; preds = %88, %70
  %96 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %97 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %103 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 16
  %109 = icmp slt i32 %101, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %95
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %113 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %112, i32 0, i32 1
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 1
  %116 = call i32 @__refill_fl(%struct.TYPE_10__* %111, %struct.TYPE_12__* %115)
  br label %117

117:                                              ; preds = %110, %95
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %120 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 1, %122
  %124 = and i32 %118, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %117
  %127 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %128 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %126
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %135 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %134, i32 0, i32 0
  %136 = call i32 @refill_rspq(%struct.TYPE_10__* %133, %struct.TYPE_11__* %135, i32 1)
  %137 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %138 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, -1
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = load i32, i32* @A_SG_RSPQ_FL_STATUS, align 4
  %144 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %145 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = shl i32 1, %147
  %149 = call i32 @t3_write_reg(%struct.TYPE_10__* %142, i32 %143, i32 %148)
  br label %150

150:                                              ; preds = %132, %126
  br label %151

151:                                              ; preds = %150, %117
  %152 = load %struct.mtx*, %struct.mtx** %10, align 8
  %153 = call i32 @mtx_unlock(%struct.mtx* %152)
  br label %154

154:                                              ; preds = %151, %65
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %28

158:                                              ; preds = %28
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.sge_qset*, i32, i32) #1

declare dso_local i64 @mtx_trylock(%struct.mtx*) #1

declare dso_local i32 @t3_read_reg(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @__refill_fl(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @refill_rspq(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
