; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_msi.c_msi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_intsrc = type { i32, i32*, i64, i64, i32, i32, i32*, %struct.msi_intsrc*, i32, i64 }

@msi_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"unowned group\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"message not in group\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"owner mismatch\00", align 1
@M_MSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_release(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msi_intsrc*, align 8
  %7 = alloca %struct.msi_intsrc*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @mtx_lock(i32* @msi_lock)
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @intr_lookup_source(i32 %12)
  %14 = inttoptr i64 %13 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %14, %struct.msi_intsrc** %7, align 8
  %15 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %16 = icmp eq %struct.msi_intsrc* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @mtx_unlock(i32* @msi_lock)
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %3, align 4
  br label %134

20:                                               ; preds = %2
  %21 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %22 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @mtx_unlock(i32* @msi_lock)
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %134

28:                                               ; preds = %20
  %29 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %30 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %29, i32 0, i32 7
  %31 = load %struct.msi_intsrc*, %struct.msi_intsrc** %30, align 8
  %32 = icmp eq %struct.msi_intsrc* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = call i32 @mtx_unlock(i32* @msi_lock)
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %3, align 4
  br label %134

36:                                               ; preds = %28
  %37 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %38 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %37, i32 0, i32 7
  %39 = load %struct.msi_intsrc*, %struct.msi_intsrc** %38, align 8
  %40 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %41 = icmp ne %struct.msi_intsrc* %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %44 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36
  %49 = call i32 @mtx_unlock(i32* @msi_lock)
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %134

51:                                               ; preds = %42
  %52 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %53 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %102, %51
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @intr_lookup_source(i32 %67)
  %69 = inttoptr i64 %68 to %struct.msi_intsrc*
  store %struct.msi_intsrc* %69, %struct.msi_intsrc** %6, align 8
  %70 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %71 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %70, i32 0, i32 7
  %72 = load %struct.msi_intsrc*, %struct.msi_intsrc** %71, align 8
  %73 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %74 = icmp eq %struct.msi_intsrc* %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @KASSERT(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %78 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %81 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @KASSERT(i32 %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %87 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %86, i32 0, i32 7
  store %struct.msi_intsrc* null, %struct.msi_intsrc** %87, align 8
  %88 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %89 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %88, i32 0, i32 6
  store i32* null, i32** %89, align 8
  %90 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %91 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %94 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %97 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @apic_free_vector(i32 %92, i64 %95, i32 %98)
  %100 = load %struct.msi_intsrc*, %struct.msi_intsrc** %6, align 8
  %101 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %62
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %58

105:                                              ; preds = %58
  %106 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %107 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %106, i32 0, i32 7
  store %struct.msi_intsrc* null, %struct.msi_intsrc** %107, align 8
  %108 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %109 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %108, i32 0, i32 6
  store i32* null, i32** %109, align 8
  %110 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %111 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %114 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %117 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @apic_free_vector(i32 %112, i64 %115, i32 %118)
  %120 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %121 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %123 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %125 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %127 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @M_MSI, align 4
  %130 = call i32 @free(i32* %128, i32 %129)
  %131 = load %struct.msi_intsrc*, %struct.msi_intsrc** %7, align 8
  %132 = getelementptr inbounds %struct.msi_intsrc, %struct.msi_intsrc* %131, i32 0, i32 1
  store i32* null, i32** %132, align 8
  %133 = call i32 @mtx_unlock(i32* @msi_lock)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %105, %48, %33, %25, %17
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @intr_lookup_source(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @apic_free_vector(i32, i64, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
