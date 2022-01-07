; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_dma_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_dma_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read/write\00", align 1
@MXGEFW_CMD_UNALIGNED_TEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"DMA %s benchmark failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @mxge_dma_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_dma_test(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @MXGE_LOWPART_TO_U32(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @MXGE_HIGHPART_TO_U32(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 65536
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %27, i32 %28, %struct.TYPE_9__* %5)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %105

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 16
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %36, %37
  %39 = mul nsw i32 %38, 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 65535
  %43 = sdiv i32 %39, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @MXGE_LOWPART_TO_U32(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @MXGE_HIGHPART_TO_U32(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %56, i32 %57, %struct.TYPE_9__* %5)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %105

62:                                               ; preds = %33
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 16
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 65535
  %72 = sdiv i32 %68, %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i8* @MXGE_LOWPART_TO_U32(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i8* @MXGE_HIGHPART_TO_U32(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %82, 65537
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %85, i32 %86, %struct.TYPE_9__* %5)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %62
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %105

91:                                               ; preds = %62
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %93, 16
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %94, %95
  %97 = mul nsw i32 %96, 2
  %98 = mul nsw i32 %97, 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 65535
  %102 = sdiv i32 %98, %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %91, %90, %61, %32
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MXGEFW_CMD_UNALIGNED_TEST, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %112, %108, %105
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i8* @MXGE_LOWPART_TO_U32(i32) #1

declare dso_local i8* @MXGE_HIGHPART_TO_U32(i32) #1

declare dso_local i32 @mxge_send_cmd(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
