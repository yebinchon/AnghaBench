; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_mem_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_ioc_busdma = type { i32, i32 }
%struct.obj = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OBJ_TYPE_MD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_MEM_FREE = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA = common dso_local global i32 0, align 4
@BUSDMA_MD_VIRT = common dso_local global i32 0, align 4
@BUSDMA_MD_PHYS = common dso_local global i32 0, align 4
@BUSDMA_MD_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_mem_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_ioc_busdma, align 4
  %5 = alloca %struct.obj*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @OBJ_TYPE_MD, align 4
  %8 = call %struct.obj* @obj_lookup(i32 %6, i32 %7)
  store %struct.obj* %8, %struct.obj** %5, align 8
  %9 = load %struct.obj*, %struct.obj** %5, align 8
  %10 = icmp eq %struct.obj* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.proto_ioc_busdma* %4, i32 0, i32 8)
  %15 = load i32, i32* @PROTO_IOC_BUSDMA_MEM_FREE, align 4
  %16 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %4, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.obj*, %struct.obj** %5, align 8
  %18 = getelementptr inbounds %struct.obj, %struct.obj* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.obj*, %struct.obj** %5, align 8
  %22 = getelementptr inbounds %struct.obj, %struct.obj* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PROTO_IOC_BUSDMA, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.proto_ioc_busdma* %4)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %13
  %30 = load %struct.obj*, %struct.obj** %5, align 8
  %31 = load i32, i32* @BUSDMA_MD_VIRT, align 4
  %32 = call i32 @bd_md_del_segs(%struct.obj* %30, i32 %31, i32 1)
  %33 = load %struct.obj*, %struct.obj** %5, align 8
  %34 = load i32, i32* @BUSDMA_MD_PHYS, align 4
  %35 = call i32 @bd_md_del_segs(%struct.obj* %33, i32 %34, i32 0)
  %36 = load %struct.obj*, %struct.obj** %5, align 8
  %37 = load i32, i32* @BUSDMA_MD_BUS, align 4
  %38 = call i32 @bd_md_del_segs(%struct.obj* %36, i32 %37, i32 0)
  %39 = load %struct.obj*, %struct.obj** %5, align 8
  %40 = getelementptr inbounds %struct.obj, %struct.obj* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.obj*, %struct.obj** %5, align 8
  %46 = call i32 @obj_free(%struct.obj* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %29, %27, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.obj* @obj_lookup(i32, i32) #1

declare dso_local i32 @memset(%struct.proto_ioc_busdma*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.proto_ioc_busdma*) #1

declare dso_local i32 @bd_md_del_segs(%struct.obj*, i32, i32) #1

declare dso_local i32 @obj_free(%struct.obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
