; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_response.c_pqisrc_process_response_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_response.c_pqisrc_process_response_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64, i32, i32, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* }
%struct.TYPE_16__ = type { i64, i64*, i64, i64, i32, i32, i64, i32 }
%struct.pqi_io_response = type { i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@num_intrs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ci : %d pi : %d qid : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"response.header.iu_type : %x \0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid Response IU 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqisrc_process_response_queue(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.pqi_io_response*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = load i32, i32* @num_intrs, align 4
  %15 = call i32 @OS_ATOMIC64_INC(%struct.TYPE_15__* %13, i32 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i64 %21
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %5, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, ...) @DBG_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %2, %121
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  store i64 0, i64* %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %128

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %43, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %50, %51
  %53 = inttoptr i64 %52 to %struct.pqi_io_response*
  store %struct.pqi_io_response* %53, %struct.pqi_io_response** %6, align 8
  %54 = load %struct.pqi_io_response*, %struct.pqi_io_response** %6, align 8
  %55 = getelementptr inbounds %struct.pqi_io_response, %struct.pqi_io_response* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %60
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %9, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %42
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %67, %42
  %73 = phi i1 [ false, %42 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.pqi_io_response*, %struct.pqi_io_response** %6, align 8
  %79 = getelementptr inbounds %struct.pqi_io_response, %struct.pqi_io_response* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, i32, ...) @DBG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.pqi_io_response*, %struct.pqi_io_response** %6, align 8
  %84 = getelementptr inbounds %struct.pqi_io_response, %struct.pqi_io_response* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %115 [
    i32 129, label %87
    i32 132, label %87
    i32 130, label %94
    i32 133, label %94
    i32 131, label %105
    i32 128, label %108
  ]

87:                                               ; preds = %72, %72
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  %90 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = call i32 %90(%struct.TYPE_15__* %91, %struct.TYPE_14__* %92)
  br label %121

94:                                               ; preds = %72, %72
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)** %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %100 = load %struct.pqi_io_response*, %struct.pqi_io_response** %6, align 8
  %101 = getelementptr inbounds %struct.pqi_io_response, %struct.pqi_io_response* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @LE_16(i32 %102)
  %104 = call i32 %97(%struct.TYPE_15__* %98, %struct.TYPE_14__* %99, i32 %103)
  br label %121

105:                                              ; preds = %72
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store i32 0, i32* %107, align 8
  br label %121

108:                                              ; preds = %72
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = load %struct.pqi_io_response*, %struct.pqi_io_response** %6, align 8
  %111 = bitcast %struct.pqi_io_response* %110 to i8*
  %112 = call i32 @pqisrc_process_task_management_response(%struct.TYPE_15__* %109, i8* %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  br label %121

115:                                              ; preds = %72
  %116 = load %struct.pqi_io_response*, %struct.pqi_io_response** %6, align 8
  %117 = getelementptr inbounds %struct.pqi_io_response, %struct.pqi_io_response* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @DBG_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %115, %108, %105, %94, %87
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = urem i64 %123, %126
  store i64 %127, i64* %8, align 8
  br label %37

128:                                              ; preds = %41
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @PCI_MEM_PUT32(%struct.TYPE_15__* %132, i32 %135, i32 %138, i64 %141)
  %143 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @OS_ATOMIC64_INC(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DBG_INFO(i8*, i32, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @LE_16(i32) #1

declare dso_local i32 @pqisrc_process_task_management_response(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @PCI_MEM_PUT32(%struct.TYPE_15__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
