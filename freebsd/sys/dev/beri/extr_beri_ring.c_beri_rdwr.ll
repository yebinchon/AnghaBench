; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_rdwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.beri_softc* }
%struct.beri_softc = type { i32, i64, i64, i64, i32 }
%struct.uio = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Err: no data/space available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @beri_rdwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_rdwr(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.beri_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.cdev*, %struct.cdev** %5, align 8
  %19 = getelementptr inbounds %struct.cdev, %struct.cdev* %18, i32 0, i32 0
  %20 = load %struct.beri_softc*, %struct.beri_softc** %19, align 8
  store %struct.beri_softc* %20, %struct.beri_softc** %8, align 8
  %21 = load %struct.uio*, %struct.uio** %6, align 8
  %22 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %14, align 4
  %27 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @get_control_reg(%struct.beri_softc* %27, i32 %28)
  %30 = bitcast %struct.TYPE_5__* %17 to i64*
  store i64 %29, i64* %30, align 4
  %31 = bitcast %struct.TYPE_5__* %10 to i8*
  %32 = bitcast %struct.TYPE_5__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  %33 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @get_stock(%struct.beri_softc* %33, i32 %34, %struct.TYPE_5__* %10)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.uio*, %struct.uio** %6, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %43 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %122

46:                                               ; preds = %3
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  br label %56

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32* [ %53, %52 ], [ %55, %54 ]
  store i32* %57, i32** %11, align 8
  %58 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %59 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %60, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %68 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  br label %74

70:                                               ; preds = %56
  %71 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %72 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i64 [ %69, %66 ], [ %73, %70 ]
  store i64 %75, i64* %9, align 8
  %76 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %77 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %78, %79
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %12, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.uio*, %struct.uio** %6, align 8
  %93 = call i32 @uiomove(i32* %90, i32 %91, %struct.uio* %92)
  br label %109

94:                                               ; preds = %74
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.uio*, %struct.uio** %6, align 8
  %102 = call i32 @uiomove(i32* %99, i32 %100, %struct.uio* %101)
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load %struct.uio*, %struct.uio** %6, align 8
  %108 = call i32 @uiomove(i32* %103, i32 %106, %struct.uio* %107)
  br label %109

109:                                              ; preds = %94, %85
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %111, %112
  %114 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %115 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = srem i32 %113, %116
  %118 = load i32*, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @set_control_reg(%struct.beri_softc* %119, i32 %120, %struct.TYPE_5__* %10)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %109, %41
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @get_control_reg(%struct.beri_softc*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_stock(%struct.beri_softc*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @set_control_reg(%struct.beri_softc*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
