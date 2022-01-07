; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_ioc_busdma = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }
%struct.obj = type { i32, i32 }

@OBJ_TYPE_MD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_MD_LOAD = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA = common dso_local global i32 0, align 4
@BUSDMA_MD_VIRT = common dso_local global i32 0, align 4
@BUSDMA_MD_PHYS = common dso_local global i32 0, align 4
@BUSDMA_MD_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_md_load(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.proto_ioc_busdma, align 8
  %11 = alloca %struct.obj*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @OBJ_TYPE_MD, align 4
  %15 = call %struct.obj* @obj_lookup(i32 %13, i32 %14)
  store %struct.obj* %15, %struct.obj** %11, align 8
  %16 = load %struct.obj*, %struct.obj** %11, align 8
  %17 = icmp eq %struct.obj* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = call i32 @memset(%struct.proto_ioc_busdma* %10, i32 0, i32 40)
  %22 = load i32, i32* @PROTO_IOC_BUSDMA_MD_LOAD, align 4
  %23 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.obj*, %struct.obj** %11, align 8
  %25 = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load %struct.obj*, %struct.obj** %11, align 8
  %42 = getelementptr inbounds %struct.obj, %struct.obj* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PROTO_IOC_BUSDMA, align 4
  %45 = call i32 @ioctl(i32 %43, i32 %44, %struct.proto_ioc_busdma* %10)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %20
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %5, align 4
  br label %75

49:                                               ; preds = %20
  %50 = load %struct.obj*, %struct.obj** %11, align 8
  %51 = load i32, i32* @BUSDMA_MD_VIRT, align 4
  %52 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @bd_md_add_seg(%struct.obj* %50, i32 %51, i64 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.obj*, %struct.obj** %11, align 8
  %59 = load i32, i32* @BUSDMA_MD_PHYS, align 4
  %60 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @bd_md_add_seg(%struct.obj* %58, i32 %59, i64 %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.obj*, %struct.obj** %11, align 8
  %67 = load i32, i32* @BUSDMA_MD_BUS, align 4
  %68 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @bd_md_add_seg(%struct.obj* %66, i32 %67, i64 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %49, %47, %18
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.obj* @obj_lookup(i32, i32) #1

declare dso_local i32 @memset(%struct.proto_ioc_busdma*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.proto_ioc_busdma*) #1

declare dso_local i32 @bd_md_add_seg(%struct.obj*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
