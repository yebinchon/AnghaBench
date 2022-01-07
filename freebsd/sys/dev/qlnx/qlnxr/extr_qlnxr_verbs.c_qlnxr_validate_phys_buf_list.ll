; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_validate_phys_buf_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_validate_phys_buf_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_phys_buf = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"failed buf_list = %p buf_cnt = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"failed buf_list = %p buf_cnt = %d buf_list->size = 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"failed buf_list = %p buf_cnt = %d all buffers should have same size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ib_phys_buf*, i32, i64*)* @qlnxr_validate_phys_buf_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_validate_phys_buf_list(i32* %0, %struct.ib_phys_buf* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ib_phys_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ib_phys_buf* %1, %struct.ib_phys_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %16 = icmp eq %struct.ib_phys_buf* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14, %4
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @QL_DPRINT11(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.ib_phys_buf* %19, i32 %20)
  store i32 -1, i32* %5, align 4
  br label %60

22:                                               ; preds = %14
  %23 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %24 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @QL_DPRINT11(i32* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.ib_phys_buf* %30, i32 %31)
  store i32 -1, i32* %5, align 4
  br label %60

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %39 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %40
  store i64 %43, i64* %41, align 8
  %44 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %45 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @QL_DPRINT11(i32* %50, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), %struct.ib_phys_buf* %51, i32 %52)
  store i32 -1, i32* %5, align 4
  br label %60

54:                                               ; preds = %37
  %55 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %7, align 8
  %56 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %55, i32 1
  store %struct.ib_phys_buf* %56, %struct.ib_phys_buf** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  br label %34

59:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %49, %28, %17
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @QL_DPRINT11(i32*, i8*, %struct.ib_phys_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
