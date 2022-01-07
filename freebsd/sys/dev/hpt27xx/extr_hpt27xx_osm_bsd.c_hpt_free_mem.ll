; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_free_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.freelist*, %struct.freelist* }
%struct.freelist = type { i64, i64, i32, i32, %struct.freelist* }

@M_DEVBUF = common dso_local global i32 0, align 4
@os_max_cache_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @hpt_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt_free_mem(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.freelist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load %struct.freelist*, %struct.freelist** %10, align 8
  store %struct.freelist* %11, %struct.freelist** %3, align 8
  br label %12

12:                                               ; preds = %25, %1
  %13 = load %struct.freelist*, %struct.freelist** %3, align 8
  %14 = icmp ne %struct.freelist* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %20, %15
  %17 = load %struct.freelist*, %struct.freelist** %3, align 8
  %18 = call i8* @freelist_get(%struct.freelist* %17)
  store i8* %18, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = call i32 @free(i8* %21, i32 %22)
  br label %16

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.freelist*, %struct.freelist** %3, align 8
  %27 = getelementptr inbounds %struct.freelist, %struct.freelist* %26, i32 0, i32 4
  %28 = load %struct.freelist*, %struct.freelist** %27, align 8
  store %struct.freelist* %28, %struct.freelist** %3, align 8
  br label %12

29:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @os_max_cache_pages, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i8* @dmapool_get_page(i32 %38, i32* %6)
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @HPT_ASSERT(i8* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @free_pages(i8* %42, i32 0)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load %struct.freelist*, %struct.freelist** %49, align 8
  store %struct.freelist* %50, %struct.freelist** %3, align 8
  br label %51

51:                                               ; preds = %98, %47
  %52 = load %struct.freelist*, %struct.freelist** %3, align 8
  %53 = icmp ne %struct.freelist* %52, null
  br i1 %53, label %54, label %102

54:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %63, %54
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.freelist*, %struct.freelist** %3, align 8
  %59 = getelementptr inbounds %struct.freelist, %struct.freelist* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %56

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %96, %68
  %70 = load %struct.freelist*, %struct.freelist** %3, align 8
  %71 = call i8* @freelist_get_dma(%struct.freelist* %70, i32* %6)
  store i8* %71, i8** %4, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @free_pages(i8* %77, i32 %78)
  br label %96

80:                                               ; preds = %73
  %81 = load i8*, i8** %4, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %82, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @dmapool_put_page(i32 %91, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %80
  br label %96

96:                                               ; preds = %95, %76
  br label %69

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.freelist*, %struct.freelist** %3, align 8
  %100 = getelementptr inbounds %struct.freelist, %struct.freelist* %99, i32 0, i32 4
  %101 = load %struct.freelist*, %struct.freelist** %100, align 8
  store %struct.freelist* %101, %struct.freelist** %3, align 8
  br label %51

102:                                              ; preds = %51
  br label %103

103:                                              ; preds = %110, %102
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i8* @dmapool_get_page(i32 %107, i32* %6)
  store i8* %108, i8** %4, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @free_pages(i8* %111, i32 0)
  br label %103

113:                                              ; preds = %103
  ret void
}

declare dso_local i8* @freelist_get(%struct.freelist*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i8* @dmapool_get_page(i32, i32*) #1

declare dso_local i32 @HPT_ASSERT(i8*) #1

declare dso_local i32 @free_pages(i8*, i32) #1

declare dso_local i8* @freelist_get_dma(%struct.freelist*, i32*) #1

declare dso_local i32 @dmapool_put_page(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
