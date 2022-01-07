; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_fdt.c_ofw_fdt_getproplen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_fdt.c_ofw_fdt_getproplen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fdtbootcpu\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fdtmemreserv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ofw_fdt_getproplen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_fdt_getproplen(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @fdt_phandle_offset(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  store i32 -1, i32* %10, align 4
  %17 = load i32, i32* @fdtp, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @fdt_getprop(i32 %17, i32 %18, i8* %19, i32* %10)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @fdtp, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @fdt_get_name(i32 %28, i32 %29, i32* %10)
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %23, %16
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @fdtp, align 4
  %39 = call i32 @fdt_path_offset(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 4, i32* %4, align 4
  br label %63

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @fdtp, align 4
  %52 = call i32 @fdt_num_mem_rsv(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %63

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %36, %33
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %60, %50, %45, %27, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @fdt_phandle_offset(i32) #1

declare dso_local i8* @fdt_getprop(i32, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fdt_get_name(i32, i32, i32*) #1

declare dso_local i32 @fdt_path_offset(i32, i8*) #1

declare dso_local i32 @fdt_num_mem_rsv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
