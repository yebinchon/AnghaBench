; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_probe_driver_classes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_probe_driver_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_chipid = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"error fetching bhnd(4) drivers for %s: %d\0A\00", align 1
@BUS_PROBE_SPECIFIC = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bhnd_erom_probe_driver_classes(i32 %0, %struct.bhnd_erom_io* %1, %struct.bhnd_chipid* %2, %struct.bhnd_chipid* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_erom_io*, align 8
  %8 = alloca %struct.bhnd_chipid*, align 8
  %9 = alloca %struct.bhnd_chipid*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bhnd_chipid, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.bhnd_erom_io* %1, %struct.bhnd_erom_io** %7, align 8
  store %struct.bhnd_chipid* %2, %struct.bhnd_chipid** %8, align 8
  store %struct.bhnd_chipid* %3, %struct.bhnd_chipid** %9, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @devclass_get_drivers(i32 %19, i32*** %10, i32* %11)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @devclass_get_name(i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  store i32* null, i32** %5, align 8
  br label %80

28:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %72, %28
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %29
  %34 = load i32**, i32*** %10, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = call i32* @bhnd_driver_get_erom_class(i32* %38)
  store i32* %39, i32** %18, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %72

43:                                               ; preds = %33
  %44 = load i32*, i32** %18, align 8
  %45 = call i32 @kobj_class_compile(i32* %44)
  %46 = load i32*, i32** %18, align 8
  %47 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %7, align 8
  %48 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %8, align 8
  %49 = call i32 @bhnd_erom_probe(i32* %46, %struct.bhnd_erom_io* %47, %struct.bhnd_chipid* %48, %struct.bhnd_chipid* %17)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %72

53:                                               ; preds = %43
  %54 = load i32*, i32** %12, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %14, align 4
  %62 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %9, align 8
  %63 = bitcast %struct.bhnd_chipid* %62 to i8*
  %64 = bitcast %struct.bhnd_chipid* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load i32*, i32** %18, align 8
  store i32* %65, i32** %12, align 8
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @BUS_PROBE_SPECIFIC, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %75

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %52, %42
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %29

75:                                               ; preds = %70, %29
  %76 = load i32**, i32*** %10, align 8
  %77 = load i32, i32* @M_TEMP, align 4
  %78 = call i32 @free(i32** %76, i32 %77)
  %79 = load i32*, i32** %12, align 8
  store i32* %79, i32** %5, align 8
  br label %80

80:                                               ; preds = %75, %23
  %81 = load i32*, i32** %5, align 8
  ret i32* %81
}

declare dso_local i32 @devclass_get_drivers(i32, i32***, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @devclass_get_name(i32) #1

declare dso_local i32* @bhnd_driver_get_erom_class(i32*) #1

declare dso_local i32 @kobj_class_compile(i32*) #1

declare dso_local i32 @bhnd_erom_probe(i32*, %struct.bhnd_erom_io*, %struct.bhnd_chipid*, %struct.bhnd_chipid*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
