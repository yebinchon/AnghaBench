; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip_lzma.c_g_uzip_lzma_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip_lzma.c_g_uzip_lzma_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_uzip_dapi = type { %struct.g_uzip_lzma*, i32*, i32*, i32*, i32 }
%struct.g_uzip_lzma = type { %struct.g_uzip_dapi, i32, i32* }

@M_GEOM_UZIP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@XZ_SINGLE = common dso_local global i32 0, align 4
@g_uzip_lzma_decompress = common dso_local global i32 0, align 4
@g_uzip_lzma_free = common dso_local global i32 0, align 4
@g_uzip_lzma_nop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_uzip_dapi* @g_uzip_lzma_ctor(i32 %0) #0 {
  %2 = alloca %struct.g_uzip_dapi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_uzip_lzma*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_GEOM_UZIP, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = call %struct.g_uzip_lzma* @malloc(i32 56, i32 %5, i32 %6)
  store %struct.g_uzip_lzma* %7, %struct.g_uzip_lzma** %4, align 8
  %8 = load i32, i32* @XZ_SINGLE, align 4
  %9 = call i32* @xz_dec_init(i32 %8, i32 0)
  %10 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %11 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  %12 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %13 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %20 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @LZ4_compressBound(i32 %21)
  %23 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %24 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 8
  %26 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %27 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %27, i32 0, i32 3
  store i32* @g_uzip_lzma_decompress, i32** %28, align 8
  %29 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %30 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %30, i32 0, i32 2
  store i32* @g_uzip_lzma_free, i32** %31, align 8
  %32 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %33 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %33, i32 0, i32 1
  store i32* @g_uzip_lzma_nop, i32** %34, align 8
  %35 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %36 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %37 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %37, i32 0, i32 0
  store %struct.g_uzip_lzma* %35, %struct.g_uzip_lzma** %38, align 8
  %39 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %40 = getelementptr inbounds %struct.g_uzip_lzma, %struct.g_uzip_lzma* %39, i32 0, i32 0
  store %struct.g_uzip_dapi* %40, %struct.g_uzip_dapi** %2, align 8
  br label %45

41:                                               ; preds = %16
  %42 = load %struct.g_uzip_lzma*, %struct.g_uzip_lzma** %4, align 8
  %43 = load i32, i32* @M_GEOM_UZIP, align 4
  %44 = call i32 @free(%struct.g_uzip_lzma* %42, i32 %43)
  store %struct.g_uzip_dapi* null, %struct.g_uzip_dapi** %2, align 8
  br label %45

45:                                               ; preds = %41, %17
  %46 = load %struct.g_uzip_dapi*, %struct.g_uzip_dapi** %2, align 8
  ret %struct.g_uzip_dapi* %46
}

declare dso_local %struct.g_uzip_lzma* @malloc(i32, i32, i32) #1

declare dso_local i32* @xz_dec_init(i32, i32) #1

declare dso_local i32 @LZ4_compressBound(i32) #1

declare dso_local i32 @free(%struct.g_uzip_lzma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
