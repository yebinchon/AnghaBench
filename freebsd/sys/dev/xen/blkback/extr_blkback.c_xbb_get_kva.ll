; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_get_kva.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_get_kva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"xbb_get_kva of zero length\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Free KVA %p len %d out of range, kva = %#jx, ring VA = %#jx\0A\00", align 1
@XBBF_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xbb_softc*, i32)* @xbb_get_kva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xbb_get_kva(%struct.xbb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.xbb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %13 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %14 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %13, i32 0, i32 2
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %17 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %20 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bit_ffc(i32 %18, i32 %21, i32* %5)
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %116

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %112, %26
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %115

34:                                               ; preds = %28
  %35 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @bit_test(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %5, align 4
  br label %112

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %47
  %53 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %54 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @bit_nset(i32 %55, i32 %56, i32 %60)
  %62 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %63 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = mul nsw i64 %66, %67
  %69 = inttoptr i64 %68 to i32*
  %70 = sext i32 %64 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %74 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i32*
  %78 = icmp uge i32* %72, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %52
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = mul nsw i64 %82, %83
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %87 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = icmp ule i32* %85, %90
  br label %92

92:                                               ; preds = %79, %52
  %93 = phi i1 [ false, %52 ], [ %91, %79 ]
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = mul nsw i64 %97, %98
  %100 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %101 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %104 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @KASSERT(i32 %94, i8* %109)
  br label %115

111:                                              ; preds = %47
  br label %112

112:                                              ; preds = %111, %41
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %28

115:                                              ; preds = %92, %28
  br label %116

116:                                              ; preds = %115, %25
  %117 = load i32*, i32** %7, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* @XBBF_RESOURCE_SHORTAGE, align 4
  %121 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %122 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %126 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %119, %116
  %130 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %131 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %130, i32 0, i32 2
  %132 = call i32 @mtx_unlock(i32* %131)
  %133 = load i32*, i32** %7, align 8
  ret i32* %133
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bit_ffc(i32, i32, i32*) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @bit_nset(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
