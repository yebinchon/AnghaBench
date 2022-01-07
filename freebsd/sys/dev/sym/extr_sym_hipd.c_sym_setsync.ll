; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_setsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_setsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64, i8*, i8* }
%struct.TYPE_16__ = type { i64, i8*, i8* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@EWS = common dso_local global i32 0, align 4
@SYM_SPI_VALID_SDTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*, i8*, i8*, i8*, i8*)* @sym_setsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_setsync(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i64 %20
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %13, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EWS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %14, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @sym_settrans(%struct.TYPE_20__* %34, %struct.TYPE_21__* %35, i32 0, i8* %36, i8* %37, i8* %38, i8* %39, i8* %40)
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  store i8* %42, i8** %46, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  store i8* %42, i8** %50, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i8* %51, i8** %55, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store i8* %51, i8** %59, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @SYM_SPI_VALID_SDTR, align 4
  %73 = call i32 @sym_xpt_async_transfer_neg(%struct.TYPE_20__* %68, i64 %71, i32 %72)
  ret void
}

declare dso_local i32 @sym_settrans(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sym_xpt_async_transfer_neg(%struct.TYPE_20__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
