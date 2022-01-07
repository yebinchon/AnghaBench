; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_append_dinfo_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_append_dinfo_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { i32, %struct.siba_addrspace* }
%struct.siba_addrspace = type { i32, i32, i32, i32 }

@UINT32_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siba_devinfo*, i64, i32, i32, i32)* @siba_append_dinfo_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siba_append_dinfo_region(%struct.siba_devinfo* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.siba_devinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.siba_addrspace*, align 8
  %13 = alloca i32, align 4
  store %struct.siba_devinfo* %0, %struct.siba_devinfo** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i32, i32* @UINT32_MAX, align 4
  %18 = load i32, i32* %10, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sub nsw i32 %17, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ERANGE, align 4
  store i32 %24, i32* %6, align 4
  br label %75

25:                                               ; preds = %16, %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ERANGE, align 4
  store i32 %30, i32* %6, align 4
  br label %75

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %6, align 4
  br label %75

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %39 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %38, i32 0, i32 1
  %40 = load %struct.siba_addrspace*, %struct.siba_addrspace** %39, align 8
  %41 = call i64 @nitems(%struct.siba_addrspace* %40)
  %42 = icmp uge i64 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %6, align 4
  br label %75

45:                                               ; preds = %36
  %46 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %47 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %46, i32 0, i32 1
  %48 = load %struct.siba_addrspace*, %struct.siba_addrspace** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %48, i64 %49
  store %struct.siba_addrspace* %50, %struct.siba_addrspace** %12, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.siba_addrspace*, %struct.siba_addrspace** %12, align 8
  %53 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.siba_addrspace*, %struct.siba_addrspace** %12, align 8
  %56 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.siba_addrspace*, %struct.siba_addrspace** %12, align 8
  %59 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %13, align 4
  %63 = load %struct.siba_devinfo*, %struct.siba_devinfo** %7, align 8
  %64 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %63, i32 0, i32 0
  %65 = load i32, i32* @SYS_RES_MEMORY, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %68, 1
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @resource_list_add_next(i32* %64, i32 %65, i32 %66, i32 %70, i32 %71)
  %73 = load %struct.siba_addrspace*, %struct.siba_addrspace** %12, align 8
  %74 = getelementptr inbounds %struct.siba_addrspace, %struct.siba_addrspace* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %45, %43, %34, %29, %23
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i64 @nitems(%struct.siba_addrspace*) #1

declare dso_local i32 @resource_list_add_next(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
