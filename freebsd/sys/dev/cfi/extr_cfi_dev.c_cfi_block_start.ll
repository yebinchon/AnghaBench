; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_block_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_dev.c_cfi_block_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i64, i32, i32*, i8*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%union.anon = type { i32* }

@EFAULT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_block_start(%struct.cfi_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfi_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.cfi_softc* %0, %struct.cfi_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %45, %2
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %18, i32 0, i32 7
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %26, i32 0, i32 7
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = mul nsw i64 %25, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %17
  br label %48

41:                                               ; preds = %17
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %11

48:                                               ; preds = %40, %11
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @EFAULT, align 4
  store i32 %55, i32* %3, align 4
  br label %157

56:                                               ; preds = %48
  %57 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %58 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %57, i32 0, i32 7
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %66 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @M_TEMP, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call i8* @malloc(i64 %69, i32 %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %75 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %7, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %81 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = srem i64 %79, %82
  %84 = sub nsw i64 %76, %83
  %85 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %86 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %85, i32 0, i32 6
  store i64 %84, i64* %86, align 8
  %87 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %88 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = bitcast %union.anon* %6 to i32**
  store i32* %89, i32** %90, align 8
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %128, %56
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %95 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %136

98:                                               ; preds = %91
  %99 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %100 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %101 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = call i8* @cfi_read_raw(%struct.cfi_softc* %99, i64 %105)
  store i8* %106, i8** %9, align 8
  %107 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %108 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  switch i64 %109, label %127 [
    i64 1, label %110
    i64 2, label %116
    i64 4, label %122
  ]

110:                                              ; preds = %98
  %111 = load i8*, i8** %9, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = bitcast %union.anon* %6 to i32**
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %113, align 8
  store i32 %112, i32* %114, align 4
  br label %127

116:                                              ; preds = %98
  %117 = load i8*, i8** %9, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = bitcast %union.anon* %6 to i32**
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %119, align 8
  store i32 %118, i32* %120, align 4
  br label %127

122:                                              ; preds = %98
  %123 = load i8*, i8** %9, align 8
  %124 = bitcast %union.anon* %6 to i8***
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i32 1
  store i8** %126, i8*** %124, align 8
  store i8* %123, i8** %125, align 8
  br label %127

127:                                              ; preds = %98, %122, %116, %110
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %130 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %10, align 4
  br label %91

136:                                              ; preds = %91
  %137 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %138 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @M_TEMP, align 4
  %141 = load i32, i32* @M_WAITOK, align 4
  %142 = call i8* @malloc(i64 %139, i32 %140, i32 %141)
  %143 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %144 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %146 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %145, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %149 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %152 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @memcpy(i8* %147, i32* %150, i64 %153)
  %155 = load %struct.cfi_softc*, %struct.cfi_softc** %4, align 8
  %156 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %155, i32 0, i32 2
  store i32 1, i32* %156, align 8
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %136, %54
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i8* @cfi_read_raw(%struct.cfi_softc*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
