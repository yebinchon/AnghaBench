; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"exit rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_ll2_stop(%struct.qlnxr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %3, align 8
  %5 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %10 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %19 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @qlnx_rdma_ll2_set_mac_filter(i32 %17, i32 %20, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %23 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ecore_ll2_terminate_connection(i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %30 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %33 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ecore_ll2_release_connection(i32 %31, i32 %34)
  %36 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %37 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %36, i32 0, i32 0
  store i32 255, i32* %37, align 4
  %38 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %39 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %14, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @QL_DPRINT12(i32, i8*, ...) #1

declare dso_local i32 @qlnx_rdma_ll2_set_mac_filter(i32, i32, i32*) #1

declare dso_local i32 @ecore_ll2_terminate_connection(i32, i32) #1

declare dso_local i32 @ecore_ll2_release_connection(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
