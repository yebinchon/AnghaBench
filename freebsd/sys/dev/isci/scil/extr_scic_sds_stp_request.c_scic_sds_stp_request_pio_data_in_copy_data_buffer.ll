; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_pio_data_in_copy_data_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_pio_data_in_copy_data_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@SCU_SGL_ELEMENT_PAIR_A = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i32*, i64)* @scic_sds_stp_request_pio_data_in_copy_data_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_request_pio_data_in_copy_data_buffer(%struct.TYPE_17__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCU_SGL_ELEMENT_PAIR_A, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  br label %38

38:                                               ; preds = %30, %22
  %39 = phi %struct.TYPE_16__* [ %29, %22 ], [ %37, %30 ]
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %8, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i32*, i32** %5, align 8
  store i32* %46, i32** %11, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %105, %38
  %54 = load i64, i64* %6, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @SCI_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %62, label %106

62:                                               ; preds = %60
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = call %struct.TYPE_16__* @scic_sds_stp_request_pio_get_next_sgl(%struct.TYPE_17__* %69)
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %8, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = icmp eq %struct.TYPE_16__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %74, i64* %7, align 8
  br label %76

75:                                               ; preds = %68
  store i64 0, i64* %9, align 8
  br label %76

76:                                               ; preds = %75, %73
  br label %105

77:                                               ; preds = %62
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @scic_cb_io_request_get_virtual_address_from_sgl(%struct.TYPE_17__* %78, i64 %79)
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %12, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub nsw i64 %85, %86
  %88 = call i64 @MIN(i64 %82, i64 %87)
  store i64 %88, i64* %13, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @memcpy(i32* %89, i32* %90, i64 %91)
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub nsw i64 %94, %93
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 %102
  store i32* %104, i32** %11, align 8
  br label %105

105:                                              ; preds = %77, %76
  br label %53

106:                                              ; preds = %60
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store i64 %107, i64* %112, align 8
  %113 = load i64, i64* %7, align 8
  ret i64 %113
}

declare dso_local %struct.TYPE_16__* @scic_sds_stp_request_pio_get_next_sgl(%struct.TYPE_17__*) #1

declare dso_local i64 @scic_cb_io_request_get_virtual_address_from_sgl(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
