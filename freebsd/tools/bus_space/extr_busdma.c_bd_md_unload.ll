; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_ioc_busdma = type { i32, i32 }
%struct.obj = type { i32, i32 }

@OBJ_TYPE_MD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_MD_UNLOAD = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA = common dso_local global i32 0, align 4
@BUSDMA_MD_VIRT = common dso_local global i32 0, align 4
@BUSDMA_MD_PHYS = common dso_local global i32 0, align 4
@BUSDMA_MD_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_md_unload(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_ioc_busdma, align 4
  %5 = alloca %struct.obj*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @OBJ_TYPE_MD, align 4
  %9 = call %struct.obj* @obj_lookup(i32 %7, i32 %8)
  store %struct.obj* %9, %struct.obj** %5, align 8
  %10 = load %struct.obj*, %struct.obj** %5, align 8
  %11 = icmp eq %struct.obj* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = call i32 @memset(%struct.proto_ioc_busdma* %4, i32 0, i32 8)
  %16 = load i32, i32* @PROTO_IOC_BUSDMA_MD_UNLOAD, align 4
  %17 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %4, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.obj*, %struct.obj** %5, align 8
  %19 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.obj*, %struct.obj** %5, align 8
  %23 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PROTO_IOC_BUSDMA, align 4
  %26 = call i32 @ioctl(i32 %24, i32 %25, %struct.proto_ioc_busdma* %4)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %14
  %31 = load %struct.obj*, %struct.obj** %5, align 8
  %32 = load i32, i32* @BUSDMA_MD_VIRT, align 4
  %33 = call i32 @bd_md_del_segs(%struct.obj* %31, i32 %32, i32 0)
  %34 = load %struct.obj*, %struct.obj** %5, align 8
  %35 = load i32, i32* @BUSDMA_MD_PHYS, align 4
  %36 = call i32 @bd_md_del_segs(%struct.obj* %34, i32 %35, i32 0)
  %37 = load %struct.obj*, %struct.obj** %5, align 8
  %38 = load i32, i32* @BUSDMA_MD_BUS, align 4
  %39 = call i32 @bd_md_del_segs(%struct.obj* %37, i32 %38, i32 0)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %30, %28, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.obj* @obj_lookup(i32, i32) #1

declare dso_local i32 @memset(%struct.proto_ioc_busdma*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.proto_ioc_busdma*) #1

declare dso_local i32 @bd_md_del_segs(%struct.obj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
