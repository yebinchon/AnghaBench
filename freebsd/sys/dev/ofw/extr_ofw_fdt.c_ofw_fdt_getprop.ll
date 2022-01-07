; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_fdt.c_ofw_fdt_getprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_fdt.c_ofw_fdt_getprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fdtbootcpu\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fdtmemreserv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i64)* @ofw_fdt_getprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_fdt_getprop(i32 %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @fdt_phandle_offset(i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %89

22:                                               ; preds = %5
  %23 = load i64, i64* @fdtp, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @fdt_getprop(i64 %23, i32 %24, i8* %25, i32* %14)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i64, i64* @fdtp, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i8* @fdt_get_name(i64 %34, i32 %35, i32* %14)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @strncpy(i8* %37, i8* %38, i64 %39)
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %89

43:                                               ; preds = %29, %22
  %44 = load i8*, i8** %12, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = load i64, i64* @fdtp, align 8
  %49 = call i32 @fdt_path_offset(i64 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i64, i64* @fdtp, align 8
  %57 = call i32 @fdt_boot_cpuid_phys(i64 %56)
  %58 = call i32 @cpu_to_fdt32(i32 %57)
  store i32 %58, i32* %16, align 4
  store i32 4, i32* %14, align 4
  %59 = bitcast i32* %16 to i8*
  store i8* %59, i8** %12, align 8
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i64, i64* @fdtp, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load i64, i64* @fdtp, align 8
  %68 = call i32 @fdt_off_mem_rsvmap(i64 %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8* %70, i8** %12, align 8
  %71 = load i64, i64* @fdtp, align 8
  %72 = call i32 @fdt_num_mem_rsv(i64 %71)
  %73 = sext i32 %72 to i64
  %74 = mul i64 8, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %64, %60
  br label %77

77:                                               ; preds = %76, %46, %43
  %78 = load i8*, i8** %12, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 -1, i32* %6, align 4
  br label %89

81:                                               ; preds = %77
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @min(i32 %84, i64 %85)
  %87 = call i32 @bcopy(i8* %82, i8* %83, i32 %86)
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %80, %33, %21
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @fdt_phandle_offset(i32) #1

declare dso_local i8* @fdt_getprop(i64, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @fdt_get_name(i64, i32, i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @fdt_path_offset(i64, i8*) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @fdt_boot_cpuid_phys(i64) #1

declare dso_local i32 @fdt_off_mem_rsvmap(i64) #1

declare dso_local i32 @fdt_num_mem_rsv(i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
