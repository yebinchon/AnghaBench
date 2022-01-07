; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"enter ha = %p qlnx_rdma_dev = %p pd_count = %d\0A\00", align 1
@QLNXR_PORT = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"exit ha = %p qlnx_rdma_dev = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @qlnxr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_remove(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.qlnxr_dev*
  store %struct.qlnxr_dev* %9, %struct.qlnxr_dev** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %16 = icmp eq %struct.qlnxr_dev* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %81

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %23 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32*, i8*, i32*, i8*, ...) @QL_DPRINT12(i32* %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %20, i8* %21, i64 %24)
  %26 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %27 = load i32, i32* @QLNXR_PORT, align 4
  %28 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %29 = call i32 @qlnxr_ib_dispatch_event(%struct.qlnxr_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %31 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %35 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @EBUSY, align 4
  store i32 %39, i32* %3, align 4
  br label %81

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %43 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %42, i32 0, i32 0
  %44 = call i32 @ib_unregister_device(i32* %43)
  %45 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %46 = call i64 @QLNX_IS_ROCE(%struct.qlnxr_dev* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %50 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @EBUSY, align 4
  store i32 %54, i32* %3, align 4
  br label %81

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %58 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %61 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ecore_rdma_remove_user(i32 %59, i32 %62)
  %64 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %65 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ecore_rdma_stop(i32 %66)
  %68 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %69 = call i32 @qlnxr_release_irqs(%struct.qlnxr_dev* %68)
  %70 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %71 = call i32 @qlnxr_free_resources(%struct.qlnxr_dev* %70)
  %72 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %73 = call i32 @qlnxr_remove_sysfiles(%struct.qlnxr_dev* %72)
  %74 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %75 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %74, i32 0, i32 0
  %76 = call i32 @ib_dealloc_device(i32* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 (i32*, i8*, i32*, i8*, ...) @QL_DPRINT12(i32* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %78, i8* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %56, %53, %38, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, i32*, i8*, ...) #1

declare dso_local i32 @qlnxr_ib_dispatch_event(%struct.qlnxr_dev*, i32, i32) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i32 @ib_unregister_device(i32*) #1

declare dso_local i64 @QLNX_IS_ROCE(%struct.qlnxr_dev*) #1

declare dso_local i32 @ecore_rdma_remove_user(i32, i32) #1

declare dso_local i32 @ecore_rdma_stop(i32) #1

declare dso_local i32 @qlnxr_release_irqs(%struct.qlnxr_dev*) #1

declare dso_local i32 @qlnxr_free_resources(%struct.qlnxr_dev*) #1

declare dso_local i32 @qlnxr_remove_sysfiles(%struct.qlnxr_dev*) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
