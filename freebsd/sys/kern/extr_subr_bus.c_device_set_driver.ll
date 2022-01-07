; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_set_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_set_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.domainset = type { i32 }

@DS_ATTACHED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DF_EXTERNALSOFTC = common dso_local global i32 0, align 4
@M_BUS_SC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@null_class = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_set_driver(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.domainset*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DS_ATTACHED, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  store i32 %14, i32* %3, align 4
  br label %113

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = icmp eq %struct.TYPE_7__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %113

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DF_EXTERNALSOFTC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @M_BUS_SC, align 4
  %39 = call i32 @free_domain(i32* %37, i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %27, %22
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = call i32 @device_set_desc(%struct.TYPE_8__* %43, i32* null)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = ptrtoint %struct.TYPE_8__* %45 to i32
  %47 = call i32 @kobj_delete(i32 %46, i32* null)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %107

53:                                               ; preds = %42
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = ptrtoint %struct.TYPE_8__* %54 to i32
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = bitcast %struct.TYPE_7__* %56 to i32*
  %58 = call i32 @kobj_init(i32 %55, i32* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DF_EXTERNALSOFTC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %106, label %65

65:                                               ; preds = %53
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = call i64 @bus_get_domain(%struct.TYPE_8__* %71, i32* %6)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = call %struct.domainset* @DOMAINSET_PREF(i32 %75)
  store %struct.domainset* %76, %struct.domainset** %7, align 8
  br label %79

77:                                               ; preds = %70
  %78 = call %struct.domainset* (...) @DOMAINSET_RR()
  store %struct.domainset* %78, %struct.domainset** %7, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @M_BUS_SC, align 4
  %84 = load %struct.domainset*, %struct.domainset** %7, align 8
  %85 = load i32, i32* @M_NOWAIT, align 4
  %86 = load i32, i32* @M_ZERO, align 4
  %87 = or i32 %85, %86
  %88 = call i32* @malloc_domainset(i64 %82, i32 %83, %struct.domainset* %84, i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %79
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = ptrtoint %struct.TYPE_8__* %96 to i32
  %98 = call i32 @kobj_delete(i32 %97, i32* null)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = ptrtoint %struct.TYPE_8__* %99 to i32
  %101 = call i32 @kobj_init(i32 %100, i32* @null_class)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %103, align 8
  %104 = load i32, i32* @ENOMEM, align 4
  store i32 %104, i32* %3, align 4
  br label %113

105:                                              ; preds = %79
  br label %106

106:                                              ; preds = %105, %65, %53
  br label %111

107:                                              ; preds = %42
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = ptrtoint %struct.TYPE_8__* %108 to i32
  %110 = call i32 @kobj_init(i32 %109, i32* @null_class)
  br label %111

111:                                              ; preds = %107, %106
  %112 = call i32 (...) @bus_data_generation_update()
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %95, %21, %13
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @free_domain(i32*, i32) #1

declare dso_local i32 @device_set_desc(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @kobj_delete(i32, i32*) #1

declare dso_local i32 @kobj_init(i32, i32*) #1

declare dso_local i64 @bus_get_domain(%struct.TYPE_8__*, i32*) #1

declare dso_local %struct.domainset* @DOMAINSET_PREF(i32) #1

declare dso_local %struct.domainset* @DOMAINSET_RR(...) #1

declare dso_local i32* @malloc_domainset(i64, i32, %struct.domainset*, i32) #1

declare dso_local i32 @bus_data_generation_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
