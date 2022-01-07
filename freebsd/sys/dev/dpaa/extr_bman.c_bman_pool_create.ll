; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman.c_bman_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman.c_bman_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_softc = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i8*, i32*, i32*, i32*, i32*, i32* }

@MAX_DEPLETION_THRESHOLDS = common dso_local global i32 0, align 4
@bman_sc = common dso_local global %struct.bman_softc* null, align 8
@E_OK = common dso_local global i32 0, align 4
@BM_POOL_DEP_THRESH_SW_ENTRY = common dso_local global i64 0, align 8
@BM_POOL_DEP_THRESH_SW_EXIT = common dso_local global i64 0, align 8
@BM_POOL_DEP_THRESH_HW_ENTRY = common dso_local global i64 0, align 8
@BM_POOL_DEP_THRESH_HW_EXIT = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bman_pool_create(i64* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11, i32* %12, i32* %13, i32* %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.bman_softc*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca %struct.TYPE_6__, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i64* %0, i64** %17, align 8
  store i8* %1, i8** %18, align 8
  store i8* %2, i8** %19, align 8
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i32* %5, i32** %22, align 8
  store i32* %6, i32** %23, align 8
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32* %11, i32** %28, align 8
  store i32* %12, i32** %29, align 8
  store i32* %13, i32** %30, align 8
  store i32* %14, i32** %31, align 8
  %40 = load i32, i32* @MAX_DEPLETION_THRESHOLDS, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %32, align 8
  %43 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %33, align 8
  %44 = load %struct.bman_softc*, %struct.bman_softc** @bman_sc, align 8
  store %struct.bman_softc* %44, %struct.bman_softc** %34, align 8
  store i32* null, i32** %35, align 8
  %45 = call i32 (...) @sched_pin()
  %46 = load %struct.bman_softc*, %struct.bman_softc** %34, align 8
  %47 = call i32* @bman_portal_setup(%struct.bman_softc* %46)
  store i32* %47, i32** %36, align 8
  %48 = load i32*, i32** %36, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %15
  br label %148

51:                                               ; preds = %15
  %52 = call i32 @memset(%struct.TYPE_6__* %37, i32 0, i32 80)
  %53 = load %struct.bman_softc*, %struct.bman_softc** %34, align 8
  %54 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = load i32*, i32** %36, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** %29, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32* %59, i32** %60, align 8
  %61 = load i8*, i8** %21, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = load i32*, i32** %29, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  %66 = load i32*, i32** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load i32*, i32** %23, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  %72 = load i32*, i32** %30, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = load i32*, i32** %31, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = call i32* @BM_POOL_Config(%struct.TYPE_6__* %37)
  store i32* %81, i32** %35, align 8
  %82 = load i32*, i32** %35, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %51
  br label %148

85:                                               ; preds = %51
  %86 = load i32*, i32** %35, align 8
  %87 = call i32 @BM_POOL_ConfigBuffContextMode(i32* %86, i32 0)
  %88 = load i8*, i8** %20, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %19, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90, %85
  %94 = load i32*, i32** %35, align 8
  %95 = load i8*, i8** %19, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = call i32 @BM_POOL_ConfigStockpile(i32* %94, i8* %95, i8* %96)
  store i32 %97, i32* %38, align 4
  %98 = load i32, i32* %38, align 4
  %99 = load i32, i32* @E_OK, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %148

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i32*, i32** %28, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = load i32, i32* %24, align 4
  %108 = load i64, i64* @BM_POOL_DEP_THRESH_SW_ENTRY, align 8
  %109 = getelementptr inbounds i32, i32* %43, i64 %108
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i64, i64* @BM_POOL_DEP_THRESH_SW_EXIT, align 8
  %112 = getelementptr inbounds i32, i32* %43, i64 %111
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %26, align 4
  %114 = load i64, i64* @BM_POOL_DEP_THRESH_HW_ENTRY, align 8
  %115 = getelementptr inbounds i32, i32* %43, i64 %114
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %27, align 4
  %117 = load i64, i64* @BM_POOL_DEP_THRESH_HW_EXIT, align 8
  %118 = getelementptr inbounds i32, i32* %43, i64 %117
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** %35, align 8
  %120 = load i32*, i32** %28, align 8
  %121 = call i32 @BM_POOL_ConfigDepletion(i32* %119, i32* %120, i32* %43)
  store i32 %121, i32* %38, align 4
  %122 = load i32, i32* %38, align 4
  %123 = load i32, i32* @E_OK, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %106
  br label %148

126:                                              ; preds = %106
  br label %127

127:                                              ; preds = %126, %103
  %128 = load i32*, i32** %35, align 8
  %129 = call i32 @BM_POOL_Init(i32* %128)
  store i32 %129, i32* %38, align 4
  %130 = load i32, i32* %38, align 4
  %131 = load i32, i32* @E_OK, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %148

134:                                              ; preds = %127
  %135 = load i32*, i32** %35, align 8
  %136 = call i64 @BM_POOL_GetId(i32* %135)
  %137 = load i64*, i64** %17, align 8
  store i64 %136, i64* %137, align 8
  %138 = load i32, i32* @cpuid, align 4
  %139 = call i32 @PCPU_GET(i32 %138)
  %140 = load %struct.bman_softc*, %struct.bman_softc** %34, align 8
  %141 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64*, i64** %17, align 8
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  %146 = call i32 (...) @sched_unpin()
  %147 = load i32*, i32** %35, align 8
  store i32* %147, i32** %16, align 8
  store i32 1, i32* %39, align 4
  br label %156

148:                                              ; preds = %133, %125, %101, %84, %50
  %149 = load i32*, i32** %35, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32*, i32** %35, align 8
  %153 = call i32 @BM_POOL_Free(i32* %152)
  br label %154

154:                                              ; preds = %151, %148
  %155 = call i32 (...) @sched_unpin()
  store i32* null, i32** %16, align 8
  store i32 1, i32* %39, align 4
  br label %156

156:                                              ; preds = %154, %134
  %157 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32*, i32** %16, align 8
  ret i32* %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sched_pin(...) #2

declare dso_local i32* @bman_portal_setup(%struct.bman_softc*) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32* @BM_POOL_Config(%struct.TYPE_6__*) #2

declare dso_local i32 @BM_POOL_ConfigBuffContextMode(i32*, i32) #2

declare dso_local i32 @BM_POOL_ConfigStockpile(i32*, i8*, i8*) #2

declare dso_local i32 @BM_POOL_ConfigDepletion(i32*, i32*, i32*) #2

declare dso_local i32 @BM_POOL_Init(i32*) #2

declare dso_local i64 @BM_POOL_GetId(i32*) #2

declare dso_local i32 @PCPU_GET(i32) #2

declare dso_local i32 @sched_unpin(...) #2

declare dso_local i32 @BM_POOL_Free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
