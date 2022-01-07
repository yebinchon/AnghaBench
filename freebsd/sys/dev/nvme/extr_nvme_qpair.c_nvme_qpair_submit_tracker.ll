; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_submit_tracker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_submit_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i64, i64, i32, i32, %struct.nvme_controller*, i32, i32, i32*, i32, %struct.nvme_tracker**, i32 }
%struct.nvme_controller = type { i32, i32, i32 }
%struct.nvme_tracker = type { i64, i32, %struct.nvme_request* }
%struct.nvme_request = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@nvme_timeout = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_qpair_submit_tracker(%struct.nvme_qpair* %0, %struct.nvme_tracker* %1) #0 {
  %3 = alloca %struct.nvme_qpair*, align 8
  %4 = alloca %struct.nvme_tracker*, align 8
  %5 = alloca %struct.nvme_request*, align 8
  %6 = alloca %struct.nvme_controller*, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %3, align 8
  store %struct.nvme_tracker* %1, %struct.nvme_tracker** %4, align 8
  %7 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %7, i32 0, i32 10
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.nvme_tracker*, %struct.nvme_tracker** %4, align 8
  %12 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %11, i32 0, i32 2
  %13 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  store %struct.nvme_request* %13, %struct.nvme_request** %5, align 8
  %14 = load %struct.nvme_tracker*, %struct.nvme_tracker** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %18 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.nvme_tracker*, %struct.nvme_tracker** %4, align 8
  %21 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %21, i32 0, i32 9
  %23 = load %struct.nvme_tracker**, %struct.nvme_tracker*** %22, align 8
  %24 = load %struct.nvme_tracker*, %struct.nvme_tracker** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.nvme_tracker*, %struct.nvme_tracker** %23, i64 %26
  store %struct.nvme_tracker* %20, %struct.nvme_tracker** %27, align 8
  %28 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %28, i32 0, i32 4
  %30 = load %struct.nvme_controller*, %struct.nvme_controller** %29, align 8
  store %struct.nvme_controller* %30, %struct.nvme_controller** %6, align 8
  %31 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %2
  %36 = load %struct.nvme_tracker*, %struct.nvme_tracker** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %36, i32 0, i32 1
  %38 = load %struct.nvme_controller*, %struct.nvme_controller** %6, align 8
  %39 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @hz, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @nvme_timeout, align 4
  %44 = load %struct.nvme_tracker*, %struct.nvme_tracker** %4, align 8
  %45 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @callout_reset_on(i32* %37, i32 %42, i32 %43, %struct.nvme_tracker* %44, i32 %47)
  br label %49

49:                                               ; preds = %35, %2
  %50 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %54 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %58 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %57, i32 0, i32 0
  %59 = call i32 @memcpy(i32* %56, %struct.TYPE_2__* %58, i32 8)
  %60 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %61 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %65 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %70 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %49
  %72 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %73 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %76 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %79 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @bus_dmamap_sync(i32 %74, i32 %77, i32 %80)
  %82 = call i32 (...) @wmb()
  %83 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %84 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %83, i32 0, i32 4
  %85 = load %struct.nvme_controller*, %struct.nvme_controller** %84, align 8
  %86 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %89 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %88, i32 0, i32 4
  %90 = load %struct.nvme_controller*, %struct.nvme_controller** %89, align 8
  %91 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %94 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %97 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @bus_space_write_4(i32 %87, i32 %92, i32 %95, i64 %98)
  %100 = load %struct.nvme_qpair*, %struct.nvme_qpair** %3, align 8
  %101 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @callout_reset_on(i32*, i32, i32, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
