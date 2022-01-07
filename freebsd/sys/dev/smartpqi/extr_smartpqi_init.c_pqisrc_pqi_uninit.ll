; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_pqi_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_pqi_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__, i32, i64, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to switch back the adapter to SIS mode!\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqisrc_pqi_uninit(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = call i32 @pqisrc_wait_for_rescan_complete(%struct.TYPE_17__* %6)
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = call i32 @pqisrc_wait_for_cmnd_complete(%struct.TYPE_17__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = call i32 @pqisrc_complete_internal_cmds(%struct.TYPE_17__* %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = call i32 @os_complete_outstanding_cmds_nodevice(%struct.TYPE_17__* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 11
  %26 = call i32 @os_uninit_spinlock(i32* %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %23, %18
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %89, %29
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 10
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %62

46:                                               ; preds = %36
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 10
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = call i32 @OS_UNINIT_PQILOCK(i32* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 10
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %46, %36
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 9
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %88

72:                                               ; preds = %62
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 9
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = call i32 @OS_UNINIT_PQILOCK(i32* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 9
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %72, %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %30

92:                                               ; preds = %30
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 8
  %96 = call i32 @os_dma_mem_free(%struct.TYPE_17__* %93, i32* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 7
  %100 = call i32 @os_dma_mem_free(%struct.TYPE_17__* %97, i32* %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 6
  %104 = call i32 @os_dma_mem_free(%struct.TYPE_17__* %101, i32* %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  %110 = call i32 @pqisrc_free_rcb(%struct.TYPE_17__* %105, i64 %109)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  %114 = call i32 @pqisrc_destroy_taglist(%struct.TYPE_17__* %111, i32* %113)
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %128

120:                                              ; preds = %92
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = call i32 @OS_UNINIT_PQILOCK(i32* %123)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %120, %92
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = call i32 @os_dma_mem_free(%struct.TYPE_17__* %129, i32* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %134 = call i64 @pqisrc_force_sis(%struct.TYPE_17__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = call i32 @DBG_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %128
  %139 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_wait_for_rescan_complete(%struct.TYPE_17__*) #1

declare dso_local i32 @pqisrc_wait_for_cmnd_complete(%struct.TYPE_17__*) #1

declare dso_local i32 @pqisrc_complete_internal_cmds(%struct.TYPE_17__*) #1

declare dso_local i32 @os_complete_outstanding_cmds_nodevice(%struct.TYPE_17__*) #1

declare dso_local i32 @os_uninit_spinlock(i32*) #1

declare dso_local i32 @OS_UNINIT_PQILOCK(i32*) #1

declare dso_local i32 @os_dma_mem_free(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @pqisrc_free_rcb(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @pqisrc_destroy_taglist(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @pqisrc_force_sis(%struct.TYPE_17__*) #1

declare dso_local i32 @DBG_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
