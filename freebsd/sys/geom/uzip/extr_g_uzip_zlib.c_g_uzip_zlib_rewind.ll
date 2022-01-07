; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip_zlib.c_g_uzip_zlib_rewind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/uzip/extr_g_uzip_zlib.c_g_uzip_zlib_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_uzip_dapi = type { i64 }
%struct.g_uzip_zlib = type { i32 }

@Z_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: UZIP(zlib) decoder reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_uzip_dapi*, i8*)* @g_uzip_zlib_rewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_uzip_zlib_rewind(%struct.g_uzip_dapi* %0, i8* %1) #0 {
  %3 = alloca %struct.g_uzip_dapi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_uzip_zlib*, align 8
  store %struct.g_uzip_dapi* %0, %struct.g_uzip_dapi** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.g_uzip_dapi*, %struct.g_uzip_dapi** %3, align 8
  %8 = getelementptr inbounds %struct.g_uzip_dapi, %struct.g_uzip_dapi* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.g_uzip_zlib*
  store %struct.g_uzip_zlib* %10, %struct.g_uzip_zlib** %6, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.g_uzip_zlib*, %struct.g_uzip_zlib** %6, align 8
  %12 = getelementptr inbounds %struct.g_uzip_zlib, %struct.g_uzip_zlib* %11, i32 0, i32 0
  %13 = call i64 @inflateReset(i32* %12)
  %14 = load i64, i64* @Z_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i64 @inflateReset(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
