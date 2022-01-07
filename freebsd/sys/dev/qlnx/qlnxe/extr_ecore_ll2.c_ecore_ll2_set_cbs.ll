; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_set_cbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_set_cbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ll2_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i64, i64, i64 }
%struct.ecore_ll2_cbs = type { i64, i32, i64, i64, i64, i64 }

@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_ll2_info*, %struct.ecore_ll2_cbs*)* @ecore_ll2_set_cbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_ll2_set_cbs(%struct.ecore_ll2_info* %0, %struct.ecore_ll2_cbs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_ll2_info*, align 8
  %5 = alloca %struct.ecore_ll2_cbs*, align 8
  store %struct.ecore_ll2_info* %0, %struct.ecore_ll2_info** %4, align 8
  store %struct.ecore_ll2_cbs* %1, %struct.ecore_ll2_cbs** %5, align 8
  %6 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %7 = icmp ne %struct.ecore_ll2_cbs* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %25 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %23, %18, %13, %8, %2
  %34 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %28
  %36 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %37 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %40 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  store i64 %38, i64* %41, align 8
  %42 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %43 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %46 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i64 %44, i64* %47, align 8
  %48 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %49 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %52 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i64 %50, i64* %53, align 8
  %54 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %55 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %58 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  %60 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %61 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %64 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.ecore_ll2_cbs*, %struct.ecore_ll2_cbs** %5, align 8
  %67 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %70 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %35, %33
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
