; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_setpprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_setpprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i64 }

@SYM_SPI_VALID_PPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*, i8*, i8*, i8*, i8*, i8*)* @sym_setpprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_setpprot(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i64 %23
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %17, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = call i32 @sym_settrans(%struct.TYPE_16__* %25, %struct.TYPE_17__* %26, i8* %27, i8* %28, i8* %29, i8* %30, i8* %31, i8* %32)
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  store i8* %34, i8** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  store i8* %34, i8** %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  store i8* %43, i8** %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  store i8* %43, i8** %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i8* %52, i8** %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i8* %61, i8** %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @SYM_SPI_VALID_PPR, align 4
  %75 = call i32 @sym_xpt_async_transfer_neg(%struct.TYPE_16__* %70, i64 %73, i32 %74)
  ret void
}

declare dso_local i32 @sym_settrans(%struct.TYPE_16__*, %struct.TYPE_17__*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sym_xpt_async_transfer_neg(%struct.TYPE_16__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
