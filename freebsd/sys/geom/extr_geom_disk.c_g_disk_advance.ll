; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_advance.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i32 }
%struct.bio = type { i64, i64, i32, i32, i64, i64, i8* }
%struct.TYPE_2__ = type { i64 }

@BIO_VLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vlist request runs off the end\00", align 1
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disk*, %struct.bio*, i64)* @g_disk_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_disk_advance(%struct.disk* %0, %struct.bio* %1, i64 %2) #0 {
  %4 = alloca %struct.disk*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store %struct.disk* %0, %struct.disk** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, %9
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BIO_VLIST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %3
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 6
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %7, align 8
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 6
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_2__*
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %37
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %8, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %50, %25
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %53 = icmp ne %struct.TYPE_2__* %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub nsw i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 1
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %7, align 8
  br label %44

63:                                               ; preds = %44
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %69 = ptrtoint %struct.TYPE_2__* %67 to i64
  %70 = ptrtoint %struct.TYPE_2__* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.bio*, %struct.bio** %5, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %77 = bitcast %struct.TYPE_2__* %76 to i8*
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  br label %121

80:                                               ; preds = %3
  %81 = load %struct.bio*, %struct.bio** %5, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @BIO_UNMAPPED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %80
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @PAGE_SIZE, align 8
  %90 = sdiv i64 %88, %89
  %91 = load %struct.bio*, %struct.bio** %5, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.bio*, %struct.bio** %5, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load i64, i64* @PAGE_SIZE, align 8
  %101 = load %struct.bio*, %struct.bio** %5, align 8
  %102 = getelementptr inbounds %struct.bio, %struct.bio* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = srem i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = sdiv i64 %105, %106
  %108 = load %struct.bio*, %struct.bio** %5, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  br label %120

114:                                              ; preds = %80
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 6
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr i8, i8* %118, i64 %115
  store i8* %119, i8** %117, align 8
  br label %120

120:                                              ; preds = %114, %87
  br label %121

121:                                              ; preds = %120, %63
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
