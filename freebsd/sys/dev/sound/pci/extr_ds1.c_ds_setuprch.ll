; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_setuprch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_setuprch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_rchinfo = type { i32, i64, i32, %struct.TYPE_2__*, i32, %struct.sc_info* }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.sc_info = type { i32 }

@AFMT_16BIT = common dso_local global i32 0, align 4
@DS1_RECPRIMARY = common dso_local global i64 0, align 8
@YDSXGR_ADCFORMAT = common dso_local global i32 0, align 4
@YDSXGR_RECFORMAT = common dso_local global i32 0, align 4
@YDSXGR_ADCSLOTSR = common dso_local global i32 0, align 4
@YDSXGR_RECSLOTSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_rchinfo*)* @ds_setuprch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_setuprch(%struct.sc_rchinfo* %0) #0 {
  %2 = alloca %struct.sc_rchinfo*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sc_rchinfo* %0, %struct.sc_rchinfo** %2, align 8
  %12 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %13 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %12, i32 0, i32 5
  %14 = load %struct.sc_info*, %struct.sc_info** %13, align 8
  store %struct.sc_info* %14, %struct.sc_info** %3, align 8
  %15 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %16 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @AFMT_CHANNEL(i32 %17)
  %19 = icmp sgt i32 %18, 1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %4, align 4
  %22 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %23 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AFMT_16BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %5, align 4
  %30 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %31 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sndbuf_getbufaddr(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %35 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sndbuf_getsize(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %39 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DS1_RECPRIMARY, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %79, %1
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %51 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32 %49, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %59 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 8
  %65 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %66 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %73 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %48
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 2, i32 0
  %91 = or i32 %86, %90
  store i32 %91, i32* %9, align 4
  %92 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %2, align 8
  %93 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 196608000, %94
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %10, align 4
  %98 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %82
  %102 = load i32, i32* @YDSXGR_ADCFORMAT, align 4
  br label %105

103:                                              ; preds = %82
  %104 = load i32, i32* @YDSXGR_RECFORMAT, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @ds_wr(%struct.sc_info* %98, i32 %106, i32 %107, i32 4)
  %109 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @YDSXGR_ADCSLOTSR, align 4
  br label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @YDSXGR_RECSLOTSR, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @ds_wr(%struct.sc_info* %109, i32 %117, i32 %118, i32 4)
  ret void
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @ds_wr(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
