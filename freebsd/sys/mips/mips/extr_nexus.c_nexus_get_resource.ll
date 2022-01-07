; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_get_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexus_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32*)* @nexus_get_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_get_resource(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nexus_device*, align 8
  %15 = alloca %struct.resource_list*, align 8
  %16 = alloca %struct.resource_list_entry*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.nexus_device* @DEVTONX(i32 %17)
  store %struct.nexus_device* %18, %struct.nexus_device** %14, align 8
  %19 = load %struct.nexus_device*, %struct.nexus_device** %14, align 8
  %20 = getelementptr inbounds %struct.nexus_device, %struct.nexus_device* %19, i32 0, i32 0
  store %struct.resource_list* %20, %struct.resource_list** %15, align 8
  %21 = load %struct.resource_list*, %struct.resource_list** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %21, i32 %22, i32 %23)
  store %struct.resource_list_entry* %24, %struct.resource_list_entry** %16, align 8
  %25 = load %struct.resource_list_entry*, %struct.resource_list_entry** %16, align 8
  %26 = icmp ne %struct.resource_list_entry* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %7, align 4
  br label %46

29:                                               ; preds = %6
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.resource_list_entry*, %struct.resource_list_entry** %16, align 8
  %34 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.resource_list_entry*, %struct.resource_list_entry** %16, align 8
  %42 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %37
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.nexus_device* @DEVTONX(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
