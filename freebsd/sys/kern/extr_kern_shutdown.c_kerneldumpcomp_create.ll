; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_kerneldumpcomp_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_kerneldumpcomp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kerneldumpcomp = type { i32, i8*, i32* }
%struct.dumperinfo = type { i32 }

@COMPRESS_GZIP = common dso_local global i32 0, align 4
@COMPRESS_ZSTD = common dso_local global i32 0, align 4
@M_DUMPER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@kerneldumpcomp_write_cb = common dso_local global i32 0, align 4
@kerneldump_gzlevel = common dso_local global i32 0, align 4
@M_NODUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kerneldumpcomp* (%struct.dumperinfo*, i32)* @kerneldumpcomp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kerneldumpcomp* @kerneldumpcomp_create(%struct.dumperinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.kerneldumpcomp*, align 8
  %4 = alloca %struct.dumperinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kerneldumpcomp*, align 8
  %7 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %13 [
    i32 129, label %9
    i32 128, label %11
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @COMPRESS_GZIP, align 4
  store i32 %10, i32* %7, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @COMPRESS_ZSTD, align 4
  store i32 %12, i32* %7, align 4
  br label %14

13:                                               ; preds = %2
  store %struct.kerneldumpcomp* null, %struct.kerneldumpcomp** %3, align 8
  br label %54

14:                                               ; preds = %11, %9
  %15 = load i32, i32* @M_DUMPER, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @malloc(i32 24, i32 %15, i32 %18)
  %20 = bitcast i8* %19 to %struct.kerneldumpcomp*
  store %struct.kerneldumpcomp* %20, %struct.kerneldumpcomp** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.kerneldumpcomp*, %struct.kerneldumpcomp** %6, align 8
  %23 = getelementptr inbounds %struct.kerneldumpcomp, %struct.kerneldumpcomp* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @kerneldumpcomp_write_cb, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %27 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @kerneldump_gzlevel, align 4
  %30 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %31 = call i32* @compressor_init(i32 %24, i32 %25, i32 %28, i32 %29, %struct.dumperinfo* %30)
  %32 = load %struct.kerneldumpcomp*, %struct.kerneldumpcomp** %6, align 8
  %33 = getelementptr inbounds %struct.kerneldumpcomp, %struct.kerneldumpcomp* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.kerneldumpcomp*, %struct.kerneldumpcomp** %6, align 8
  %35 = getelementptr inbounds %struct.kerneldumpcomp, %struct.kerneldumpcomp* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %14
  %39 = load %struct.kerneldumpcomp*, %struct.kerneldumpcomp** %6, align 8
  %40 = load i32, i32* @M_DUMPER, align 4
  %41 = call i32 @free(%struct.kerneldumpcomp* %39, i32 %40)
  store %struct.kerneldumpcomp* null, %struct.kerneldumpcomp** %3, align 8
  br label %54

42:                                               ; preds = %14
  %43 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %44 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @M_DUMPER, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load i32, i32* @M_NODUMP, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @malloc(i32 %45, i32 %46, i32 %49)
  %51 = load %struct.kerneldumpcomp*, %struct.kerneldumpcomp** %6, align 8
  %52 = getelementptr inbounds %struct.kerneldumpcomp, %struct.kerneldumpcomp* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.kerneldumpcomp*, %struct.kerneldumpcomp** %6, align 8
  store %struct.kerneldumpcomp* %53, %struct.kerneldumpcomp** %3, align 8
  br label %54

54:                                               ; preds = %42, %38, %13
  %55 = load %struct.kerneldumpcomp*, %struct.kerneldumpcomp** %3, align 8
  ret %struct.kerneldumpcomp* %55
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32* @compressor_init(i32, i32, i32, i32, %struct.dumperinfo*) #1

declare dso_local i32 @free(%struct.kerneldumpcomp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
