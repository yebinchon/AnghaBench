; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @malloc(i64 %0, %struct.malloc_type* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.malloc_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.malloc_type* %1, %struct.malloc_type** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @kmem_zmax, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %67

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @M_EXEC, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @KMEM_ZMASK, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @KMEM_ZMASK, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = load i64, i64* @KMEM_ZBASE, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load i32*, i32** @kmemsize, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @KMEM_ZSHIFT, align 8
  %34 = lshr i64 %32, %33
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kmemzones, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load %struct.malloc_type*, %struct.malloc_type** %5, align 8
  %44 = call i64 @mtp_get_subzone(%struct.malloc_type* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %9, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @uma_zalloc(%struct.TYPE_4__* %47, i32 %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %30
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %52, %30
  %57 = load %struct.malloc_type*, %struct.malloc_type** %5, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %63

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i64 [ 0, %60 ], [ %62, %61 ]
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @malloc_type_zone_allocated(%struct.malloc_type* %57, i64 %64, i32 %65)
  br label %83

67:                                               ; preds = %13, %3
  %68 = load i64, i64* %4, align 8
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = call i64 @roundup(i64 %68, i32 %69)
  store i64 %70, i64* %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i8* @uma_large_malloc(i64 %71, i32 %72)
  store i8* %73, i8** %8, align 8
  %74 = load %struct.malloc_type*, %struct.malloc_type** %5, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %80

78:                                               ; preds = %67
  %79 = load i64, i64* %4, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i64 [ 0, %77 ], [ %79, %78 ]
  %82 = call i32 @malloc_type_allocated(%struct.malloc_type* %74, i64 %81)
  br label %83

83:                                               ; preds = %80, %63
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @M_WAITOK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ne i8* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @KASSERT(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %99

93:                                               ; preds = %83
  %94 = load i8*, i8** %8, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @time_uptime, align 4
  store i32 %97, i32* @t_malloc_fail, align 4
  br label %98

98:                                               ; preds = %96, %93
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i8*, i8** %8, align 8
  ret i8* %100
}

declare dso_local i64 @mtp_get_subzone(%struct.malloc_type*) #1

declare dso_local i8* @uma_zalloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @malloc_type_zone_allocated(%struct.malloc_type*, i64, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i8* @uma_large_malloc(i64, i32) #1

declare dso_local i32 @malloc_type_allocated(%struct.malloc_type*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
