; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_busdma = type { i32 }
%struct.proto_md = type { i32, i32, i32 }
%struct.proto_ioc_busdma = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proto_busdma*, %struct.proto_md*, %struct.proto_ioc_busdma*)* @proto_busdma_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_busdma_sync(%struct.proto_busdma* %0, %struct.proto_md* %1, %struct.proto_ioc_busdma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto_busdma*, align 8
  %6 = alloca %struct.proto_md*, align 8
  %7 = alloca %struct.proto_ioc_busdma*, align 8
  %8 = alloca i32, align 4
  store %struct.proto_busdma* %0, %struct.proto_busdma** %5, align 8
  store %struct.proto_md* %1, %struct.proto_md** %6, align 8
  store %struct.proto_ioc_busdma* %2, %struct.proto_ioc_busdma** %7, align 8
  %9 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %10 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %17 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load %struct.proto_md*, %struct.proto_md** %6, align 8
  %29 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %27
  %35 = load %struct.proto_md*, %struct.proto_md** %6, align 8
  %36 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.proto_md*, %struct.proto_md** %6, align 8
  %39 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %7, align 8
  %42 = getelementptr inbounds %struct.proto_ioc_busdma, %struct.proto_ioc_busdma* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bus_dmamap_sync(i32 %37, i32 %40, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %34, %32, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
