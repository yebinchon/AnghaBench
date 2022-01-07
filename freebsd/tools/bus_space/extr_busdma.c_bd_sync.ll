; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_ioc_busdma = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }
%struct.obj = type { i32, i32 }

@OBJ_TYPE_MD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA_SYNC = common dso_local global i32 0, align 4
@PROTO_IOC_BUSDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_sync(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.proto_ioc_busdma, align 8
  %11 = alloca %struct.obj*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @OBJ_TYPE_MD, align 4
  %14 = call %struct.obj* @obj_lookup(i32 %12, i32 %13)
  store %struct.obj* %14, %struct.obj** %11, align 8
  %15 = load %struct.obj*, %struct.obj** %11, align 8
  %16 = icmp eq %struct.obj* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %5, align 4
  br label %48

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.proto_ioc_busdma* %10, i32 0, i32 32)
  %21 = load i32, i32* @PROTO_IOC_BUSDMA_SYNC, align 4
  %22 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.obj*, %struct.obj** %11, align 8
  %24 = getelementptr inbounds %struct.obj, %struct.obj* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.obj*, %struct.obj** %11, align 8
  %40 = getelementptr inbounds %struct.obj, %struct.obj* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PROTO_IOC_BUSDMA, align 4
  %43 = call i32 @ioctl(i32 %41, i32 %42, %struct.proto_ioc_busdma* %10)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %19
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %45, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.obj* @obj_lookup(i32, i32) #1

declare dso_local i32 @memset(%struct.proto_ioc_busdma*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.proto_ioc_busdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
