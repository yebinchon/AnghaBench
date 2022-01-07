; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_alloc_sdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_alloc_sdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_sa_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i8*, i8*, i8*, i64, i64, i64, i8*, i8*, i8* }
%struct.cesa_softc = type { i32 }
%struct.cesa_request = type { i32 }

@sdesc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"SA descriptors pool exhaused. Consider increasing CESA_SA_DESCRIPTORS.\0A\00", align 1
@csd_stq = common dso_local global i32 0, align 4
@csd_key = common dso_local global i32 0, align 4
@csd_iv = common dso_local global i32 0, align 4
@csd_hash = common dso_local global i32 0, align 4
@csd_hiv_in = common dso_local global i32 0, align 4
@csd_hiv_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cesa_sa_desc* (%struct.cesa_softc*, %struct.cesa_request*)* @cesa_alloc_sdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cesa_sa_desc* @cesa_alloc_sdesc(%struct.cesa_softc* %0, %struct.cesa_request* %1) #0 {
  %3 = alloca %struct.cesa_sa_desc*, align 8
  %4 = alloca %struct.cesa_softc*, align 8
  %5 = alloca %struct.cesa_request*, align 8
  %6 = alloca %struct.cesa_sa_desc*, align 8
  store %struct.cesa_softc* %0, %struct.cesa_softc** %4, align 8
  store %struct.cesa_request* %1, %struct.cesa_request** %5, align 8
  %7 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %8 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %9 = load i32, i32* @sdesc, align 4
  %10 = call i32 @CESA_GENERIC_ALLOC_LOCKED(%struct.cesa_softc* %7, %struct.cesa_sa_desc* %8, i32 %9)
  %11 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %12 = icmp ne %struct.cesa_sa_desc* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.cesa_softc*, %struct.cesa_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  store %struct.cesa_sa_desc* null, %struct.cesa_sa_desc** %3, align 8
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.cesa_request*, %struct.cesa_request** %5, align 8
  %20 = getelementptr inbounds %struct.cesa_request, %struct.cesa_request* %19, i32 0, i32 0
  %21 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %22 = load i32, i32* @csd_stq, align 4
  %23 = call i32 @STAILQ_INSERT_TAIL(i32* %20, %struct.cesa_sa_desc* %21, i32 %22)
  %24 = load i32, i32* @csd_key, align 4
  %25 = call i8* @CESA_SA_DATA(i32 %24)
  %26 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %27 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 10
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* @csd_iv, align 4
  %31 = call i8* @CESA_SA_DATA(i32 %30)
  %32 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %33 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 9
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* @csd_iv, align 4
  %37 = call i8* @CESA_SA_DATA(i32 %36)
  %38 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %39 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 8
  store i8* %37, i8** %41, align 8
  %42 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %43 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %47 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %51 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @csd_hash, align 4
  %55 = call i8* @CESA_SA_DATA(i32 %54)
  %56 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %57 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i8* %55, i8** %59, align 8
  %60 = load i32, i32* @csd_hiv_in, align 4
  %61 = call i8* @CESA_SA_DATA(i32 %60)
  %62 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %63 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i8* %61, i8** %65, align 8
  %66 = load i32, i32* @csd_hiv_out, align 4
  %67 = call i8* @CESA_SA_DATA(i32 %66)
  %68 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %69 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i8* %67, i8** %71, align 8
  %72 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %73 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  %77 = getelementptr inbounds %struct.cesa_sa_desc, %struct.cesa_sa_desc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %6, align 8
  store %struct.cesa_sa_desc* %80, %struct.cesa_sa_desc** %3, align 8
  br label %81

81:                                               ; preds = %18, %13
  %82 = load %struct.cesa_sa_desc*, %struct.cesa_sa_desc** %3, align 8
  ret %struct.cesa_sa_desc* %82
}

declare dso_local i32 @CESA_GENERIC_ALLOC_LOCKED(%struct.cesa_softc*, %struct.cesa_sa_desc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cesa_sa_desc*, i32) #1

declare dso_local i8* @CESA_SA_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
