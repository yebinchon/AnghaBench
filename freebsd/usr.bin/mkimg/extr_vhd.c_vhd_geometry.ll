; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_vhd.c_vhd_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_vhd.c_vhd_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhd_geom = type { i32, i32, i32 }

@VHD_SECTOR_SIZE = common dso_local global i32 0, align 4
@nheads = common dso_local global i32 0, align 4
@nsecs = common dso_local global i32 0, align 4
@ncyls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.vhd_geom*)* @vhd_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhd_geometry(i32 %0, %struct.vhd_geom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhd_geom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.vhd_geom* %1, %struct.vhd_geom** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @VHD_SECTOR_SIZE, align 4
  %9 = sdiv i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @nheads, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load i32, i32* @nheads, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load i32, i32* @nsecs, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load i32, i32* @nsecs, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i32, i32* @ncyls, align 4
  %23 = icmp slt i32 %22, 65536
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i32, i32* @ncyls, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @ncyls, align 4
  br label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @nheads, align 4
  %32 = load i32, i32* @nsecs, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %30, %33
  br label %35

35:                                               ; preds = %29, %27
  %36 = phi i32 [ %28, %27 ], [ %34, %29 ]
  %37 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %38 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @nheads, align 4
  %40 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %41 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @nsecs, align 4
  %43 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %44 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %127

45:                                               ; preds = %21, %18, %15, %12, %2
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 267386880
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 267386880, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 66059280
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %53, 4080
  %55 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %56 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %58 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %57, i32 0, i32 1
  store i32 16, i32* %58, align 4
  %59 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %60 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %59, i32 0, i32 2
  store i32 255, i32* %60, align 4
  br label %127

61:                                               ; preds = %49
  %62 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %63 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %62, i32 0, i32 2
  store i32 17, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sdiv i32 %64, 17
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 1023
  %69 = sdiv i64 %68, 1024
  %70 = trunc i64 %69 to i32
  %71 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %72 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %74 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %80

77:                                               ; preds = %61
  %78 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %79 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %78, i32 0, i32 1
  store i32 4, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %61
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %83 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 1024
  %86 = sext i32 %85 to i64
  %87 = icmp sge i64 %81, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %90 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 16
  br i1 %92, label %93, label %101

93:                                               ; preds = %88, %80
  %94 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %95 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %94, i32 0, i32 1
  store i32 16, i32* %95, align 4
  %96 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %97 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %96, i32 0, i32 2
  store i32 31, i32* %97, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sdiv i32 %98, 31
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %93, %88
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %104 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 1024
  %107 = sext i32 %106 to i64
  %108 = icmp sge i64 %102, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %111 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %110, i32 0, i32 1
  store i32 16, i32* %111, align 4
  %112 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %113 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %112, i32 0, i32 2
  store i32 63, i32* %113, align 4
  %114 = load i32, i32* %5, align 4
  %115 = sdiv i32 %114, 63
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %109, %101
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %120 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = sdiv i64 %118, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.vhd_geom*, %struct.vhd_geom** %4, align 8
  %126 = getelementptr inbounds %struct.vhd_geom, %struct.vhd_geom* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %117, %52, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
