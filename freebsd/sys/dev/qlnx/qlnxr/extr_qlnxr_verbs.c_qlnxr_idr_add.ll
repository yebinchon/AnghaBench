; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_idr_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_idr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"idr_pre_get failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, i8*, i32)* @qlnxr_idr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_idr_add(%struct.qlnxr_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %12 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %17 = call i32 @QLNX_IS_IWARP(%struct.qlnxr_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %44, %20
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %23 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %22, i32 0, i32 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @idr_pre_get(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @QL_DPRINT11(i32* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %54

32:                                               ; preds = %21
  %33 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %34 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %33, i32 0, i32 0
  %35 = call i32 @mtx_lock(i32* %34)
  %36 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %37 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %36, i32 0, i32 1
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @idr_get_new_above(i32* %37, i8* %38, i32 %39, i32* %8)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %42 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(i32* %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %21, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %27, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, i8*, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
