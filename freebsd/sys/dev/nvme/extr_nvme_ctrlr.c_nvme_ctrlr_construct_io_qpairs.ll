; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct_io_qpairs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct_io_qpairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32, i32, i64, i32, %struct.nvme_qpair*, i32 }
%struct.nvme_qpair = type { i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@doorbell = common dso_local global i32* null, align 8
@NVME_IO_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hw.nvme.io_entries\00", align 1
@NVME_IO_TRACKERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"hw.nvme.io_trackers\00", align 1
@NVME_MIN_IO_TRACKERS = common dso_local global i32 0, align 4
@NVME_MAX_IO_TRACKERS = common dso_local global i32 0, align 4
@M_NVME = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@cpuset_domain = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_construct_io_qpairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_construct_io_qpairs(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca %struct.nvme_qpair*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  %14 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rman_get_size(i32 %16)
  %18 = load i32*, i32** @doorbell, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nvme_mmio_offsetof(i32 %20)
  %22 = sub nsw i32 %17, %21
  %23 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %24 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = shl i32 1, %26
  %28 = sdiv i32 %22, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @NVME_IO_ENTRIES, align 4
  store i32 %29, i32* %11, align 4
  %30 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %11)
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nvme_mmio_read_4(%struct.nvme_controller* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @NVME_CAP_LO_MQES(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @min(i32 %36, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @NVME_IO_TRACKERS, align 4
  store i32 %43, i32* %12, align 4
  %44 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @NVME_MIN_IO_TRACKERS, align 4
  %47 = call i32 @max(i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @NVME_MAX_IO_TRACKERS, align 4
  %50 = call i32 @min(i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @min(i32 %51, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %57 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = mul nsw i32 %59, 3
  %61 = sdiv i32 %60, 4
  %62 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %63 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %65 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 24
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @M_NVME, align 4
  %71 = load i32, i32* @M_ZERO, align 4
  %72 = load i32, i32* @M_WAITOK, align 4
  %73 = or i32 %71, %72
  %74 = call %struct.nvme_qpair* @malloc(i32 %69, i32 %70, i32 %73)
  %75 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %76 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %75, i32 0, i32 5
  store %struct.nvme_qpair* %74, %struct.nvme_qpair** %76, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %175, %1
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %80 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %181

83:                                               ; preds = %77
  %84 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %85 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %84, i32 0, i32 5
  %86 = load %struct.nvme_qpair*, %struct.nvme_qpair** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %86, i64 %88
  store %struct.nvme_qpair* %89, %struct.nvme_qpair** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %93 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %95 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %133

98:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %108, %98
  %100 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @QP(%struct.nvme_controller* %100, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %99

111:                                              ; preds = %99
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %114 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @device_get_unit(i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = sdiv i32 %117, 2
  %119 = add nsw i32 %116, %118
  %120 = load i32, i32* %10, align 4
  %121 = srem i32 %119, %120
  %122 = add nsw i32 %112, %121
  %123 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %124 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %126 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.TYPE_2__* @pcpu_find(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %132 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %148

133:                                              ; preds = %83
  %134 = load i32*, i32** @cpuset_domain, align 8
  %135 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %136 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = call i32 @CPU_FFS(i32* %138)
  %140 = sub nsw i32 %139, 1
  %141 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %142 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %144 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %147 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %133, %111
  %149 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %153 = call i32 @nvme_qpair_construct(%struct.nvme_qpair* %149, i32 %150, i32 %151, %struct.nvme_controller* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %2, align 4
  br label %182

158:                                              ; preds = %148
  %159 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %160 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 1
  br i1 %162, label %163, label %174

163:                                              ; preds = %158
  %164 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %165 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %168 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.nvme_qpair*, %struct.nvme_qpair** %4, align 8
  %171 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @bus_bind_intr(i32 %166, i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %163, %158
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %7, align 4
  br label %77

181:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %156
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i32 @nvme_mmio_offsetof(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i32 @NVME_CAP_LO_MQES(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.nvme_qpair* @malloc(i32, i32, i32) #1

declare dso_local i32 @QP(%struct.nvme_controller*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_2__* @pcpu_find(i32) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @nvme_qpair_construct(%struct.nvme_qpair*, i32, i32, %struct.nvme_controller*) #1

declare dso_local i32 @bus_bind_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
