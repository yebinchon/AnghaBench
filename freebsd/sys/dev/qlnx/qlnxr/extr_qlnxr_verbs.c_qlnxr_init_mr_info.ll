; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_init_mr_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_init_mr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.mr_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlnxr_pbl = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"qlnxr_prepare_pbl_tbl [%d]\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"qlnxr_alloc_pbl_tbl returned NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"pbl_table_pa = %pa\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Extra PBL is not allocated\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"extra pbl_table_pa = %pa\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.mr_info*, i64, i32)* @qlnxr_init_mr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_init_mr_info(%struct.qlnxr_dev* %0, %struct.mr_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.mr_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlnxr_pbl*, align 8
  %11 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store %struct.mr_info* %1, %struct.mr_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %13 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %18 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %17, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %21 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %20, i32 0, i32 3
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %24 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %25 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %24, i32 0, i32 1
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @qlnxr_prepare_pbl_tbl(%struct.qlnxr_dev* %23, i32* %25, i64 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %81

35:                                               ; preds = %4
  %36 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %37 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %38 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %37, i32 0, i32 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @qlnxr_alloc_pbl_tbl(%struct.qlnxr_dev* %36, i32* %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_2__*
  %42 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %43 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %42, i32 0, i32 2
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %45 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %81

53:                                               ; preds = %35
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %56 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %58)
  %60 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %61 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %62 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %61, i32 0, i32 1
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @qlnxr_alloc_pbl_tbl(%struct.qlnxr_dev* %60, i32* %62, i32 %63)
  %65 = bitcast i8* %64 to %struct.qlnxr_pbl*
  store %struct.qlnxr_pbl* %65, %struct.qlnxr_pbl** %10, align 8
  %66 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %10, align 8
  %67 = icmp ne %struct.qlnxr_pbl* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %53
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %81

71:                                               ; preds = %53
  %72 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %10, align 8
  %73 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %72, i32 0, i32 1
  %74 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %75 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %74, i32 0, i32 0
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.qlnxr_pbl*, %struct.qlnxr_pbl** %10, align 8
  %79 = getelementptr inbounds %struct.qlnxr_pbl, %struct.qlnxr_pbl* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %79)
  br label %81

81:                                               ; preds = %71, %68, %48, %31
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %86 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %87 = call i32 @free_mr_info(%struct.qlnxr_dev* %85, %struct.mr_info* %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qlnxr_prepare_pbl_tbl(%struct.qlnxr_dev*, i32*, i64, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, ...) #1

declare dso_local i8* @qlnxr_alloc_pbl_tbl(%struct.qlnxr_dev*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @free_mr_info(%struct.qlnxr_dev*, %struct.mr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
