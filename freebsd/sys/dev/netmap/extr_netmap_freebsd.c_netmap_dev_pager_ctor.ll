; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_dev_pager_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_dev_pager_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.netmap_vm_handle_t = type { i32 }

@netmap_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"handle %p size %jd prot %d foff %jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i64, %struct.ucred*, i64*)* @netmap_dev_pager_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_dev_pager_ctor(i8* %0, i64 %1, i32 %2, i64 %3, %struct.ucred* %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.netmap_vm_handle_t*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.ucred* %4, %struct.ucred** %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.netmap_vm_handle_t*
  store %struct.netmap_vm_handle_t* %15, %struct.netmap_vm_handle_t** %13, align 8
  %16 = load i64, i64* @netmap_verbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %6
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %9, align 4
  %23 = load i64, i64* %10, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @nm_prinf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %18, %6
  %27 = load i64*, i64** %12, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64*, i64** %12, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %13, align 8
  %33 = getelementptr inbounds %struct.netmap_vm_handle_t, %struct.netmap_vm_handle_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_ref(i32 %34)
  ret i32 0
}

declare dso_local i32 @nm_prinf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
