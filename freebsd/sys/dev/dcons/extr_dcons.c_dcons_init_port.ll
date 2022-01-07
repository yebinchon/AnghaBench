; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons.c_dcons_init_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons.c_dcons_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_buf = type { i8**, i8**, i8**, i8**, i8**, i8** }
%struct.dcons_softc = type { %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8**, i64, i64 }

@STATE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.dcons_buf*, %struct.dcons_softc*)* @dcons_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcons_init_port(i32 %0, i32 %1, i32 %2, %struct.dcons_buf* %3, %struct.dcons_softc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcons_buf*, align 8
  %10 = alloca %struct.dcons_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dcons_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dcons_buf* %3, %struct.dcons_buf** %9, align 8
  store %struct.dcons_softc* %4, %struct.dcons_softc** %10, align 8
  %13 = load %struct.dcons_softc*, %struct.dcons_softc** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %13, i64 %15
  store %struct.dcons_softc* %16, %struct.dcons_softc** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 3
  %19 = sdiv i32 %18, 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %22 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %28 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %31 = bitcast %struct.dcons_buf* %30 to i8*
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %36 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %39 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %46 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %49 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %52 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %55 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %58 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %61 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %67 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i8** %65, i8*** %68, align 8
  %69 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %70 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %76 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i8** %74, i8*** %77, align 8
  %78 = load i32, i32* @STATE0, align 4
  %79 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %80 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @htonl(i32 %81)
  %83 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %84 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %83, i32 0, i32 5
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i8* @htonl(i32 %91)
  %93 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %94 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %93, i32 0, i32 4
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  store i8* %92, i8** %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i8* @htonl(i32 %99)
  %101 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %102 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %101, i32 0, i32 3
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %100, i8** %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i8* @htonl(i32 %109)
  %111 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %112 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %111, i32 0, i32 2
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %110, i8** %116, align 8
  %117 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %118 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %117, i32 0, i32 1
  %119 = call i8* @DCONS_MAKE_PTR(%struct.TYPE_2__* %118)
  %120 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %121 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %120, i32 0, i32 1
  %122 = load i8**, i8*** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %119, i8** %125, align 8
  %126 = load %struct.dcons_softc*, %struct.dcons_softc** %12, align 8
  %127 = getelementptr inbounds %struct.dcons_softc, %struct.dcons_softc* %126, i32 0, i32 0
  %128 = call i8* @DCONS_MAKE_PTR(%struct.TYPE_2__* %127)
  %129 = load %struct.dcons_buf*, %struct.dcons_buf** %9, align 8
  %130 = getelementptr inbounds %struct.dcons_buf, %struct.dcons_buf* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* %128, i8** %134, align 8
  ret i32 0
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @DCONS_MAKE_PTR(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
