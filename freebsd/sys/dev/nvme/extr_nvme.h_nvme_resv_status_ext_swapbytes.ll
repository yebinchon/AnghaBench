; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_resv_status_ext_swapbytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_resv_status_ext_swapbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_resv_status_ext = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_resv_status_ext*, i64)* @nvme_resv_status_ext_swapbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_resv_status_ext_swapbytes(%struct.nvme_resv_status_ext* %0, i64 %1) #0 {
  %3 = alloca %struct.nvme_resv_status_ext*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nvme_resv_status_ext* %0, %struct.nvme_resv_status_ext** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @le32toh(i32 %9)
  %11 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 8
  %19 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %18, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = sub i64 %27, 8
  %29 = udiv i64 %28, 16
  %30 = call i64 @MIN(i64 %26, i64 %29)
  store i64 %30, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %73, %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %37 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16toh(i32 %42)
  %44 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %43, i32* %49, align 4
  %50 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %51 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le64toh(i32 %56)
  %58 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %57, i32* %63, align 8
  %64 = load %struct.nvme_resv_status_ext*, %struct.nvme_resv_status_ext** %3, align 8
  %65 = getelementptr inbounds %struct.nvme_resv_status_ext, %struct.nvme_resv_status_ext* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @nvme_le128toh(i8* %71)
  br label %73

73:                                               ; preds = %35
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %31

76:                                               ; preds = %31
  ret void
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @nvme_le128toh(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
