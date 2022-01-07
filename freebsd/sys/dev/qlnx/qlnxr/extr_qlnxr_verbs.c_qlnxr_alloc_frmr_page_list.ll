; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_alloc_frmr_page_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_alloc_frmr_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { %struct.qlnxr_fast_reg_page_list* }
%struct.qlnxr_fast_reg_page_list = type { %struct.ib_fast_reg_page_list, i32, %struct.qlnxr_dev* }
%struct.qlnxr_dev = type { i32* }
%struct.ib_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"kzalloc(frmr_list) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"frmr_list->ibfrpl.page_list = NULL failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"exit %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"exit with error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fast_reg_page_list* @qlnxr_alloc_frmr_page_list(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_fast_reg_page_list*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlnxr_fast_reg_page_list*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qlnxr_fast_reg_page_list* null, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %18 = call %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device* %17)
  store %struct.qlnxr_dev* %18, %struct.qlnxr_dev** %7, align 8
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %20 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 24, i32 %24)
  %26 = bitcast i8* %25 to %struct.qlnxr_fast_reg_page_list*
  store %struct.qlnxr_fast_reg_page_list* %26, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %27 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %28 = icmp ne %struct.qlnxr_fast_reg_page_list* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @QL_DPRINT11(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %76

32:                                               ; preds = %2
  %33 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %34 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %35 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %34, i32 0, i32 2
  store %struct.qlnxr_dev* %33, %struct.qlnxr_dev** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.qlnxr_fast_reg_page_list*
  %40 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %41 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %41, i32 0, i32 0
  store %struct.qlnxr_fast_reg_page_list* %39, %struct.qlnxr_fast_reg_page_list** %42, align 8
  %43 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %44 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %44, i32 0, i32 0
  %46 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %45, align 8
  %47 = icmp ne %struct.qlnxr_fast_reg_page_list* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @QL_DPRINT11(i32* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %73

51:                                               ; preds = %32
  %52 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %53 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %54 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %53, i32 0, i32 1
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @qlnxr_init_mr_info(%struct.qlnxr_dev* %52, i32* %54, i32 %55, i32 1)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %67

60:                                               ; preds = %51
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %63 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.ib_fast_reg_page_list* %63)
  %65 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %66 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %65, i32 0, i32 0
  store %struct.ib_fast_reg_page_list* %66, %struct.ib_fast_reg_page_list** %3, align 8
  br label %81

67:                                               ; preds = %59
  %68 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %69 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %69, i32 0, i32 0
  %71 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %70, align 8
  %72 = call i32 @kfree(%struct.qlnxr_fast_reg_page_list* %71)
  br label %73

73:                                               ; preds = %67, %48
  %74 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %6, align 8
  %75 = call i32 @kfree(%struct.qlnxr_fast_reg_page_list* %74)
  br label %76

76:                                               ; preds = %73, %29
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %9, align 4
  %80 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %79)
  store %struct.ib_fast_reg_page_list* %80, %struct.ib_fast_reg_page_list** %3, align 8
  br label %81

81:                                               ; preds = %76, %60
  %82 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %3, align 8
  ret %struct.ib_fast_reg_page_list* %82
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

declare dso_local i32 @qlnxr_init_mr_info(%struct.qlnxr_dev*, i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_fast_reg_page_list*) #1

declare dso_local %struct.ib_fast_reg_page_list* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
