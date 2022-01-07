; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_ioctl.c_ips_ioctl_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_ioctl.c_ips_ioctl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }

@EINVAL = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ips\00", align 1
@hz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_17__*)* @ips_ioctl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_ioctl_cmd(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = call i64 @bus_dma_tag_create(i32 %13, i32 1, i32 0, i32 %14, i32 %15, i32* null, i32* null, i32 %18, i32 1, i32 %21, i32 0, i32* null, i32* null, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %4, align 4
  br label %137

28:                                               ; preds = %3
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = call i64 @bus_dmamem_alloc(i32 %31, i32* %33, i32 0, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %9, align 4
  br label %121

40:                                               ; preds = %28
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @copyin(i32 %43, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %121

53:                                               ; preds = %40
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = call i32 @mtx_lock(i32* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = call i32 @ips_get_free_cmd(%struct.TYPE_18__* %60, %struct.TYPE_20__** %8, i32 0)
  store i32 %61, i32* %9, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = call i32 @mtx_unlock(i32* %66)
  br label %121

68:                                               ; preds = %53
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %73 = call i32 @ips_ioctl_start(%struct.TYPE_20__* %72)
  br label %74

74:                                               ; preds = %80, %68
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* @hz, align 4
  %85 = sdiv i32 %84, 10
  %86 = call i32 @msleep(%struct.TYPE_19__* %81, i32* %83, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %74

87:                                               ; preds = %74
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = call i64 @COMMAND_ERROR(%struct.TYPE_19__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @EIO, align 4
  store i32 %92, i32* %9, align 4
  br label %94

93:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %93, %91
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = call i32 @mtx_unlock(i32* %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @copyout(i32 %100, i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %94
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %94
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = call i32 @mtx_lock(i32* %113)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %117 = call i32 @ips_insert_free_cmd(%struct.TYPE_18__* %115, %struct.TYPE_20__* %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = call i32 @mtx_unlock(i32* %119)
  br label %121

121:                                              ; preds = %111, %63, %52, %38
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bus_dmamem_free(i32 %124, i32 %127, i32 %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @bus_dma_tag_destroy(i32 %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %121, %26
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i64 @copyin(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ips_get_free_cmd(%struct.TYPE_18__*, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ips_ioctl_start(%struct.TYPE_20__*) #1

declare dso_local i32 @msleep(%struct.TYPE_19__*, i32*, i32, i8*, i32) #1

declare dso_local i64 @COMMAND_ERROR(%struct.TYPE_19__*) #1

declare dso_local i64 @copyout(i32, i32, i32) #1

declare dso_local i32 @ips_insert_free_cmd(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
