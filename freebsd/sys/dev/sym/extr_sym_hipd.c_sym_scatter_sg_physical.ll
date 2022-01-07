; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_scatter_sg_physical.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_scatter_sg_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@SYM_CONF_MAX_SG = common dso_local global i32 0, align 4
@SYM_CONF_DMA_BOUNDARY = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_SCATTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s scatter: paddr=%lx len=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, %struct.TYPE_10__*, i32)* @sym_scatter_sg_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_scatter_sg_physical(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @SYM_LOCK_ASSERT(i32 %15)
  %17 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %27, %33
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %110, %4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %111

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = sub nsw i64 %39, 1
  %41 = load i32, i32* @SYM_CONF_DMA_BOUNDARY, align 4
  %42 = call i64 @rounddown2(i64 %40, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %12, align 8
  %52 = load i32, i32* @DEBUG_FLAGS, align 4
  %53 = load i32, i32* @DEBUG_SCATTER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = call i8* @sym_name(i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %58, i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %56, %48
  %63 = load i64, i64* %11, align 8
  %64 = call i8* @cpu_to_scr(i64 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i8* %64, i8** %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i8* @cpu_to_scr(i64 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i8* %74, i8** %82, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %13, align 4
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %62
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %111

93:                                               ; preds = %88
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %100, %106
  store i64 %107, i64* %10, align 8
  br label %110

108:                                              ; preds = %62
  %109 = load i64, i64* %11, align 8
  store i64 %109, i64* %10, align 8
  br label %110

110:                                              ; preds = %108, %93
  br label %35

111:                                              ; preds = %92, %35
  %112 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %14, align 4
  %119 = icmp sge i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 -1, i32 0
  ret i32 %121
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i64 @rounddown2(i64, i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, i64) #1

declare dso_local i8* @sym_name(i32) #1

declare dso_local i8* @cpu_to_scr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
