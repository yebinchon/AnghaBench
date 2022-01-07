; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_dump_qset_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_dump_qset_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_qset_params = type { i32, i32*, i32, i32*, i32, i32, i32, i64 }

@CHELSIO_GET_QSET_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Qset   TxQ0   TxQ1   TxQ2   RspQ   RxQ0   RxQ1  Cong  Lat   IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%4u %6u %6u %6u %6u %6u %6u %5u %4u %5d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"get qset parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dump_qset_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_qset_params(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ch_qset_params, align 8
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 7
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @CHELSIO_GET_QSET_PARAMS, align 4
  %8 = call i64 @doit(i8* %6, i32 %7, %struct.ch_qset_params* %3)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %22, i32 %26, i32 %30, i32 %32, i32 %36, i32 %40, i32 %42, i32 %44, i32 %46)
  %48 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  br label %5

51:                                               ; preds = %5
  %52 = getelementptr inbounds %struct.ch_qset_params, %struct.ch_qset_params* %3, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i64, i64* @errno, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EINVAL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %51
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58, %55
  ret i32 0
}

declare dso_local i64 @doit(i8*, i32, %struct.ch_qset_params*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
