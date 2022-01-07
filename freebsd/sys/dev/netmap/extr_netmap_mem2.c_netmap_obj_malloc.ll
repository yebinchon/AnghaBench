; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_obj_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_obj_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i64, i64, i64, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"%s request size %d too large\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"no more %s objects\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"%s allocator: allocated object @ [%d][%d]: vaddr %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.netmap_obj_pool*, i64, i64*, i64*)* @netmap_obj_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @netmap_obj_malloc(%struct.netmap_obj_pool* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.netmap_obj_pool*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %17 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %22 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24)
  store i8* null, i8** %5, align 8
  br label %126

26:                                               ; preds = %4
  %27 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %28 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %33 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i8* null, i8** %5, align 8
  br label %126

36:                                               ; preds = %26
  %37 = load i64*, i64** %8, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %110, %63, %42
  %44 = load i8*, i8** %13, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %49 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %111

54:                                               ; preds = %52
  %55 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %56 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %43

66:                                               ; preds = %54
  store i64 0, i64* %12, align 8
  store i64 1, i64* %11, align 8
  br label %67

67:                                               ; preds = %73, %66
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %11, align 8
  %70 = and i64 %68, %69
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %12, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = shl i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %67

78:                                               ; preds = %67
  %79 = load i64, i64* %11, align 8
  %80 = xor i64 %79, -1
  %81 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %82 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %86, %80
  store i64 %87, i64* %85, align 8
  %88 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %89 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %93 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %92, i32 0, i32 5
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = mul i64 %95, 32
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %96, %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %13, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %78
  %105 = load i64, i64* %10, align 8
  %106 = mul i64 %105, 32
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %106, %107
  %109 = load i64*, i64** %9, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %78
  br label %43

111:                                              ; preds = %52
  %112 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %113 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @nm_prdis(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %114, i64 %115, i64 %116, i8* %117)
  %119 = load i64*, i64** %8, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i64, i64* %10, align 8
  %123 = load i64*, i64** %8, align 8
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %111
  %125 = load i8*, i8** %13, align 8
  store i8* %125, i8** %5, align 8
  br label %126

126:                                              ; preds = %124, %31, %20
  %127 = load i8*, i8** %5, align 8
  ret i8* %127
}

declare dso_local i32 @nm_prerr(i8*, i32, ...) #1

declare dso_local i32 @nm_prdis(i8*, i32, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
