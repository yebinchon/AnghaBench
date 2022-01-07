; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_eioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_eioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.ifnet* }
%struct.TYPE_21__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_22__ = type { i32*, i32, i32* }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @qlnx_eioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_eioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifnet*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.cdev*, %struct.cdev** %7, align 8
  %18 = getelementptr inbounds %struct.cdev, %struct.cdev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %12, align 8
  %21 = icmp eq %struct.TYPE_23__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %6, align 4
  br label %145

24:                                               ; preds = %5
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load %struct.ifnet*, %struct.ifnet** %26, align 8
  store %struct.ifnet* %27, %struct.ifnet** %14, align 8
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %141 [
    i32 138, label %29
    i32 139, label %34
    i32 136, label %39
    i32 137, label %44
    i32 141, label %49
    i32 142, label %54
    i32 140, label %59
    i32 134, label %64
    i32 132, label %69
    i32 133, label %74
    i32 135, label %79
    i32 130, label %84
    i32 128, label %89
    i32 129, label %94
  ]

29:                                               ; preds = %24
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %31 = load i64, i64* %9, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @qlnx_get_grc_dump_size(%struct.TYPE_23__* %30, i32* %32)
  br label %143

34:                                               ; preds = %24
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %36 = load i64, i64* %9, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @qlnx_get_grc_dump(%struct.TYPE_23__* %35, i32* %37)
  store i32 %38, i32* %13, align 4
  br label %143

39:                                               ; preds = %24
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %41 = load i64, i64* %9, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @qlnx_get_idle_chk_size(%struct.TYPE_23__* %40, i32* %42)
  br label %143

44:                                               ; preds = %24
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %46 = load i64, i64* %9, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @qlnx_get_idle_chk(%struct.TYPE_23__* %45, i32* %47)
  store i32 %48, i32* %13, align 4
  br label %143

49:                                               ; preds = %24
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %51 = load i64, i64* %9, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = call i32 @qlnx_drv_info(%struct.TYPE_23__* %50, i32* %52)
  store i32 %53, i32* %13, align 4
  br label %143

54:                                               ; preds = %24
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %56 = load i64, i64* %9, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @qlnx_dev_settings(%struct.TYPE_23__* %55, i32* %57)
  store i32 %58, i32* %13, align 4
  br label %143

59:                                               ; preds = %24
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %61 = load i64, i64* %9, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = call i32 @qlnx_get_regs(%struct.TYPE_23__* %60, i32* %62)
  store i32 %63, i32* %13, align 4
  br label %143

64:                                               ; preds = %24
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %66 = load i64, i64* %9, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @qlnx_nvram(%struct.TYPE_23__* %65, i32* %67)
  store i32 %68, i32* %13, align 4
  br label %143

69:                                               ; preds = %24
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %71 = load i64, i64* %9, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = call i32 @qlnx_reg_rd_wr(%struct.TYPE_23__* %70, i32* %72)
  store i32 %73, i32* %13, align 4
  br label %143

74:                                               ; preds = %24
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %76 = load i64, i64* %9, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @qlnx_rd_wr_pci_config(%struct.TYPE_23__* %75, i32* %77)
  store i32 %78, i32* %13, align 4
  br label %143

79:                                               ; preds = %24
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %81 = load i64, i64* %9, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = call i32 @qlnx_mac_addr(%struct.TYPE_23__* %80, i32* %82)
  br label %143

84:                                               ; preds = %24
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %86 = load i64, i64* %9, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = call i32 @qlnx_storm_stats(%struct.TYPE_23__* %85, i32* %87)
  br label %143

89:                                               ; preds = %24
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %91 = load i64, i64* %9, align 8
  %92 = inttoptr i64 %91 to %struct.TYPE_22__*
  %93 = call i32 @qlnx_get_trace_size(%struct.TYPE_23__* %90, %struct.TYPE_22__* %92)
  br label %143

94:                                               ; preds = %24
  %95 = load i64, i64* %9, align 8
  %96 = inttoptr i64 %95 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %15, align 8
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %137, %94
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %97
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %104
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %131 = call i32 @qlnx_get_trace(%struct.TYPE_23__* %128, i32 %129, %struct.TYPE_22__* %130)
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %127, %118, %113, %104
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %140

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  br label %97

140:                                              ; preds = %135, %97
  br label %143

141:                                              ; preds = %24
  %142 = load i32, i32* @EINVAL, align 4
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %141, %140, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %22
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @qlnx_get_grc_dump_size(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_get_grc_dump(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_get_idle_chk_size(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_get_idle_chk(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_drv_info(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_dev_settings(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_get_regs(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_nvram(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_reg_rd_wr(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_rd_wr_pci_config(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_mac_addr(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_storm_stats(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @qlnx_get_trace_size(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @qlnx_get_trace(%struct.TYPE_23__*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
