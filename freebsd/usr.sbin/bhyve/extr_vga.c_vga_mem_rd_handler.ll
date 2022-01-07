; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_mem_rd_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_mem_rd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vga_softc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i8*)* @vga_mem_rd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_mem_rd_handler(%struct.vmctx* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vga_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.vga_softc*
  store %struct.vga_softc* %11, %struct.vga_softc** %7, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %14 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %43 [
    i32 0, label %17
    i32 1, label %25
    i32 2, label %33
    i32 3, label %35
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 655360
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @KB, align 4
  %21 = mul nsw i32 128, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 655360
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @KB, align 4
  %29 = mul nsw i32 64, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %43

33:                                               ; preds = %3
  %34 = call i32 @assert(i32 0)
  br label %35

35:                                               ; preds = %3, %33
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 753664
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @KB, align 4
  %39 = mul nsw i32 32, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %3, %35, %25, %17
  %44 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %45 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @KB, align 4
  %49 = mul nsw i32 0, %48
  %50 = add nsw i32 %47, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %55 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %58 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @KB, align 4
  %62 = mul nsw i32 64, %61
  %63 = add nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %68 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %71 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @KB, align 4
  %75 = mul nsw i32 128, %74
  %76 = add nsw i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %81 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %84 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @KB, align 4
  %88 = mul nsw i32 192, %87
  %89 = add nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %94 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 8
  %96 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %97 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %43
  %102 = call i32 @assert(i32 0)
  br label %103

103:                                              ; preds = %101, %43
  %104 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %105 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %8, align 4
  %108 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %109 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %103
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 1
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, -2
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %113, %103
  %121 = load i32, i32* %8, align 4
  %122 = mul nsw i32 %121, 64
  %123 = load i32, i32* @KB, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %128 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  ret i32 %133
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
