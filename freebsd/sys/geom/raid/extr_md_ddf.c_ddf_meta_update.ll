; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ddf_meta = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ddf_pd_entry* }
%struct.ddf_pd_entry = type { i32, i32 }

@pdr = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddf_meta*, %struct.ddf_meta*)* @ddf_meta_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddf_meta_update(%struct.ddf_meta* %0, %struct.ddf_meta* %1) #0 {
  %3 = alloca %struct.ddf_meta*, align 8
  %4 = alloca %struct.ddf_meta*, align 8
  %5 = alloca %struct.ddf_pd_entry*, align 8
  %6 = alloca %struct.ddf_pd_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ddf_meta* %0, %struct.ddf_meta** %3, align 8
  store %struct.ddf_meta* %1, %struct.ddf_meta** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %87, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pdr, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @GET16(%struct.ddf_meta* %11, i32 %14)
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %9
  %18 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %19 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ddf_pd_entry, %struct.ddf_pd_entry* %22, i64 %24
  store %struct.ddf_pd_entry* %25, %struct.ddf_pd_entry** %6, align 8
  %26 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %6, align 8
  %27 = getelementptr inbounds %struct.ddf_pd_entry, %struct.ddf_pd_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @isff(i32 %28, i32 24)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %87

32:                                               ; preds = %17
  %33 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %34 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pdr, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GET32(%struct.ddf_meta* %34, i32 %42)
  %44 = call i32 @ddf_meta_find_pd(%struct.ddf_meta* %33, i32* null, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %32
  %48 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %49 = call i32 @ddf_meta_find_pd(%struct.ddf_meta* %48, i32* null, i32 -1)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %51 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ddf_pd_entry, %struct.ddf_pd_entry* %54, i64 %56
  store %struct.ddf_pd_entry* %57, %struct.ddf_pd_entry** %5, align 8
  %58 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %5, align 8
  %59 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %6, align 8
  %60 = call i32 @memcpy(%struct.ddf_pd_entry* %58, %struct.ddf_pd_entry* %59, i32 8)
  br label %86

61:                                               ; preds = %32
  %62 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %63 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ddf_pd_entry, %struct.ddf_pd_entry* %66, i64 %68
  store %struct.ddf_pd_entry* %69, %struct.ddf_pd_entry** %5, align 8
  %70 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %71 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %5, align 8
  %72 = getelementptr inbounds %struct.ddf_pd_entry, %struct.ddf_pd_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ddf_meta*, %struct.ddf_meta** %3, align 8
  %75 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %5, align 8
  %76 = getelementptr inbounds %struct.ddf_pd_entry, %struct.ddf_pd_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @GET16D(%struct.ddf_meta* %74, i32 %77)
  %79 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %80 = load %struct.ddf_pd_entry*, %struct.ddf_pd_entry** %5, align 8
  %81 = getelementptr inbounds %struct.ddf_pd_entry, %struct.ddf_pd_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @GET16D(%struct.ddf_meta* %79, i32 %82)
  %84 = or i32 %78, %83
  %85 = call i32 @SET16D(%struct.ddf_meta* %70, i32 %73, i32 %84)
  br label %86

86:                                               ; preds = %61, %47
  br label %87

87:                                               ; preds = %86, %31
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %9

90:                                               ; preds = %9
  ret void
}

declare dso_local i32 @GET16(%struct.ddf_meta*, i32) #1

declare dso_local i64 @isff(i32, i32) #1

declare dso_local i32 @ddf_meta_find_pd(%struct.ddf_meta*, i32*, i32) #1

declare dso_local i32 @GET32(%struct.ddf_meta*, i32) #1

declare dso_local i32 @memcpy(%struct.ddf_pd_entry*, %struct.ddf_pd_entry*, i32) #1

declare dso_local i32 @SET16D(%struct.ddf_meta*, i32, i32) #1

declare dso_local i32 @GET16D(%struct.ddf_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
