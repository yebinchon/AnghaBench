; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bp_unmapped_get_kva.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bp_unmapped_get_kva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@unmapped_buf = common dso_local global i64 0, align 8
@GB_UNMAPPED = common dso_local global i32 0, align 4
@GB_KVAALLOC = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bsize == 0, check bo->bo_bsize\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@GB_NOWAIT_BD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"GB_NOWAIT_BD and GB_UNMAPPED %p\00", align 1
@mappingrestarts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32, i32, i32)* @bp_unmapped_get_kva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bp_unmapped_get_kva(%struct.buf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.buf*, %struct.buf** %5, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @unmapped_buf, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GB_UNMAPPED, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %19, %4
  %25 = phi i1 [ false, %4 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load %struct.buf*, %struct.buf** %5, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @unmapped_buf, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.buf*, %struct.buf** %5, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @unmapped_buf, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GB_KVAALLOC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %32, %24
  %44 = phi i1 [ false, %32 ], [ false, %24 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %133

52:                                               ; preds = %48, %43
  %53 = load %struct.buf*, %struct.buf** %5, align 8
  %54 = call i32 @BUF_CHECK_UNMAPPED(%struct.buf* %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.buf*, %struct.buf** %5, align 8
  %59 = getelementptr inbounds %struct.buf, %struct.buf* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @unmapped_buf, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %120

64:                                               ; preds = %57, %52
  %65 = load %struct.buf*, %struct.buf** %5, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @vn_isdisk(i32 %67, i32* null)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @DEV_BSIZE, align 4
  br label %78

72:                                               ; preds = %64
  %73 = load %struct.buf*, %struct.buf** %5, align 8
  %74 = getelementptr inbounds %struct.buf, %struct.buf* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  br label %78

78:                                               ; preds = %72, %70
  %79 = phi i32 [ %71, %70 ], [ %77, %72 ]
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @KASSERT(i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @PAGE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @imax(i32 %92, i32 %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %109, %78
  %96 = load %struct.buf*, %struct.buf** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @bufkva_alloc(%struct.buf* %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @GB_NOWAIT_BD, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.buf*, %struct.buf** %5, align 8
  %108 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.buf* %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* @mappingrestarts, align 4
  %111 = call i32 @counter_u64_add(i32 %110, i32 1)
  %112 = load %struct.buf*, %struct.buf** %5, align 8
  %113 = call i32 @bufdomain(%struct.buf* %112)
  %114 = load %struct.buf*, %struct.buf** %5, align 8
  %115 = getelementptr inbounds %struct.buf, %struct.buf* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @bufspace_wait(i32 %113, i32 %116, i32 %117, i32 0, i32 0)
  br label %95

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119, %63
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.buf*, %struct.buf** %5, align 8
  %125 = getelementptr inbounds %struct.buf, %struct.buf* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.buf*, %struct.buf** %5, align 8
  %128 = getelementptr inbounds %struct.buf, %struct.buf* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.buf*, %struct.buf** %5, align 8
  %130 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %129)
  %131 = load %struct.buf*, %struct.buf** %5, align 8
  %132 = call i32 @bpmap_qenter(%struct.buf* %131)
  br label %133

133:                                              ; preds = %51, %123, %120
  ret void
}

declare dso_local i32 @BUF_CHECK_UNMAPPED(%struct.buf*) #1

declare dso_local i64 @vn_isdisk(i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i64 @bufkva_alloc(%struct.buf*, i32, i32) #1

declare dso_local i32 @panic(i8*, %struct.buf*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @bufspace_wait(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bufdomain(%struct.buf*) #1

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i32 @bpmap_qenter(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
