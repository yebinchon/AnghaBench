; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ioctl.c_ocs_firmware_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ioctl.c_ocs_firmware_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"fw_write\00", align 1
@FW_WRITE_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ocs_firmware_write: malloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ocs_fw_write_cb = common dso_local global i32 0, align 4
@OCS_SEM_FOREVER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_firmware_write(%struct.TYPE_12__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = call i32 @ocs_sem_init(i32* %17, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = load i32, i32* @FW_WRITE_BUFSIZE, align 4
  %23 = call i64 @ocs_dma_alloc(%struct.TYPE_12__* %21, %struct.TYPE_14__* %14, i32 %22, i32 4096)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = call i32 @ocs_log_err(%struct.TYPE_12__* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %105

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %88, %30
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %101

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @FW_WRITE_BUFSIZE, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @FW_WRITE_BUFSIZE, align 4
  store i32 %39, i32* %12, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ocs_memcpy(i32 %44, i32* %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 1, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @ocs_fw_write_cb, align 4
  %62 = call i32 @ocs_hw_firmware_write(i32* %57, %struct.TYPE_14__* %14, i32 %58, i32 %59, i32 %60, i32 %61, %struct.TYPE_13__* %16)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %64 = load i32, i32* @OCS_SEM_FOREVER, align 4
  %65 = call i64 @ocs_sem_p(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %101

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @EFAULT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %101

81:                                               ; preds = %74
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %81
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %13, align 4
  br label %31

101:                                              ; preds = %78, %67, %31
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = call i32 @ocs_dma_free(%struct.TYPE_12__* %102, %struct.TYPE_14__* %14)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %25
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @ocs_sem_init(i32*, i32, i8*) #1

declare dso_local i64 @ocs_dma_alloc(%struct.TYPE_12__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ocs_memcpy(i32, i32*, i32) #1

declare dso_local i32 @ocs_hw_firmware_write(i32*, %struct.TYPE_14__*, i32, i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @ocs_sem_p(i32*, i32) #1

declare dso_local i32 @ocs_dma_free(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
