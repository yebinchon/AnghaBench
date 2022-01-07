; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_SendSRB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_SendSRB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }

@RESET_DETECT = common dso_local global i32 0, align 4
@RESET_DONE = common dso_local global i32 0, align 4
@RESET_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pDCB->MaxCommand=%d \0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pDCB->GoingSRBCnt=%d \0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pACB->pActiveDCB=%8x \0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"pACB->ACBFlag=%x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_13__*)* @trm_SendSRB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_SendSRB(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RESET_DETECT, align 4
  %26 = load i32, i32* @RESET_DONE, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @RESET_DEV, align 4
  %29 = add nsw i32 %27, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %21, %16, %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = call i32 @trm_SRBwaiting(%struct.TYPE_14__* %52, %struct.TYPE_13__* %53)
  br label %111

55:                                               ; preds = %21
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = call i32 @trm_SRBwaiting(%struct.TYPE_14__* %61, %struct.TYPE_13__* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %4, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 4
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %73, align 8
  br label %74

74:                                               ; preds = %60, %55
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = call i32 @trm_StartSCSI(%struct.TYPE_15__* %75, %struct.TYPE_14__* %76, %struct.TYPE_13__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %106, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %97, align 8
  br label %105

98:                                               ; preds = %80
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %104, align 8
  br label %105

105:                                              ; preds = %98, %89
  br label %110

106:                                              ; preds = %74
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = call i32 @trm_RewaitSRB0(%struct.TYPE_14__* %107, %struct.TYPE_13__* %108)
  br label %110

110:                                              ; preds = %106, %105
  br label %111

111:                                              ; preds = %110, %32
  ret void
}

declare dso_local i32 @TRM_DPRINTF(i8*, i32) #1

declare dso_local i32 @trm_SRBwaiting(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @trm_StartSCSI(%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @trm_RewaitSRB0(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
