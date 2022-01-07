; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_disk.c_mlxd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_disk.c_mlxd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxd_softc = type { %struct.TYPE_6__*, %struct.mlx_softc*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, %struct.mlxd_softc*, i32, i32, i32, i32, i32 }
%struct.mlx_softc = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unknown state\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%uMB (%u sectors) RAID %d (%s)\0A\00", align 1
@MLX_BLKSIZE = common dso_local global i32 0, align 4
@mlxd_open = common dso_local global i32 0, align 4
@mlxd_close = common dso_local global i32 0, align 4
@mlxd_ioctl = common dso_local global i32 0, align 4
@mlxd_strategy = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mlxd\00", align 1
@MLX_IFTYPE_2 = common dso_local global i64 0, align 8
@MLX_PAGE_SIZE = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mlxd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.mlxd_softc*
  store %struct.mlxd_softc* %10, %struct.mlxd_softc** %3, align 8
  %11 = call i32 @debug_called(i32 1)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @device_get_softc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.mlx_softc*
  %17 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %17, i32 0, i32 1
  store %struct.mlx_softc* %16, %struct.mlx_softc** %18, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @device_get_unit(i32 %19)
  %21 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call %struct.TYPE_7__* @device_get_ivars(i32 %23)
  %25 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %25, i32 0, i32 2
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %38 [
    i32 128, label %35
    i32 130, label %36
    i32 129, label %37
  ]

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %39

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %39

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %39

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %39

39:                                               ; preds = %38, %37, %36, %35
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MLX_BLKSIZE, align 4
  %47 = sdiv i32 1048576, %46
  %48 = sdiv i32 %45, %47
  %49 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %53, i32 %58, i8* %59)
  %61 = call %struct.TYPE_6__* (...) @disk_alloc()
  %62 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %63 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %62, i32 0, i32 0
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %63, align 8
  %64 = load i32, i32* @mlxd_open, align 4
  %65 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 11
  store i32 %64, i32* %68, align 8
  %69 = load i32, i32* @mlxd_close, align 4
  %70 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %71 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 10
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @mlxd_ioctl, align 4
  %75 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %76 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 9
  store i32 %74, i32* %78, align 8
  %79 = load i32, i32* @mlxd_strategy, align 4
  %80 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %81 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 8
  store i32 %79, i32* %83, align 4
  %84 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %85 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %87, align 8
  %88 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %89 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %92 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 7
  store i32 %90, i32* %94, align 8
  %95 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %96 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %97 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 6
  store %struct.mlxd_softc* %95, %struct.mlxd_softc** %99, align 8
  %100 = load i32, i32* @MLX_BLKSIZE, align 4
  %101 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* @MLX_BLKSIZE, align 4
  %106 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %107 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %105, %110
  %112 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %113 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i32 %111, i32* %115, align 4
  %116 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %117 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %116, i32 0, i32 2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %122 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  store i32 %120, i32* %124, align 8
  %125 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %126 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %131 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  store i32 %129, i32* %133, align 4
  %134 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %135 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %134, i32 0, i32 1
  %136 = load %struct.mlx_softc*, %struct.mlx_softc** %135, align 8
  %137 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MLX_IFTYPE_2, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %39
  %142 = load i32, i32* @MLX_PAGE_SIZE, align 4
  %143 = mul nsw i32 8, %142
  %144 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %145 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  store i32 %143, i32* %147, align 8
  br label %175

148:                                              ; preds = %39
  %149 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %150 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %149, i32 0, i32 1
  %151 = load %struct.mlx_softc*, %struct.mlx_softc** %150, align 8
  %152 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MLX_BLKSIZE, align 4
  %157 = mul nsw i32 %155, %156
  store i32 %157, i32* %6, align 4
  %158 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %159 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %158, i32 0, i32 1
  %160 = load %struct.mlx_softc*, %struct.mlx_softc** %159, align 8
  %161 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, 1
  %166 = load i32, i32* @MLX_PAGE_SIZE, align 4
  %167 = mul nsw i32 %165, %166
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @imin(i32 %168, i32 %169)
  %171 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %172 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %171, i32 0, i32 0
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  store i32 %170, i32* %174, align 8
  br label %175

175:                                              ; preds = %148, %141
  %176 = load %struct.mlxd_softc*, %struct.mlxd_softc** %3, align 8
  %177 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %176, i32 0, i32 0
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load i32, i32* @DISK_VERSION, align 4
  %180 = call i32 @disk_create(%struct.TYPE_6__* %178, i32 %179)
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_7__* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_6__* @disk_alloc(...) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @disk_create(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
