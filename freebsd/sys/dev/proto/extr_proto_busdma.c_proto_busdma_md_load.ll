; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_md_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_md_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_busdma = type { i32 }
%struct.proto_md = type { i32, i32, i32 }
%struct.proto_ioc_busdma = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.proto_callback_bundle = type { %struct.proto_ioc_busdma*, %struct.proto_md*, %struct.proto_busdma* }
%struct.iovec = type { i32, i8* }
%struct.uio = type { i32, %struct.thread*, i32, i32, i32, i64, %struct.iovec* }

@UIO_USERSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@proto_busdma_md_load_callback = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proto_busdma*, %struct.proto_md*, %struct.proto_ioc_busdma*, %struct.thread*)* @proto_busdma_md_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_busdma_md_load(%struct.proto_busdma* %0, %struct.proto_md* %1, %struct.proto_ioc_busdma* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proto_busdma*, align 8
  %7 = alloca %struct.proto_md*, align 8
  %8 = alloca %struct.proto_ioc_busdma*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.proto_callback_bundle, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = alloca %struct.uio, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.proto_busdma* %0, %struct.proto_busdma** %6, align 8
  store %struct.proto_md* %1, %struct.proto_md** %7, align 8
  store %struct.proto_ioc_busdma* %2, %struct.proto_ioc_busdma** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %15 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %8, align 8
  %16 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %8, align 8
  %23 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 6
  store %struct.iovec* %11, %struct.iovec** %28, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @UIO_USERSPACE, align 4
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @UIO_READ, align 4
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.thread*, %struct.thread** %9, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 1
  store %struct.thread* %38, %struct.thread** %39, align 8
  %40 = load %struct.proto_busdma*, %struct.proto_busdma** %6, align 8
  %41 = getelementptr inbounds %struct.proto_callback_bundle, %struct.proto_callback_bundle* %10, i32 0, i32 2
  store %struct.proto_busdma* %40, %struct.proto_busdma** %41, align 8
  %42 = load %struct.proto_md*, %struct.proto_md** %7, align 8
  %43 = getelementptr inbounds %struct.proto_callback_bundle, %struct.proto_callback_bundle* %10, i32 0, i32 1
  store %struct.proto_md* %42, %struct.proto_md** %43, align 8
  %44 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %8, align 8
  %45 = getelementptr inbounds %struct.proto_callback_bundle, %struct.proto_callback_bundle* %10, i32 0, i32 0
  store %struct.proto_ioc_busdma* %44, %struct.proto_ioc_busdma** %45, align 8
  %46 = load %struct.proto_md*, %struct.proto_md** %7, align 8
  %47 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.proto_md*, %struct.proto_md** %7, align 8
  %50 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @proto_busdma_md_load_callback, align 4
  %53 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %54 = call i32 @bus_dmamap_load_uio(i32 %48, i32 %51, %struct.uio* %12, i32 %52, %struct.proto_callback_bundle* %10, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %4
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %5, align 4
  br label %86

59:                                               ; preds = %4
  %60 = load %struct.thread*, %struct.thread** %9, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @vmspace_pmap(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %8, align 8
  %68 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @pmap_extract(i32 %66, i64 %71)
  %73 = load %struct.proto_md*, %struct.proto_md** %7, align 8
  %74 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %8, align 8
  %76 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.proto_md*, %struct.proto_md** %7, align 8
  %80 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %8, align 8
  %83 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %59, %57
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @bus_dmamap_load_uio(i32, i32, %struct.uio*, i32, %struct.proto_callback_bundle*, i32) #1

declare dso_local i32 @vmspace_pmap(i32) #1

declare dso_local i32 @pmap_extract(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
