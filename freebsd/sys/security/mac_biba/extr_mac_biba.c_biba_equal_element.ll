; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_equal_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_equal_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_biba_element = type { i64, i64 }

@MAC_BIBA_TYPE_EQUAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_biba_element*, %struct.mac_biba_element*)* @biba_equal_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_equal_element(%struct.mac_biba_element* %0, %struct.mac_biba_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_biba_element*, align 8
  %5 = alloca %struct.mac_biba_element*, align 8
  store %struct.mac_biba_element* %0, %struct.mac_biba_element** %4, align 8
  store %struct.mac_biba_element* %1, %struct.mac_biba_element** %5, align 8
  %6 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %7 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAC_BIBA_TYPE_EQUAL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.mac_biba_element*, %struct.mac_biba_element** %5, align 8
  %13 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAC_BIBA_TYPE_EQUAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 1, i32* %3, align 4
  br label %37

18:                                               ; preds = %11
  %19 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %20 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mac_biba_element*, %struct.mac_biba_element** %5, align 8
  %23 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.mac_biba_element*, %struct.mac_biba_element** %4, align 8
  %28 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mac_biba_element*, %struct.mac_biba_element** %5, align 8
  %31 = getelementptr inbounds %struct.mac_biba_element, %struct.mac_biba_element* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br label %34

34:                                               ; preds = %26, %18
  %35 = phi i1 [ false, %18 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
