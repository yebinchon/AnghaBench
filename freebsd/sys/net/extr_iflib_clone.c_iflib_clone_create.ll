; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib_clone.c_iflib_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib_clone.c_iflib_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }
%struct.iflib_cloneattach_ctx = type { i8*, i32, i64, %struct.if_clone* }
%struct.TYPE_3__ = type { i32, i32 }

@iflib_pseudodev = common dso_local global i32* null, align 8
@Giant = common dso_local global i32 0, align 4
@root_bus = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"ifpseudo\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no ip found for %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"unit %d allocated\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@iflib_pseudodriver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @iflib_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iflib_cloneattach_ctx, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.if_clone*, %struct.if_clone** %5, align 8
  %15 = call i8* @ifc_name(%struct.if_clone* %14)
  store i8* %15, i8** %8, align 8
  %16 = load %struct.if_clone*, %struct.if_clone** %5, align 8
  %17 = getelementptr inbounds %struct.iflib_cloneattach_ctx, %struct.iflib_cloneattach_ctx* %9, i32 0, i32 3
  store %struct.if_clone* %16, %struct.if_clone** %17, align 8
  %18 = getelementptr inbounds %struct.iflib_cloneattach_ctx, %struct.iflib_cloneattach_ctx* %9, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.iflib_cloneattach_ctx, %struct.iflib_cloneattach_ctx* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds %struct.iflib_cloneattach_ctx, %struct.iflib_cloneattach_ctx* %9, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i32*, i32** @iflib_pseudodev, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 @__predict_false(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = call i32 @mtx_lock(i32* @Giant)
  %30 = load i32*, i32** @root_bus, align 8
  %31 = call i8* @device_add_child(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @iflib_pseudodev, align 8
  %33 = call i32 @mtx_unlock(i32* @Giant)
  %34 = load i32*, i32** @iflib_pseudodev, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @MPASS(i32 %36)
  br label %38

38:                                               ; preds = %28, %3
  %39 = load i8*, i8** %8, align 8
  %40 = call %struct.TYPE_3__* @iflib_ip_lookup(i8* %39)
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %11, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = icmp eq %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @ENOENT, align 4
  store i32 %46, i32* %4, align 4
  br label %111

47:                                               ; preds = %38
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32* @devclass_get_device(i32 %50, i32 %51)
  store i32* %52, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** @iflib_pseudodev, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @bus_generic_print_child(i32* %57, i32* %58)
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %4, align 4
  br label %111

61:                                               ; preds = %47
  %62 = call i32 (...) @PSEUDO_LOCK()
  %63 = load i32*, i32** @iflib_pseudodev, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i8* @device_add_child(i32* %63, i8* %64, i32 %65)
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @device_set_driver(i32* %68, i32* @iflib_pseudodriver)
  %70 = call i32 (...) @PSEUDO_UNLOCK()
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @device_quiet(i32* %71)
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @device_attach(i32* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @MPASS(i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @MPASS(i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32* @devclass_get_device(i32 %85, i32 %86)
  %88 = load i32*, i32** %12, align 8
  %89 = icmp eq i32* %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @MPASS(i32 %90)
  %92 = load i32*, i32** %12, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @iflib_pseudo_register(i32* %92, i32 %95, i32* %10, %struct.iflib_cloneattach_ctx* %9)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %61
  %100 = call i32 @mtx_lock(i32* @Giant)
  %101 = load i32*, i32** @iflib_pseudodev, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @device_delete_child(i32* %101, i32* %102)
  %104 = call i32 @mtx_unlock(i32* @Giant)
  br label %109

105:                                              ; preds = %61
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @device_set_softc(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %54, %43
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i8* @ifc_name(%struct.if_clone*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.TYPE_3__* @iflib_ip_lookup(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @bus_generic_print_child(i32*, i32*) #1

declare dso_local i32 @PSEUDO_LOCK(...) #1

declare dso_local i32 @device_set_driver(i32*, i32*) #1

declare dso_local i32 @PSEUDO_UNLOCK(...) #1

declare dso_local i32 @device_quiet(i32*) #1

declare dso_local i32 @device_attach(i32*) #1

declare dso_local i32 @iflib_pseudo_register(i32*, i32, i32*, %struct.iflib_cloneattach_ctx*) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @device_set_softc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
