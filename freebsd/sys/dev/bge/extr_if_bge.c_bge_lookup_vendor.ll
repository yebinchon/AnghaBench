; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_lookup_vendor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_lookup_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_vendor = type { i64, i32* }

@bge_vendors = common dso_local global %struct.bge_vendor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bge_vendor* (i64)* @bge_lookup_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bge_vendor* @bge_lookup_vendor(i64 %0) #0 {
  %2 = alloca %struct.bge_vendor*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bge_vendor*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.bge_vendor*, %struct.bge_vendor** @bge_vendors, align 8
  store %struct.bge_vendor* %5, %struct.bge_vendor** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.bge_vendor*, %struct.bge_vendor** %4, align 8
  %8 = getelementptr inbounds %struct.bge_vendor, %struct.bge_vendor* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load %struct.bge_vendor*, %struct.bge_vendor** %4, align 8
  %13 = getelementptr inbounds %struct.bge_vendor, %struct.bge_vendor* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.bge_vendor*, %struct.bge_vendor** %4, align 8
  store %struct.bge_vendor* %18, %struct.bge_vendor** %2, align 8
  br label %24

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.bge_vendor*, %struct.bge_vendor** %4, align 8
  %22 = getelementptr inbounds %struct.bge_vendor, %struct.bge_vendor* %21, i32 1
  store %struct.bge_vendor* %22, %struct.bge_vendor** %4, align 8
  br label %6

23:                                               ; preds = %6
  store %struct.bge_vendor* null, %struct.bge_vendor** %2, align 8
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.bge_vendor*, %struct.bge_vendor** %2, align 8
  ret %struct.bge_vendor* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
