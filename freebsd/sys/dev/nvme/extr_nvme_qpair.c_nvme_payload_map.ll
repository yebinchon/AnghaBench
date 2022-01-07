; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_payload_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_payload_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.nvme_tracker = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__*, i8**, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"nvme_payload_map err %d\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_8__*, i32, i32)* @nvme_payload_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_payload_map(i8* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_tracker*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.nvme_tracker*
  store %struct.nvme_tracker* %12, %struct.nvme_tracker** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %17 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @nvme_printf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %107

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @htole64(i64 %27)
  %29 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %30 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i8* %28, i8** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @htole64(i64 %40)
  %42 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %43 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i8* %41, i8** %46, align 8
  br label %89

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %82

50:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  %51 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %52 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @htole64(i64 %53)
  %55 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %56 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  br label %60

60:                                               ; preds = %64, %50
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @htole64(i64 %70)
  %72 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %73 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %72, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  store i8* %71, i8** %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %60

81:                                               ; preds = %60
  br label %88

82:                                               ; preds = %47
  %83 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %84 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %82, %81
  br label %89

89:                                               ; preds = %88, %36
  %90 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %91 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %96 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %99 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @bus_dmamap_sync(i32 %94, i32 %97, i32 %100)
  %102 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %103 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load %struct.nvme_tracker*, %struct.nvme_tracker** %9, align 8
  %106 = call i32 @nvme_qpair_submit_tracker(%struct.TYPE_9__* %104, %struct.nvme_tracker* %105)
  br label %107

107:                                              ; preds = %89, %15
  ret void
}

declare dso_local i32 @nvme_printf(i32, i8*, i32) #1

declare dso_local i8* @htole64(i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @nvme_qpair_submit_tracker(%struct.TYPE_9__*, %struct.nvme_tracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
