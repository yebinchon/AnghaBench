; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_domain_get_device_by_sas_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_domain_get_device_by_sas_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }

@SCIF_LOG_OBJECT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"scif_domain_get_device_by_sas_address(0x%x, 0x%x) enter\0A\00", align 1
@SCI_INVALID_HANDLE = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @scif_domain_get_device_by_sas_address(i64 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = call i32* @sci_abstract_list_get_front(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @sci_base_object_get_logger(i64 %15)
  %17 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = ptrtoint %struct.TYPE_9__* %19 to i32
  %21 = call i32 @SCIF_LOG_TRACE(i32 %20)
  br label %22

22:                                               ; preds = %48, %2
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @sci_abstract_list_get_object(i32* %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scic_remote_device_get_sas_address(i32 %31, %struct.TYPE_9__* %9)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %3, align 8
  br label %53

48:                                               ; preds = %39, %25
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* @sci_abstract_list_get_next(i32* %49)
  store i32* %50, i32** %7, align 8
  br label %22

51:                                               ; preds = %22
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SCI_INVALID_HANDLE, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %3, align 8
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %54
}

declare dso_local i32* @sci_abstract_list_get_front(i32*) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i64 @sci_abstract_list_get_object(i32*) #1

declare dso_local i32 @scic_remote_device_get_sas_address(i32, %struct.TYPE_9__*) #1

declare dso_local i32* @sci_abstract_list_get_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
