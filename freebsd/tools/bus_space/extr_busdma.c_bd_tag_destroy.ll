; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_tag_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_tag_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_ioc_busdma = type { i32, i32 }
%struct.obj = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@OBJ_TYPE_TAG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_TAG_DESTROY = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_tag_destroy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_ioc_busdma, align 4
  %5 = alloca %struct.obj*, align 8
  %6 = alloca %struct.obj*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @OBJ_TYPE_TAG, align 4
  %9 = call %struct.obj* @obj_lookup(i32 %7, i32 %8)
  store %struct.obj* %9, %struct.obj** %6, align 8
  %10 = load %struct.obj*, %struct.obj** %6, align 8
  %11 = icmp eq %struct.obj* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.obj*, %struct.obj** %6, align 8
  %16 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EBUSY, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %14
  %22 = call i32 @memset(%struct.proto_ioc_busdma* %4, i32 0, i32 8)
  %23 = load i32, i32* @PROTO_IOC_BUSDMA_TAG_DESTROY, align 4
  %24 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.obj*, %struct.obj** %6, align 8
  %26 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.obj*, %struct.obj** %6, align 8
  %30 = getelementptr inbounds %struct.obj, %struct.obj* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PROTO_IOC_BUSDMA, align 4
  %33 = call i32 @ioctl(i32 %31, i32 %32, %struct.proto_ioc_busdma* %4)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %2, align 4
  br label %57

37:                                               ; preds = %21
  %38 = load %struct.obj*, %struct.obj** %6, align 8
  %39 = getelementptr inbounds %struct.obj, %struct.obj* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.obj*, %struct.obj** %6, align 8
  %44 = getelementptr inbounds %struct.obj, %struct.obj* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  br label %54

49:                                               ; preds = %37
  %50 = load %struct.obj*, %struct.obj** %6, align 8
  %51 = getelementptr inbounds %struct.obj, %struct.obj* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.obj*, %struct.obj** %6, align 8
  %56 = call i32 @obj_free(%struct.obj* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %35, %19, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.obj* @obj_lookup(i32, i32) #1

declare dso_local i32 @memset(%struct.proto_ioc_busdma*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.proto_ioc_busdma*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @obj_free(%struct.obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
