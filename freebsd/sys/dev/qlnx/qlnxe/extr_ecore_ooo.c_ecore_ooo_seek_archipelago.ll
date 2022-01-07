; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_seek_archipelago.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_seek_archipelago.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ooo_archipelago = type { i32 }
%struct.ecore_ooo_info = type { i32, i32, %struct.ecore_ooo_archipelago* }

@OSAL_NULL = common dso_local global %struct.ecore_ooo_archipelago* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecore_ooo_archipelago* (%struct.ecore_ooo_info*, i32)* @ecore_ooo_seek_archipelago to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecore_ooo_archipelago* @ecore_ooo_seek_archipelago(%struct.ecore_ooo_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ecore_ooo_archipelago*, align 8
  %4 = alloca %struct.ecore_ooo_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_ooo_archipelago*, align 8
  store %struct.ecore_ooo_info* %0, %struct.ecore_ooo_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 65535
  %10 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load %struct.ecore_ooo_archipelago*, %struct.ecore_ooo_archipelago** @OSAL_NULL, align 8
  store %struct.ecore_ooo_archipelago* %20, %struct.ecore_ooo_archipelago** %3, align 8
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %22, i32 0, i32 2
  %24 = load %struct.ecore_ooo_archipelago*, %struct.ecore_ooo_archipelago** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ecore_ooo_archipelago, %struct.ecore_ooo_archipelago* %24, i64 %26
  store %struct.ecore_ooo_archipelago* %27, %struct.ecore_ooo_archipelago** %7, align 8
  %28 = load %struct.ecore_ooo_archipelago*, %struct.ecore_ooo_archipelago** %7, align 8
  %29 = getelementptr inbounds %struct.ecore_ooo_archipelago, %struct.ecore_ooo_archipelago* %28, i32 0, i32 0
  %30 = call i64 @OSAL_LIST_IS_EMPTY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load %struct.ecore_ooo_archipelago*, %struct.ecore_ooo_archipelago** @OSAL_NULL, align 8
  store %struct.ecore_ooo_archipelago* %33, %struct.ecore_ooo_archipelago** %3, align 8
  br label %36

34:                                               ; preds = %21
  %35 = load %struct.ecore_ooo_archipelago*, %struct.ecore_ooo_archipelago** %7, align 8
  store %struct.ecore_ooo_archipelago* %35, %struct.ecore_ooo_archipelago** %3, align 8
  br label %36

36:                                               ; preds = %34, %32, %19
  %37 = load %struct.ecore_ooo_archipelago*, %struct.ecore_ooo_archipelago** %3, align 8
  ret %struct.ecore_ooo_archipelago* %37
}

declare dso_local i64 @OSAL_LIST_IS_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
