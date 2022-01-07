; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_alloc_pbl_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_alloc_pbl_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_pbl = type { i32, i8* }
%struct.qlnxr_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlnxr_pbl_info = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"pbl_table = NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to allocate pbl#%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"exit with error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlnxr_pbl* (%struct.qlnxr_dev*, %struct.qlnxr_pbl_info*, i32)* @qlnxr_alloc_pbl_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlnxr_pbl* @qlnxr_alloc_pbl_tbl(%struct.qlnxr_dev* %0, %struct.qlnxr_pbl_info* %1, i32 %2) #0 {
  %4 = alloca %struct.qlnxr_pbl*, align 8
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.qlnxr_pbl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.qlnxr_pbl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store %struct.qlnxr_pbl_info* %1, %struct.qlnxr_pbl_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %14, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %19 = call i32 @QL_DPRINT12(%struct.TYPE_4__* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %6, align 8
  %21 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.qlnxr_pbl* @kzalloc(i32 %25, i32 %26)
  store %struct.qlnxr_pbl* %27, %struct.qlnxr_pbl** %11, align 8
  %28 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %11, align 8
  %29 = icmp ne %struct.qlnxr_pbl* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %32 = call i32 @QL_DPRINT12(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store %struct.qlnxr_pbl* null, %struct.qlnxr_pbl** %4, align 8
  br label %117

33:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %75, %33
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %6, align 8
  %37 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %42 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %6, align 8
  %46 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @qlnx_dma_alloc_coherent(i32* %44, i32* %9, i32 %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %40
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @QL_DPRINT11(%struct.TYPE_4__* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %110

57:                                               ; preds = %40
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %6, align 8
  %60 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(i8* %58, i32 0, i32 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %64, i64 %66
  %68 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %67, i32 0, i32 1
  store i8* %63, i8** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %70, i64 %72
  %74 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %34

78:                                               ; preds = %34
  %79 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %11, align 8
  %80 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %79, i64 0
  %81 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %10, align 8
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %103, %78
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %6, align 8
  %87 = getelementptr inbounds %struct.qlnxr_pbl_info, %struct.qlnxr_pbl_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %84
  %92 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %92, i64 %95
  %97 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %108 = call i32 @QL_DPRINT12(%struct.TYPE_4__* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %11, align 8
  store %struct.qlnxr_pbl* %109, %struct.qlnxr_pbl** %4, align 8
  br label %117

110:                                              ; preds = %51
  %111 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %112 = load %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl_info** %6, align 8
  %113 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %11, align 8
  %114 = call i32 @qlnxr_free_pbl(%struct.qlnxr_dev* %111, %struct.qlnxr_pbl_info* %112, %struct.qlnxr_pbl* %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %116 = call i32 @QL_DPRINT12(%struct.TYPE_4__* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store %struct.qlnxr_pbl* null, %struct.qlnxr_pbl** %4, align 8
  br label %117

117:                                              ; preds = %110, %106, %30
  %118 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %4, align 8
  ret %struct.qlnxr_pbl* %118
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.qlnxr_pbl* @kzalloc(i32, i32) #1

declare dso_local i8* @qlnx_dma_alloc_coherent(i32*, i32*, i32) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @qlnxr_free_pbl(%struct.qlnxr_dev*, %struct.qlnxr_pbl_info*, %struct.qlnxr_pbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
