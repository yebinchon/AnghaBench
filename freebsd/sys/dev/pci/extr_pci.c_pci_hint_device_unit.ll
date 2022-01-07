; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_hint_device_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_hint_device_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"pci%u:%u:%u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pci%u:%u:%u:%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32*)* @pci_hint_device_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_hint_device_unit(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [24 x i8], align 16
  %13 = alloca [32 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pci_get_domain(i32 %18)
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @pci_get_bus(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pci_get_slot(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pci_get_function(i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i32 (i8*, i32, i8*, i32, i32, i32, ...) @snprintf(i8* %26, i32 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 (i8*, i32, i8*, i32, i32, i32, ...) @snprintf(i8* %31, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %54, %4
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @resource_find_dev(i32* %9, i8* %38, i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @resource_string_value(i8* %42, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %11)
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %37

55:                                               ; preds = %49, %41
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %37
  ret void
}

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i64 @resource_find_dev(i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @resource_string_value(i8*, i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
