; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_dump_rx_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_dump_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64, i32 }
%struct.ooo_opaque = type { i32, i32, i32 }
%struct.ecore_ooo_buffer = type { i32, i32, i64 }

@ECORE_MSG_OOO = common dso_local global i32 0, align 4
@ECORE_LEVEL_VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"******************************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"0x%x-%x: CID 0x%x, OP 0x%x, ISLE 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"0x%x-%x:  0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_ooo_dump_rx_event(%struct.ecore_hwfn* %0, %struct.ooo_opaque* %1, %struct.ecore_ooo_buffer* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ooo_opaque*, align 8
  %6 = alloca %struct.ecore_ooo_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ooo_opaque* %1, %struct.ooo_opaque** %5, align 8
  store %struct.ecore_ooo_buffer* %2, %struct.ecore_ooo_buffer** %6, align 8
  %12 = load i32, i32* @ECORE_MSG_OOO, align 4
  store i32 %12, i32* %8, align 4
  store i32* null, i32** %11, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ECORE_LEVEL_VERBOSE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %121

19:                                               ; preds = %3
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %121

27:                                               ; preds = %19
  %28 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32* %36, i32** %11, align 8
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %37, i32 %38, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DMA_HI(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DMA_LO(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ooo_opaque*, %struct.ooo_opaque** %5, align 8
  %53 = getelementptr inbounds %struct.ooo_opaque, %struct.ooo_opaque* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ooo_opaque*, %struct.ooo_opaque** %5, align 8
  %56 = getelementptr inbounds %struct.ooo_opaque, %struct.ooo_opaque* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ooo_opaque*, %struct.ooo_opaque** %5, align 8
  %59 = getelementptr inbounds %struct.ooo_opaque, %struct.ooo_opaque* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %48, i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %54, i32 %57, i32 %60)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %118, %27
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %121

65:                                               ; preds = %62
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 5
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 6
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 7
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %66, i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %74, i32 %80, i32 %86, i32 %92, i32 %98, i32 %104, i32 %110, i32 %116)
  br label %118

118:                                              ; preds = %65
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 8
  store i32 %120, i32* %7, align 4
  br label %62

121:                                              ; preds = %18, %26, %62
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @DMA_HI(i32) #1

declare dso_local i32 @DMA_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
