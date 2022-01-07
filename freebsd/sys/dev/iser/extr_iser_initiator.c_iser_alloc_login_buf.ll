; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_alloc_login_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_alloc_login_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i8*, i8*, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iser_device* }
%struct.iser_device = type { i32 }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i64 0, align 8
@ISER_RX_LOGIN_SIZE = common dso_local global i64 0, align 8
@M_ISER_INITIATOR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to alloc or map login buf\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_alloc_login_buf(%struct.iser_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.iser_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  %7 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.iser_device*, %struct.iser_device** %9, align 8
  store %struct.iser_device* %10, %struct.iser_device** %4, align 8
  %11 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %12 = icmp eq %struct.iser_device* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i64, i64* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 8
  %16 = load i64, i64* @ISER_RX_LOGIN_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @M_ISER_INITIATOR, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @malloc(i64 %17, i32 %18, i32 %21)
  %23 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %24 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %101

30:                                               ; preds = %1
  %31 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %32 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %35 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %37 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %42 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %44 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %47 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 8
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i8* @ib_dma_map_single(i32 %45, i64 %48, i64 %49, i32 %50)
  %52 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %53 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %55 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %58 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ISER_RX_LOGIN_SIZE, align 8
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i8* @ib_dma_map_single(i32 %56, i64 %59, i64 %60, i32 %61)
  %63 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %64 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %66 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %69 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @ib_dma_mapping_error(i32 %67, i8* %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %73 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %76 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @ib_dma_mapping_error(i32 %74, i8* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %30
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81, %30
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %89 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %88, i32 0, i32 1
  store i8* null, i8** %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %95 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %94, i32 0, i32 0
  store i8* null, i8** %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  br label %98

97:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %104

98:                                               ; preds = %96
  %99 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %100 = call i32 @iser_free_login_buf(%struct.iser_conn* %99)
  br label %101

101:                                              ; preds = %98, %29
  %102 = call i32 @ISER_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @malloc(i64, i32, i32) #1

declare dso_local i8* @ib_dma_map_single(i32, i64, i64, i32) #1

declare dso_local i32 @ib_dma_mapping_error(i32, i8*) #1

declare dso_local i32 @iser_free_login_buf(%struct.iser_conn*) #1

declare dso_local i32 @ISER_DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
