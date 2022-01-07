; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_kernel_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_kernel_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.g_concat_softc* }
%struct.g_concat_softc = type { i64, %struct.g_concat_disk* }
%struct.g_concat_disk = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.g_kerneldump = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@g_std_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Kernel dump will go to %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_concat_kernel_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_kernel_dump(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_concat_softc*, align 8
  %4 = alloca %struct.g_concat_disk*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.g_kerneldump*, align 8
  %7 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.g_concat_softc*, %struct.g_concat_softc** %13, align 8
  store %struct.g_concat_softc* %14, %struct.g_concat_softc** %3, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.g_kerneldump*
  store %struct.g_kerneldump* %18, %struct.g_kerneldump** %6, align 8
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %51, %1
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %27 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %26, i32 0, i32 1
  %28 = load %struct.g_concat_disk*, %struct.g_concat_disk** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %28, i64 %29
  %31 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %34 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %25
  %38 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %39 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %38, i32 0, i32 1
  %40 = load %struct.g_concat_disk*, %struct.g_concat_disk** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %40, i64 %41
  %43 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %46 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %54

50:                                               ; preds = %37, %25
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %19

54:                                               ; preds = %49, %19
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %57 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.bio*, %struct.bio** %2, align 8
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = call i32 @g_io_deliver(%struct.bio* %61, i32 %62)
  br label %132

64:                                               ; preds = %54
  %65 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %66 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %65, i32 0, i32 1
  %67 = load %struct.g_concat_disk*, %struct.g_concat_disk** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %67, i64 %68
  store %struct.g_concat_disk* %69, %struct.g_concat_disk** %4, align 8
  %70 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %71 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %74 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %78 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %81 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %84 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %88 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = icmp sgt i64 %79, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %64
  %93 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %94 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %97 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %101 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = load %struct.g_kerneldump*, %struct.g_kerneldump** %6, align 8
  %105 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %92, %64
  %107 = load %struct.bio*, %struct.bio** %2, align 8
  %108 = call %struct.bio* @g_clone_bio(%struct.bio* %107)
  store %struct.bio* %108, %struct.bio** %5, align 8
  %109 = load %struct.bio*, %struct.bio** %5, align 8
  %110 = icmp eq %struct.bio* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.bio*, %struct.bio** %2, align 8
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = call i32 @g_io_deliver(%struct.bio* %112, i32 %113)
  br label %132

115:                                              ; preds = %106
  %116 = load i32, i32* @g_std_done, align 4
  %117 = load %struct.bio*, %struct.bio** %5, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.bio*, %struct.bio** %5, align 8
  %120 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %121 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i32 @g_io_request(%struct.bio* %119, %struct.TYPE_8__* %122)
  %124 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %125 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @G_CONCAT_DEBUG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %115, %111, %60
  ret void
}

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.TYPE_8__*) #1

declare dso_local i32 @G_CONCAT_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
