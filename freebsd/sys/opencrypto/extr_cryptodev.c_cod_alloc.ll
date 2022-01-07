; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_cod_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_cod_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop_data = type { %struct.TYPE_2__*, %struct.uio, %struct.csession* }
%struct.TYPE_2__ = type { i64, i8* }
%struct.uio = type { i32, i64, %struct.TYPE_2__*, %struct.thread*, i32, i32 }
%struct.csession = type { i32 }
%struct.thread = type { i32 }

@M_XDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cryptop_data* (%struct.csession*, i64, %struct.thread*)* @cod_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cryptop_data* @cod_alloc(%struct.csession* %0, i64 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.csession*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.cryptop_data*, align 8
  %8 = alloca %struct.uio*, align 8
  store %struct.csession* %0, %struct.csession** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %9 = load i32, i32* @M_XDATA, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call i8* @malloc(i64 56, i32 %9, i32 %12)
  %14 = bitcast i8* %13 to %struct.cryptop_data*
  store %struct.cryptop_data* %14, %struct.cryptop_data** %7, align 8
  %15 = load %struct.csession*, %struct.csession** %4, align 8
  %16 = load %struct.cryptop_data*, %struct.cryptop_data** %7, align 8
  %17 = getelementptr inbounds %struct.cryptop_data, %struct.cryptop_data* %16, i32 0, i32 2
  store %struct.csession* %15, %struct.csession** %17, align 8
  %18 = load %struct.cryptop_data*, %struct.cryptop_data** %7, align 8
  %19 = getelementptr inbounds %struct.cryptop_data, %struct.cryptop_data* %18, i32 0, i32 1
  store %struct.uio* %19, %struct.uio** %8, align 8
  %20 = load %struct.cryptop_data*, %struct.cryptop_data** %7, align 8
  %21 = getelementptr inbounds %struct.cryptop_data, %struct.cryptop_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.uio*, %struct.uio** %8, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 2
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.uio*, %struct.uio** %8, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.uio*, %struct.uio** %8, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @UIO_SYSSPACE, align 4
  %31 = load %struct.uio*, %struct.uio** %8, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @UIO_WRITE, align 4
  %34 = load %struct.uio*, %struct.uio** %8, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = load %struct.uio*, %struct.uio** %8, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 3
  store %struct.thread* %36, %struct.thread** %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.uio*, %struct.uio** %8, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @M_XDATA, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = call i8* @malloc(i64 %45, i32 %46, i32 %47)
  %49 = load %struct.uio*, %struct.uio** %8, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %48, i8** %53, align 8
  %54 = load %struct.cryptop_data*, %struct.cryptop_data** %7, align 8
  ret %struct.cryptop_data* %54
}

declare dso_local i8* @malloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
