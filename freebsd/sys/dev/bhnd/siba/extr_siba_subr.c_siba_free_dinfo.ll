; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_free_dinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_free_dinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32**, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_BHND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siba_free_dinfo(i32 %0, i32 %1, %struct.siba_devinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.siba_devinfo*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.siba_devinfo* %2, %struct.siba_devinfo** %6, align 8
  %8 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %9 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %8, i32 0, i32 5
  %10 = call i32 @resource_list_free(i32* %9)
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %53, %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %14 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @nitems(i32 %15)
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %11
  %19 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %20 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %19, i32 0, i32 3
  %21 = load i32**, i32*** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %53

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %31 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %37 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %36, i32 0, i32 3
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @bhnd_release_resource(i32 %28, i32 %29, i32 %35, i32* %41)
  %43 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %44 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  store i32* null, i32** %47, align 8
  %48 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %49 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 -1, i32* %52, align 4
  br label %53

53:                                               ; preds = %27, %26
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %11

56:                                               ; preds = %11
  %57 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %58 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %64 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %72 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BHND_BUS_UNMAP_INTR(i32 %69, i32 %70, i32 %74)
  %76 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %77 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %68, %62, %56
  %80 = load %struct.siba_devinfo*, %struct.siba_devinfo** %6, align 8
  %81 = load i32, i32* @M_BHND, align 4
  %82 = call i32 @free(%struct.siba_devinfo* %80, i32 %81)
  ret void
}

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i64 @nitems(i32) #1

declare dso_local i32 @bhnd_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @BHND_BUS_UNMAP_INTR(i32, i32, i32) #1

declare dso_local i32 @free(%struct.siba_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
