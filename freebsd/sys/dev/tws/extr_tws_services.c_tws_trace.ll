; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i64 }
%struct.tws_trace_rec = type { i32, i8*, i8*, i32, i32, i32 }

@TWS_TRACE_FNAME_LEN = common dso_local global i32 0, align 4
@TWS_TRACE_FUNC_LEN = common dso_local global i32 0, align 4
@TWS_TRACE_DESC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%05d:%s::%s :%s: 0x%016lx : 0x%016lx \0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%05d:%s::%s :%s: 0x%016llx : 0x%016llx \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_trace(i8* %0, i8* %1, i32 %2, %struct.tws_softc* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tws_softc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.tws_trace_rec*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [256 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.tws_softc* %3, %struct.tws_softc** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %20 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.tws_trace_rec*
  store %struct.tws_trace_rec* %23, %struct.tws_trace_rec** %15, align 8
  %24 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %25 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store volatile i64 %27, i64* %16, align 8
  %28 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %29 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store volatile i64 %31, i64* %17, align 8
  %32 = load %struct.tws_trace_rec*, %struct.tws_trace_rec** %15, align 8
  %33 = load volatile i64, i64* %17, align 8
  %34 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %32, i64 %33
  %35 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @TWS_TRACE_FNAME_LEN, align 4
  %39 = call i32 @strncpy(i32 %36, i8* %37, i32 %38)
  %40 = load %struct.tws_trace_rec*, %struct.tws_trace_rec** %15, align 8
  %41 = load volatile i64, i64* %17, align 8
  %42 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %40, i64 %41
  %43 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* @TWS_TRACE_FUNC_LEN, align 4
  %47 = call i32 @strncpy(i32 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.tws_trace_rec*, %struct.tws_trace_rec** %15, align 8
  %50 = load volatile i64, i64* %17, align 8
  %51 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %49, i64 %50
  %52 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.tws_trace_rec*, %struct.tws_trace_rec** %15, align 8
  %54 = load volatile i64, i64* %17, align 8
  %55 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %53, i64 %54
  %56 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* @TWS_TRACE_DESC_LEN, align 4
  %60 = call i32 @strncpy(i32 %57, i8* %58, i32 %59)
  %61 = load i8*, i8** %13, align 8
  %62 = load %struct.tws_trace_rec*, %struct.tws_trace_rec** %15, align 8
  %63 = load volatile i64, i64* %17, align 8
  %64 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %62, i64 %63
  %65 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %64, i32 0, i32 2
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load %struct.tws_trace_rec*, %struct.tws_trace_rec** %15, align 8
  %68 = load volatile i64, i64* %17, align 8
  %69 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %67, i64 %68
  %70 = getelementptr inbounds %struct.tws_trace_rec, %struct.tws_trace_rec* %69, i32 0, i32 1
  store i8* %66, i8** %70, align 8
  %71 = load volatile i64, i64* %17, align 8
  %72 = add i64 %71, 1
  %73 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %74 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load volatile i64, i64* %75, align 8
  %77 = urem i64 %72, %76
  store volatile i64 %77, i64* %17, align 8
  %78 = load volatile i64, i64* %16, align 8
  %79 = load volatile i64, i64* %17, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %7
  %82 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %83 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32 1, i32* %84, align 8
  %85 = load volatile i64, i64* %16, align 8
  %86 = add i64 %85, 1
  %87 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %88 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load volatile i64, i64* %89, align 8
  %91 = urem i64 %86, %90
  %92 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %93 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %81, %7
  %96 = load volatile i64, i64* %17, align 8
  %97 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %98 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i64 %96, i64* %99, align 8
  %100 = load %struct.tws_softc*, %struct.tws_softc** %11, align 8
  %101 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %106 = call i32 @strcpy(i8* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %110

107:                                              ; preds = %95
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %109 = call i32 @strcpy(i8* %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %104
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %112 = load i32, i32* %10, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = call i32 @printf(i8* %111, i32 %112, i8* %113, i8* %114, i8* %115, i8* %116, i8* %117)
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
