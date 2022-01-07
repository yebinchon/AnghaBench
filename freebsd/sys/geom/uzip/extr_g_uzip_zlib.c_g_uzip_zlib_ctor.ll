; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip_zlib.c_g_uzip_zlib_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip_zlib.c_g_uzip_zlib_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_uzip_dapi = type { i8*, i32*, i32*, i32*, i32 }
%struct.g_uzip_zlib = type { %struct.g_uzip_dapi, i32, i32 }

@M_GEOM_UZIP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@g_uzip_zlib_decompress = common dso_local global i32 0, align 4
@g_uzip_zlib_free = common dso_local global i32 0, align 4
@g_uzip_zlib_rewind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_uzip_dapi* @g_uzip_zlib_ctor(i32 %0) #0 {
  %2 = alloca %struct.g_uzip_dapi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_uzip_zlib*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_GEOM_UZIP, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.g_uzip_zlib* @malloc(i32 48, i32 %5, i32 %8)
  store %struct.g_uzip_zlib* %9, %struct.g_uzip_zlib** %4, align 8
  %10 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %11 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %10, i32 0, i32 2
  %12 = call i64 @inflateInit(i32* %11)
  %13 = load i64, i64* @Z_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %41

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %19 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @compressBound(i32 %20)
  %22 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %23 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 8
  %25 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %26 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %26, i32 0, i32 3
  store i32* @g_uzip_zlib_decompress, i32** %27, align 8
  %28 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %29 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %29, i32 0, i32 2
  store i32* @g_uzip_zlib_free, i32** %30, align 8
  %31 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %32 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %32, i32 0, i32 1
  store i32* @g_uzip_zlib_rewind, i32** %33, align 8
  %34 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %35 = bitcast %struct.g_uzip_zlib* %34 to i8*
  %36 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %37 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %40 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %39, i32 0, i32 0
  store %struct.g_uzip_dapi* %40, %struct.g_uzip_dapi** %2, align 8
  br label %45

41:                                               ; preds = %15
  %42 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %4, align 8
  %43 = load i32, i32* @M_GEOM_UZIP, align 4
  %44 = call i32 @free(%struct.g_uzip_zlib* %42, i32 %43)
  store %struct.g_uzip_dapi* null, %struct.g_uzip_dapi** %2, align 8
  br label %45

45:                                               ; preds = %41, %16
  %46 = load %struct.g_uzip_dapi*, %struct.g_uzip_dapi** %2, align 8
  ret %struct.g_uzip_dapi* %46
}

declare dso_local %struct.g_uzip_zlib* @malloc(i32, i32, i32) #1

declare dso_local i64 @inflateInit(i32*) #1

declare dso_local i32 @compressBound(i32) #1

declare dso_local i32 @free(%struct.g_uzip_zlib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
