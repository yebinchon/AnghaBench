; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_kerneldump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_kerneldump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.disk = type { i64, i32, i32, i32* }
%struct.g_kerneldump = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, %struct.disk*, i32* }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"g_disk_kerneldump(%s, %jd, %jd)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.disk*)* @g_disk_kerneldump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_disk_kerneldump(%struct.bio* %0, %struct.disk* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.disk*, align 8
  %5 = alloca %struct.g_kerneldump*, align 8
  %6 = alloca %struct.g_geom*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.disk* %1, %struct.disk** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.g_kerneldump*
  store %struct.g_kerneldump* %10, %struct.g_kerneldump** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.g_geom*, %struct.g_geom** %14, align 8
  store %struct.g_geom* %15, %struct.g_geom** %6, align 8
  %16 = load i32, i32* @G_T_TOPOLOGY, align 4
  %17 = load %struct.g_geom*, %struct.g_geom** %6, align 8
  %18 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %21 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %25 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @g_trace(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %27)
  %29 = load %struct.disk*, %struct.disk** %4, align 8
  %30 = getelementptr inbounds %struct.disk, %struct.disk* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = load i32, i32* @ENODEV, align 4
  %36 = call i32 @g_io_deliver(%struct.bio* %34, i32 %35)
  br label %96

37:                                               ; preds = %2
  %38 = load %struct.disk*, %struct.disk** %4, align 8
  %39 = getelementptr inbounds %struct.disk, %struct.disk* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %42 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  store i32* %40, i32** %43, align 8
  %44 = load %struct.disk*, %struct.disk** %4, align 8
  %45 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %46 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store %struct.disk* %44, %struct.disk** %47, align 8
  %48 = load %struct.disk*, %struct.disk** %4, align 8
  %49 = getelementptr inbounds %struct.disk, %struct.disk* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %52 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load %struct.disk*, %struct.disk** %4, align 8
  %55 = getelementptr inbounds %struct.disk, %struct.disk* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %58 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %61 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %64 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %67 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %70 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.disk*, %struct.disk** %4, align 8
  %74 = getelementptr inbounds %struct.disk, %struct.disk* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %37
  %78 = load %struct.disk*, %struct.disk** %4, align 8
  %79 = getelementptr inbounds %struct.disk, %struct.disk* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %82 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %86 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %77, %37
  %88 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %89 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.g_kerneldump*, %struct.g_kerneldump** %5, align 8
  %92 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  %94 = load %struct.bio*, %struct.bio** %3, align 8
  %95 = call i32 @g_io_deliver(%struct.bio* %94, i32 0)
  br label %96

96:                                               ; preds = %87, %33
  ret void
}

declare dso_local i32 @g_trace(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
