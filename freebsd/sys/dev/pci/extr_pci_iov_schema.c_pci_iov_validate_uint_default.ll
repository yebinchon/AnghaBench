; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_validate_uint_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov_schema.c_pci_iov_validate_uint_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_type_validator = type { i64 }

@DEFAULT_SCHEMA_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_type_validator*, i32*)* @pci_iov_validate_uint_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_validate_uint_default(%struct.config_type_validator* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_type_validator*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.config_type_validator* %0, %struct.config_type_validator** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @DEFAULT_SCHEMA_NAME, align 4
  %9 = call i32 @nvlist_exists_number(i32* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @DEFAULT_SCHEMA_NAME, align 4
  %16 = call i64 @nvlist_get_number(i32* %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.config_type_validator*, %struct.config_type_validator** %4, align 8
  %19 = getelementptr inbounds %struct.config_type_validator, %struct.config_type_validator* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %22, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @nvlist_exists_number(i32*, i32) #1

declare dso_local i64 @nvlist_get_number(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
