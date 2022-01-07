; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_parse_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcicfg_iov = type { i32 }
%struct.pci_iov_arg = type { i32, i32 }

@pci_iov_max_config = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@M_SRIOV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NV_FLAG_IGNORE_CASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcicfg_iov*, %struct.pci_iov_arg*, i32**)* @pci_iov_parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_parse_config(%struct.pcicfg_iov* %0, %struct.pci_iov_arg* %1, i32** %2) #0 {
  %4 = alloca %struct.pcicfg_iov*, align 8
  %5 = alloca %struct.pci_iov_arg*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.pcicfg_iov* %0, %struct.pcicfg_iov** %4, align 8
  store %struct.pci_iov_arg* %1, %struct.pci_iov_arg** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.pci_iov_arg*, %struct.pci_iov_arg** %5, align 8
  %11 = getelementptr inbounds %struct.pci_iov_arg, %struct.pci_iov_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @pci_iov_max_config, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EMSGSIZE, align 4
  store i32 %16, i32* %9, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load %struct.pci_iov_arg*, %struct.pci_iov_arg** %5, align 8
  %19 = getelementptr inbounds %struct.pci_iov_arg, %struct.pci_iov_arg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @M_SRIOV, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = call i8* @malloc(i32 %20, i32 %21, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.pci_iov_arg*, %struct.pci_iov_arg** %5, align 8
  %25 = getelementptr inbounds %struct.pci_iov_arg, %struct.pci_iov_arg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.pci_iov_arg*, %struct.pci_iov_arg** %5, align 8
  %29 = getelementptr inbounds %struct.pci_iov_arg, %struct.pci_iov_arg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @copyin(i32 %26, i8* %27, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  br label %64

35:                                               ; preds = %17
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.pci_iov_arg*, %struct.pci_iov_arg** %5, align 8
  %38 = getelementptr inbounds %struct.pci_iov_arg, %struct.pci_iov_arg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %41 = call i32* @nvlist_unpack(i8* %36, i32 %39, i32 %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %9, align 4
  br label %64

46:                                               ; preds = %35
  %47 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %4, align 8
  %48 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @pci_iov_schema_validate_config(i32 %49, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %64

55:                                               ; preds = %46
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @nvlist_error(i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %64

61:                                               ; preds = %55
  %62 = load i32*, i32** %8, align 8
  %63 = load i32**, i32*** %6, align 8
  store i32* %62, i32** %63, align 8
  store i32* null, i32** %8, align 8
  br label %64

64:                                               ; preds = %61, %60, %54, %44, %34, %15
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @nvlist_destroy(i32* %65)
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @M_SRIOV, align 4
  %69 = call i32 @free(i8* %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i32* @nvlist_unpack(i8*, i32, i32) #1

declare dso_local i32 @pci_iov_schema_validate_config(i32, i32*) #1

declare dso_local i32 @nvlist_error(i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
