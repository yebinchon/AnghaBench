; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }
%struct.malloc_type = type { i32 }

@kmem_zmax = common dso_local global i64 0, align 8
@M_EXEC = common dso_local global i32 0, align 4
@KMEM_ZMASK = common dso_local global i64 0, align 8
@KMEM_ZBASE = common dso_local global i64 0, align 8
@kmemsize = common dso_local global i32* null, align 8
@KMEM_ZSHIFT = common dso_local global i64 0, align 8
@kmemzones = common dso_local global %struct.TYPE_5__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"malloc(M_WAITOK) returned NULL\00", align 1
@time_uptime = common dso_local global i32 0, align 4
@t_malloc_fail = common dso_local global i32 0, align 4
@krequests = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.malloc_type*, i32, i32)* @malloc_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @malloc_domain(i64 %0, %struct.malloc_type* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.malloc_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.malloc_type* %1, %struct.malloc_type** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @kmem_zmax, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @M_EXEC, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @KMEM_ZMASK, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @KMEM_ZMASK, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %26, %28
  %30 = load i64, i64* @KMEM_ZBASE, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i32*, i32** @kmemsize, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @KMEM_ZSHIFT, align 8
  %36 = lshr i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kmemzones, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load %struct.malloc_type*, %struct.malloc_type** %6, align 8
  %46 = call i64 @mtp_get_subzone(%struct.malloc_type* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %11, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @uma_zalloc_domain(%struct.TYPE_4__* %49, i32* null, i32 %50, i32 %51)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %32
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %55, %32
  %60 = load %struct.malloc_type*, %struct.malloc_type** %6, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %66

64:                                               ; preds = %59
  %65 = load i64, i64* %5, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i64 [ 0, %63 ], [ %65, %64 ]
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @malloc_type_zone_allocated(%struct.malloc_type* %60, i64 %67, i32 %68)
  br label %87

70:                                               ; preds = %15, %4
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = call i64 @roundup(i64 %71, i32 %72)
  store i64 %73, i64* %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i8* @uma_large_malloc_domain(i64 %74, i32 %75, i32 %76)
  store i8* %77, i8** %10, align 8
  %78 = load %struct.malloc_type*, %struct.malloc_type** %6, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %84

82:                                               ; preds = %70
  %83 = load i64, i64* %5, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i64 [ 0, %81 ], [ %83, %82 ]
  %86 = call i32 @malloc_type_allocated(%struct.malloc_type* %78, i64 %85)
  br label %87

87:                                               ; preds = %84, %66
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @M_WAITOK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @KASSERT(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %103

97:                                               ; preds = %87
  %98 = load i8*, i8** %10, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @time_uptime, align 4
  store i32 %101, i32* @t_malloc_fail, align 4
  br label %102

102:                                              ; preds = %100, %97
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i8*, i8** %10, align 8
  ret i8* %104
}

declare dso_local i64 @mtp_get_subzone(%struct.malloc_type*) #1

declare dso_local i8* @uma_zalloc_domain(%struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i32 @malloc_type_zone_allocated(%struct.malloc_type*, i64, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i8* @uma_large_malloc_domain(i64, i32, i32) #1

declare dso_local i32 @malloc_type_allocated(%struct.malloc_type*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
