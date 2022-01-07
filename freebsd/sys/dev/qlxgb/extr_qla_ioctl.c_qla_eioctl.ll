; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_ioctl.c_qla_eioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_ioctl.c_qla_eioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla_eioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.cdev*, %struct.cdev** %7, align 8
  %20 = getelementptr inbounds %struct.cdev, %struct.cdev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %12, align 8
  %23 = icmp eq %struct.TYPE_17__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %6, align 4
  br label %154

26:                                               ; preds = %5
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %151 [
    i32 131, label %31
    i32 130, label %77
    i32 128, label %91
    i32 132, label %112
    i32 129, label %127
  ]

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %14, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %31
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @READ_OFFSET32(%struct.TYPE_17__* %44, i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %60

51:                                               ; preds = %38
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WRITE_OFFSET32(%struct.TYPE_17__* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %43
  br label %76

61:                                               ; preds = %31
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @qla_rdwr_indreg32(%struct.TYPE_17__* %62, i32 %65, i32* %67, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %73, %61
  br label %76

76:                                               ; preds = %75, %60
  br label %152

77:                                               ; preds = %26
  %78 = load i64, i64* %9, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %15, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = call i32 @qla_rd_flash32(%struct.TYPE_17__* %80, i32 %83, i32* %85)
  store i32 %86, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %88, %77
  br label %152

91:                                               ; preds = %26
  %92 = load i64, i64* %9, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %16, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @qla_wr_flash_buffer(%struct.TYPE_17__* %94, i32 %97, i32 %100, i32 %103, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %91
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %109, %91
  br label %152

112:                                              ; preds = %26
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %114 = load i64, i64* %9, align 8
  %115 = inttoptr i64 %114 to %struct.TYPE_18__*
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %9, align 8
  %119 = inttoptr i64 %118 to %struct.TYPE_18__*
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @qla_erase_flash(%struct.TYPE_17__* %113, i32 %117, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = load i32, i32* @ENXIO, align 4
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %124, %112
  br label %152

127:                                              ; preds = %26
  %128 = load i64, i64* %9, align 8
  %129 = inttoptr i64 %128 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %129, %struct.TYPE_15__** %17, align 8
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @pci_get_vendor(i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @pci_get_device(i32 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @pci_get_subvendor(i32 %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @pci_get_subdevice(i32 %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @PCIR_REVID, align 4
  %148 = call i32 @pci_read_config(i32 %146, i32 %147, i32 1)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %152

151:                                              ; preds = %26
  br label %152

152:                                              ; preds = %151, %127, %126, %111, %90, %76
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %24
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @READ_OFFSET32(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @WRITE_OFFSET32(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @qla_rdwr_indreg32(%struct.TYPE_17__*, i32, i32*, i32) #1

declare dso_local i32 @qla_rd_flash32(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @qla_wr_flash_buffer(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @qla_erase_flash(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
