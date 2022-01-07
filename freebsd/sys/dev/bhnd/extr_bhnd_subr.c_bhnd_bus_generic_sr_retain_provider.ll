; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_sr_retain_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_sr_retain_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_service_registry = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"NULL service registry\00", align 1
@BHND_SPF_INHERITED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to register service provider: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bhnd_bus_generic_sr_retain_provider(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhnd_service_registry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.bhnd_service_registry* @BHND_BUS_GET_SERVICE_REGISTRY(i32* %12, i32* %13)
  store %struct.bhnd_service_registry* %14, %struct.bhnd_service_registry** %8, align 8
  %15 = load %struct.bhnd_service_registry*, %struct.bhnd_service_registry** %8, align 8
  %16 = icmp ne %struct.bhnd_service_registry* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %3, %57, %62
  %20 = load %struct.bhnd_service_registry*, %struct.bhnd_service_registry** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32* @bhnd_service_registry_retain(%struct.bhnd_service_registry* %20, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32*, i32** %10, align 8
  store i32* %26, i32** %4, align 8
  br label %63

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @device_get_parent(i32* %28)
  store i32* %29, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32* null, i32** %4, align 8
  br label %63

32:                                               ; preds = %27
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32* @BHND_BUS_RETAIN_PROVIDER(i32* %33, i32* %34, i32 %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32* null, i32** %4, align 8
  br label %63

40:                                               ; preds = %32
  %41 = load %struct.bhnd_service_registry*, %struct.bhnd_service_registry** %8, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @BHND_SPF_INHERITED, align 4
  %45 = call i32 @bhnd_service_registry_add(%struct.bhnd_service_registry* %41, i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @BHND_BUS_RELEASE_PROVIDER(i32* %49, i32* %50, i32* %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @EEXIST, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %19

58:                                               ; preds = %48
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @device_printf(i32* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32* null, i32** %4, align 8
  br label %63

62:                                               ; preds = %40
  br label %19

63:                                               ; preds = %58, %39, %31, %25
  %64 = load i32*, i32** %4, align 8
  ret i32* %64
}

declare dso_local %struct.bhnd_service_registry* @BHND_BUS_GET_SERVICE_REGISTRY(i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @bhnd_service_registry_retain(%struct.bhnd_service_registry*, i32) #1

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32* @BHND_BUS_RETAIN_PROVIDER(i32*, i32*, i32) #1

declare dso_local i32 @bhnd_service_registry_add(%struct.bhnd_service_registry*, i32*, i32, i32) #1

declare dso_local i32 @BHND_BUS_RELEASE_PROVIDER(i32*, i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
