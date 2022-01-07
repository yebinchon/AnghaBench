; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_process_event_intr_src.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_event.c_pqisrc_process_event_intr_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.pqi_event*, %struct.TYPE_13__ }
%struct.pqi_event = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32*, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" IN\0A\00", align 1
@num_intrs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Initial Event_q ci : %d Event_q pi : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"queue_id : %d ci : %d pi : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"response.header.iu_type : 0x%x \0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"response.event_type : 0x%x \0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_process_event_intr_src(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.pqi_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = load i32, i32* @num_intrs, align 4
  %15 = call i32 @OS_ATOMIC64_INC(%struct.TYPE_11__* %13, i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, i32, ...) @DBG_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %2, %87
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, i32, ...) @DBG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %94

37:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %40, %46
  %48 = call i32 @memcpy(%struct.TYPE_12__* %7, i64 %47, i32 32)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i32, ...) @DBG_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, ...) @DBG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pqisrc_event_type_to_event_index(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %37
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.pqi_event*, %struct.pqi_event** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %68, i64 %70
  store %struct.pqi_event* %71, %struct.pqi_event** %9, align 8
  %72 = load %struct.pqi_event*, %struct.pqi_event** %9, align 8
  %73 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pqi_event*, %struct.pqi_event** %9, align 8
  %77 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pqi_event*, %struct.pqi_event** %9, align 8
  %81 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.pqi_event*, %struct.pqi_event** %9, align 8
  %85 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %65, %61
  br label %87

87:                                               ; preds = %86, %37
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %89, %92
  store i32 %93, i32* %6, align 4
  br label %28

94:                                               ; preds = %36
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @PCI_MEM_PUT32(%struct.TYPE_11__* %98, i32 %101, i32 %104, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %94
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = call i32 @os_eventtaskqueue_enqueue(%struct.TYPE_11__* %112)
  br label %114

114:                                              ; preds = %111, %94
  %115 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  ret i32 %116
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @OS_ATOMIC64_INC(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DBG_INFO(i8*, i32, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @pqisrc_event_type_to_event_index(i32) #1

declare dso_local i32 @PCI_MEM_PUT32(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @os_eventtaskqueue_enqueue(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
