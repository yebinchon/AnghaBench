; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_md_destroy_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_md_destroy_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_busdma = type { i32 }
%struct.proto_md = type { i32, i32, i32*, i64 }

@mds = common dso_local global i32 0, align 4
@peers = common dso_local global i32 0, align 4
@M_PROTO_BUSDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proto_busdma*, %struct.proto_md*)* @proto_busdma_md_destroy_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_busdma_md_destroy_internal(%struct.proto_busdma* %0, %struct.proto_md* %1) #0 {
  %3 = alloca %struct.proto_busdma*, align 8
  %4 = alloca %struct.proto_md*, align 8
  store %struct.proto_busdma* %0, %struct.proto_busdma** %3, align 8
  store %struct.proto_md* %1, %struct.proto_md** %4, align 8
  %5 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %6 = load i32, i32* @mds, align 4
  %7 = call i32 @LIST_REMOVE(%struct.proto_md* %5, i32 %6)
  %8 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %9 = load i32, i32* @peers, align 4
  %10 = call i32 @LIST_REMOVE(%struct.proto_md* %8, i32 %9)
  %11 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %12 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %17 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %20 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_dmamap_unload(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %25 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %30 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %33 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %36 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_dmamem_free(i32 %31, i32* %34, i32 %37)
  br label %47

39:                                               ; preds = %23
  %40 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %41 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %44 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bus_dmamap_destroy(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %28
  %48 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %49 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bus_dma_tag_destroy(i32 %50)
  %52 = load %struct.proto_md*, %struct.proto_md** %4, align 8
  %53 = load i32, i32* @M_PROTO_BUSDMA, align 4
  %54 = call i32 @free(%struct.proto_md* %52, i32 %53)
  ret i32 0
}

declare dso_local i32 @LIST_REMOVE(%struct.proto_md*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(%struct.proto_md*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
