; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_validate_param_schema.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_validate_param_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_type_validator = type { i32 (%struct.config_type_validator*, i32*)* }

@TYPE_SCHEMA_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEFAULT_SCHEMA_NAME = common dso_local global i32 0, align 4
@REQUIRED_SCHEMA_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pci_iov_validate_param_schema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_validate_param_schema(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.config_type_validator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @TYPE_SCHEMA_NAME, align 4
  %9 = call i32 @nvlist_exists_string(i32* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @TYPE_SCHEMA_NAME, align 4
  %16 = call i8* @nvlist_get_string(i32* %14, i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.config_type_validator* @pci_iov_schema_find_validator(i8* %17)
  store %struct.config_type_validator* %18, %struct.config_type_validator** %4, align 8
  %19 = load %struct.config_type_validator*, %struct.config_type_validator** %4, align 8
  %20 = icmp eq %struct.config_type_validator* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %61

23:                                               ; preds = %13
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @DEFAULT_SCHEMA_NAME, align 4
  %26 = call i64 @nvlist_exists(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.config_type_validator*, %struct.config_type_validator** %4, align 8
  %30 = getelementptr inbounds %struct.config_type_validator, %struct.config_type_validator* %29, i32 0, i32 0
  %31 = load i32 (%struct.config_type_validator*, i32*)*, i32 (%struct.config_type_validator*, i32*)** %30, align 8
  %32 = load %struct.config_type_validator*, %struct.config_type_validator** %4, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 %31(%struct.config_type_validator* %32, i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %28
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @REQUIRED_SCHEMA_NAME, align 4
  %42 = call i64 @nvlist_exists(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @REQUIRED_SCHEMA_NAME, align 4
  %50 = call i64 @nvlist_exists(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @REQUIRED_SCHEMA_NAME, align 4
  %55 = call i32 @nvlist_exists_bool(i32* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %47
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %57, %44, %37, %21, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @nvlist_exists_string(i32*, i32) #1

declare dso_local i8* @nvlist_get_string(i32*, i32) #1

declare dso_local %struct.config_type_validator* @pci_iov_schema_find_validator(i8*) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @nvlist_exists_bool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
