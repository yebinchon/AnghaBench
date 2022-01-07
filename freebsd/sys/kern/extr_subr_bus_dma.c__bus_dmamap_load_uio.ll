; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i64, i64, i32, %struct.iovec*, %struct.TYPE_4__* }
%struct.iovec = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UIO_USERSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"bus_dmamap_load_uio: USERSPACE but no proc\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.uio*, i32*, i32)* @_bus_dmamap_load_uio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_load_uio(i32 %0, i32 %1, %struct.uio* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uio*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.iovec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.uio* %2, %struct.uio** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.uio*, %struct.uio** %8, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UIO_USERSPACE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %5
  %24 = load %struct.uio*, %struct.uio** %8, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.uio*, %struct.uio** %8, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vmspace_pmap(i32 %36)
  store i32 %37, i32* %14, align 4
  br label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @kernel_pmap, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = load %struct.uio*, %struct.uio** %8, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.uio*, %struct.uio** %8, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 3
  %46 = load %struct.iovec*, %struct.iovec** %45, align 8
  store %struct.iovec* %46, %struct.iovec** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %103, %40
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.uio*, %struct.uio** %8, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %56, %53, %47
  %61 = phi i1 [ false, %53 ], [ false, %47 ], [ %59, %56 ]
  br i1 %61, label %62, label %106

62:                                               ; preds = %60
  %63 = load %struct.iovec*, %struct.iovec** %13, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i64 %65
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.iovec*, %struct.iovec** %13, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i64 %72
  %74 = getelementptr inbounds %struct.iovec, %struct.iovec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %69, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i64, i64* %11, align 8
  br label %86

79:                                               ; preds = %62
  %80 = load %struct.iovec*, %struct.iovec** %13, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.iovec, %struct.iovec* %80, i64 %82
  %84 = getelementptr inbounds %struct.iovec, %struct.iovec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  br label %86

86:                                               ; preds = %79, %77
  %87 = phi i64 [ %78, %77 ], [ %85, %79 ]
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @_bus_dmamap_load_buffer(i32 %91, i32 %92, i64 %93, i64 %94, i32 %95, i32 %96, i32* null, i32* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %90, %86
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %47

106:                                              ; preds = %60
  %107 = load i32, i32* %16, align 4
  ret i32 %107
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmspace_pmap(i32) #1

declare dso_local i32 @_bus_dmamap_load_buffer(i32, i32, i64, i64, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
