; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pccard_ivar = type { i32 }
%struct.resource_list_entry = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Allocated resource not found, %d %#x %#jx %#jx\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Allocated resource not recorded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @pccard_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.pccard_ivar*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %13, align 4
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %14, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @device_get_parent(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.resource*, %struct.resource** %11, align 8
  %29 = call i32 @BUS_RELEASE_RESOURCE(i32 %24, i32 %25, i32 %26, i32 %27, %struct.resource* %28)
  store i32 %29, i32* %6, align 4
  br label %73

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.pccard_ivar* @device_get_ivars(i32 %31)
  store %struct.pccard_ivar* %32, %struct.pccard_ivar** %12, align 8
  %33 = load %struct.pccard_ivar*, %struct.pccard_ivar** %12, align 8
  %34 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.resource_list_entry* @resource_list_find(i32* %34, i32 %35, i32 %36)
  store %struct.resource_list_entry* %37, %struct.resource_list_entry** %14, align 8
  %38 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %39 = icmp ne %struct.resource_list_entry* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.resource*, %struct.resource** %11, align 8
  %45 = call i32 @rman_get_start(%struct.resource* %44)
  %46 = load %struct.resource*, %struct.resource** %11, align 8
  %47 = call i32 @rman_get_size(%struct.resource* %46)
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %45, i32 %47)
  %49 = load i32, i32* @ENOENT, align 4
  store i32 %49, i32* %6, align 4
  br label %73

50:                                               ; preds = %30
  %51 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %52 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENOENT, align 4
  store i32 %58, i32* %6, align 4
  br label %73

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %65 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @BUS_DEACTIVATE_RESOURCE(i32 %60, i32 %61, i32 %62, i32 %63, i32 %66)
  %68 = load %struct.resource_list_entry*, %struct.resource_list_entry** %14, align 8
  %69 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @rman_set_device(i32 %70, i32 %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %59, %55, %40, %22
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @BUS_RELEASE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local %struct.pccard_ivar* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_device(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
