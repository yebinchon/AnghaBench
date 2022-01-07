; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_destroy_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_destroy_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, i32, %struct.qlnxr_iw_listener* }
%struct.qlnxr_iw_listener = type { i64 }
%struct.qlnxr_dev = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnxr_iw_destroy_listen(%struct.iw_cm_id* %0) #0 {
  %2 = alloca %struct.iw_cm_id*, align 8
  %3 = alloca %struct.qlnxr_iw_listener*, align 8
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %2, align 8
  %7 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %8 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %7, i32 0, i32 2
  %9 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %8, align 8
  store %struct.qlnxr_iw_listener* %9, %struct.qlnxr_iw_listener** %3, align 8
  %10 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %11 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %12)
  store %struct.qlnxr_dev* %13, %struct.qlnxr_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %15 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %3, align 8
  %20 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %25 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %3, align 8
  %28 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ecore_iwarp_destroy_listen(i32 %26, i64 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %33 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %32, i32 0, i32 0
  %34 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %33, align 8
  %35 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %36 = call i32 %34(%struct.iw_cm_id* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @ecore_iwarp_destroy_listen(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
