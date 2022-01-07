; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqi_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@LEGACY_SIS_IDBR = common dso_local global i32 0, align 4
@SIS_PQI_RESET_QUIESCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed with error %d during quiesce\0A\00", align 1
@PQI_RESET_TYPE_HARD_RESET = common dso_local global i32 0, align 4
@PQI_RESET_ACTION_RESET = common dso_local global i32 0, align 4
@PQI_DEV_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PQI reset timed out: ret = %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqi_reset(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 1, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* @LEGACY_SIS_IDBR, align 4
  %25 = call i32 @PCI_MEM_GET32(%struct.TYPE_14__* %19, i32* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @SIS_PQI_RESET_QUIESCE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* @LEGACY_SIS_IDBR, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @LE_32(i32 %35)
  %37 = call i32 @PCI_MEM_PUT32(%struct.TYPE_14__* %29, i32* %33, i32 %34, i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = load i32, i32* @SIS_PQI_RESET_QUIESCE, align 4
  %40 = call i32 @pqisrc_sis_wait_for_db_bit_to_clear(%struct.TYPE_14__* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %18
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @DBG_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %80

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47, %13
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @PQI_RESET_TYPE_HARD_RESET, align 4
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @PQI_RESET_ACTION_RESET, align 4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* @PQI_DEV_RESET, align 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @LE_32(i32 %63)
  %65 = call i32 @PCI_MEM_PUT32(%struct.TYPE_14__* %56, i32* %60, i32 %61, i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = call i32 @pqisrc_wait_for_pqi_reset_completion(%struct.TYPE_14__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %48
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @DBG_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %80

74:                                               ; preds = %48
  br label %75

75:                                               ; preds = %74, %1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %70, %43
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @PCI_MEM_GET32(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @PCI_MEM_PUT32(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @LE_32(i32) #1

declare dso_local i32 @pqisrc_sis_wait_for_db_bit_to_clear(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @pqisrc_wait_for_pqi_reset_completion(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
