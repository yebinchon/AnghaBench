; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_setup_hw_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_setup_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)*, %struct.rdma_hw_stats*, %struct.rdma_hw_stats*, %struct.TYPE_2__, %struct.rdma_hw_stats* (%struct.ib_device*, i32)* }
%struct.rdma_hw_stats = type { i32, i8*, %struct.rdma_hw_stats**, i32*, i32 }
%struct.TYPE_2__ = type { %struct.kobject }
%struct.kobject = type { i32 }
%struct.ib_port = type { %struct.rdma_hw_stats*, %struct.rdma_hw_stats*, %struct.kobject }
%struct.attribute_group = type { i32, i8*, %struct.attribute_group**, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hw_counters\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"lifespan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.ib_port*, i32)* @setup_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_hw_stats(%struct.ib_device* %0, %struct.ib_port* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.attribute_group*, align 8
  %8 = alloca %struct.rdma_hw_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kobject*, align 8
  %12 = alloca %struct.kobject*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_port* %1, %struct.ib_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %14 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %13, i32 0, i32 4
  %15 = load %struct.rdma_hw_stats* (%struct.ib_device*, i32)*, %struct.rdma_hw_stats* (%struct.ib_device*, i32)** %14, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.rdma_hw_stats* %15(%struct.ib_device* %16, i32 %17)
  store %struct.rdma_hw_stats* %18, %struct.rdma_hw_stats** %8, align 8
  %19 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %20 = icmp ne %struct.rdma_hw_stats* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %217

22:                                               ; preds = %3
  %23 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %24 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %29 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  br label %214

33:                                               ; preds = %27
  %34 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %35 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = add i64 40, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.rdma_hw_stats* @kzalloc(i32 %41, i32 %42)
  %44 = bitcast %struct.rdma_hw_stats* %43 to %struct.attribute_group*
  store %struct.attribute_group* %44, %struct.attribute_group** %7, align 8
  %45 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %46 = icmp ne %struct.attribute_group* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %33
  br label %214

48:                                               ; preds = %33
  %49 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %50 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %49, i32 0, i32 0
  %51 = load i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)*, i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)** %50, align 8
  %52 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %53 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %56 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %51(%struct.ib_device* %52, %struct.rdma_hw_stats* %53, i32 %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %61 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %210

65:                                               ; preds = %48
  %66 = load i32, i32* @jiffies, align 4
  %67 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %68 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %70 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %69, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %72 = bitcast %struct.attribute_group* %71 to i8*
  %73 = getelementptr inbounds i8, i8* %72, i64 40
  %74 = bitcast i8* %73 to %struct.attribute_group**
  %75 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %76 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %75, i32 0, i32 2
  store %struct.attribute_group** %74, %struct.attribute_group*** %76, align 8
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %120, %65
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %80 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %123

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %87 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.rdma_hw_stats* @alloc_hsa(i32 %84, i32 %85, i32 %92)
  %94 = bitcast %struct.rdma_hw_stats* %93 to %struct.attribute_group*
  %95 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %96 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %95, i32 0, i32 2
  %97 = load %struct.attribute_group**, %struct.attribute_group*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %97, i64 %99
  store %struct.attribute_group* %94, %struct.attribute_group** %100, align 8
  %101 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %102 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %101, i32 0, i32 2
  %103 = load %struct.attribute_group**, %struct.attribute_group*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %103, i64 %105
  %107 = load %struct.attribute_group*, %struct.attribute_group** %106, align 8
  %108 = icmp ne %struct.attribute_group* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %83
  br label %192

110:                                              ; preds = %83
  %111 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %112 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %111, i32 0, i32 2
  %113 = load %struct.attribute_group**, %struct.attribute_group*** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %113, i64 %115
  %117 = load %struct.attribute_group*, %struct.attribute_group** %116, align 8
  %118 = bitcast %struct.attribute_group* %117 to %struct.rdma_hw_stats*
  %119 = call i32 @sysfs_attr_init(%struct.rdma_hw_stats* %118)
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %77

123:                                              ; preds = %77
  %124 = load i32, i32* %6, align 4
  %125 = call %struct.rdma_hw_stats* @alloc_hsa_lifespan(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = bitcast %struct.rdma_hw_stats* %125 to %struct.attribute_group*
  %127 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %128 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %127, i32 0, i32 2
  %129 = load %struct.attribute_group**, %struct.attribute_group*** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %129, i64 %131
  store %struct.attribute_group* %126, %struct.attribute_group** %132, align 8
  %133 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %134 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %133, i32 0, i32 2
  %135 = load %struct.attribute_group**, %struct.attribute_group*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %135, i64 %137
  %139 = load %struct.attribute_group*, %struct.attribute_group** %138, align 8
  %140 = icmp ne %struct.attribute_group* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %123
  %142 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %143 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %142, i32 0, i32 2
  %144 = load %struct.attribute_group**, %struct.attribute_group*** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %144, i64 %146
  %148 = load %struct.attribute_group*, %struct.attribute_group** %147, align 8
  %149 = bitcast %struct.attribute_group* %148 to %struct.rdma_hw_stats*
  %150 = call i32 @sysfs_attr_init(%struct.rdma_hw_stats* %149)
  br label %151

151:                                              ; preds = %141, %123
  %152 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %153 = icmp ne %struct.ib_port* %152, null
  br i1 %153, label %154, label %172

154:                                              ; preds = %151
  %155 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %156 = getelementptr inbounds %struct.ib_port, %struct.ib_port* %155, i32 0, i32 2
  store %struct.kobject* %156, %struct.kobject** %11, align 8
  %157 = load %struct.kobject*, %struct.kobject** %11, align 8
  %158 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %159 = bitcast %struct.attribute_group* %158 to %struct.rdma_hw_stats*
  %160 = call i32 @sysfs_create_group(%struct.kobject* %157, %struct.rdma_hw_stats* %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %154
  br label %192

164:                                              ; preds = %154
  %165 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %166 = bitcast %struct.attribute_group* %165 to %struct.rdma_hw_stats*
  %167 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %168 = getelementptr inbounds %struct.ib_port, %struct.ib_port* %167, i32 0, i32 1
  store %struct.rdma_hw_stats* %166, %struct.rdma_hw_stats** %168, align 8
  %169 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %170 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %171 = getelementptr inbounds %struct.ib_port, %struct.ib_port* %170, i32 0, i32 0
  store %struct.rdma_hw_stats* %169, %struct.rdma_hw_stats** %171, align 8
  br label %191

172:                                              ; preds = %151
  %173 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %174 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store %struct.kobject* %175, %struct.kobject** %12, align 8
  %176 = load %struct.kobject*, %struct.kobject** %12, align 8
  %177 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %178 = bitcast %struct.attribute_group* %177 to %struct.rdma_hw_stats*
  %179 = call i32 @sysfs_create_group(%struct.kobject* %176, %struct.rdma_hw_stats* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  br label %192

183:                                              ; preds = %172
  %184 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %185 = bitcast %struct.attribute_group* %184 to %struct.rdma_hw_stats*
  %186 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %187 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %186, i32 0, i32 2
  store %struct.rdma_hw_stats* %185, %struct.rdma_hw_stats** %187, align 8
  %188 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %189 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %190 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %189, i32 0, i32 1
  store %struct.rdma_hw_stats* %188, %struct.rdma_hw_stats** %190, align 8
  br label %191

191:                                              ; preds = %183, %164
  br label %217

192:                                              ; preds = %182, %163, %109
  br label %193

193:                                              ; preds = %206, %192
  %194 = load i32, i32* %9, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %198 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %197, i32 0, i32 2
  %199 = load %struct.attribute_group**, %struct.attribute_group*** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %199, i64 %201
  %203 = load %struct.attribute_group*, %struct.attribute_group** %202, align 8
  %204 = bitcast %struct.attribute_group* %203 to %struct.rdma_hw_stats*
  %205 = call i32 @kfree(%struct.rdma_hw_stats* %204)
  br label %206

206:                                              ; preds = %196
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %9, align 4
  br label %193

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209, %64
  %211 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %212 = bitcast %struct.attribute_group* %211 to %struct.rdma_hw_stats*
  %213 = call i32 @kfree(%struct.rdma_hw_stats* %212)
  br label %214

214:                                              ; preds = %210, %47, %32
  %215 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %216 = call i32 @kfree(%struct.rdma_hw_stats* %215)
  br label %217

217:                                              ; preds = %214, %191, %21
  ret void
}

declare dso_local %struct.rdma_hw_stats* @kzalloc(i32, i32) #1

declare dso_local %struct.rdma_hw_stats* @alloc_hsa(i32, i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.rdma_hw_stats*) #1

declare dso_local %struct.rdma_hw_stats* @alloc_hsa_lifespan(i8*, i32) #1

declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.rdma_hw_stats*) #1

declare dso_local i32 @kfree(%struct.rdma_hw_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
