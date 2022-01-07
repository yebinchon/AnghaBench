; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iores_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iores_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_erom_iores = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BHND_ADDR_MAX = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_erom_io*, i64, i64)* @bhnd_erom_iores_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_erom_iores_map(%struct.bhnd_erom_io* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_erom_io*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhnd_erom_iores*, align 8
  store %struct.bhnd_erom_io* %0, %struct.bhnd_erom_io** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %5, align 8
  %10 = bitcast %struct.bhnd_erom_io* %9 to %struct.bhnd_erom_iores*
  store %struct.bhnd_erom_iores* %10, %struct.bhnd_erom_iores** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %96

15:                                               ; preds = %3
  %16 = load i64, i64* @BHND_ADDR_MAX, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %96

23:                                               ; preds = %15
  %24 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %25 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  %29 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %30 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rman_get_start(i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %39 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @rman_get_size(i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %96

47:                                               ; preds = %37, %28
  %48 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %49 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %53 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %56 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @bhnd_release_resource(i32 %50, i32 %51, i32 %54, %struct.TYPE_3__* %57)
  %59 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %60 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %59, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %60, align 8
  %61 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %62 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  br label %63

63:                                               ; preds = %47, %23
  %64 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %65 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %68 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %70 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SYS_RES_MEMORY, align 4
  %73 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %74 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %73, i32 0, i32 0
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %76, %77
  %79 = sub nsw i64 %78, 1
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* @RF_ACTIVE, align 4
  %82 = load i32, i32* @RF_SHAREABLE, align 4
  %83 = or i32 %81, %82
  %84 = call %struct.TYPE_3__* @bhnd_alloc_resource(i32 %71, i32 %72, i32* %74, i64 %75, i64 %79, i64 %80, i32 %83)
  %85 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %86 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %85, i32 0, i32 2
  store %struct.TYPE_3__* %84, %struct.TYPE_3__** %86, align 8
  %87 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %88 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = icmp eq %struct.TYPE_3__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %63
  %92 = load %struct.bhnd_erom_iores*, %struct.bhnd_erom_iores** %8, align 8
  %93 = getelementptr inbounds %struct.bhnd_erom_iores, %struct.bhnd_erom_iores* %92, i32 0, i32 0
  store i32 -1, i32* %93, align 8
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %91, %46, %21, %13
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i32 @bhnd_release_resource(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @bhnd_alloc_resource(i32, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
