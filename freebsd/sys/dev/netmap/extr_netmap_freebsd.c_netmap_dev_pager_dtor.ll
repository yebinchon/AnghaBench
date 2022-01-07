; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_dev_pager_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_dev_pager_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_vm_handle_t = type { %struct.netmap_priv_d*, %struct.cdev* }
%struct.netmap_priv_d = type { i32 }
%struct.cdev = type { i32 }

@netmap_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"handle %p\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @netmap_dev_pager_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_dev_pager_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netmap_vm_handle_t*, align 8
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.netmap_priv_d*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.netmap_vm_handle_t*
  store %struct.netmap_vm_handle_t* %7, %struct.netmap_vm_handle_t** %3, align 8
  %8 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %3, align 8
  %9 = getelementptr inbounds %struct.netmap_vm_handle_t, %struct.netmap_vm_handle_t* %8, i32 0, i32 1
  %10 = load %struct.cdev*, %struct.cdev** %9, align 8
  store %struct.cdev* %10, %struct.cdev** %4, align 8
  %11 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %3, align 8
  %12 = getelementptr inbounds %struct.netmap_vm_handle_t, %struct.netmap_vm_handle_t* %11, i32 0, i32 0
  %13 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %12, align 8
  store %struct.netmap_priv_d* %13, %struct.netmap_priv_d** %5, align 8
  %14 = load i64, i64* @netmap_verbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @nm_prinf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %21 = call i32 @netmap_dtor(%struct.netmap_priv_d* %20)
  %22 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %3, align 8
  %23 = load i32, i32* @M_DEVBUF, align 4
  %24 = call i32 @free(%struct.netmap_vm_handle_t* %22, i32 %23)
  %25 = load %struct.cdev*, %struct.cdev** %4, align 8
  %26 = call i32 @dev_rel(%struct.cdev* %25)
  ret void
}

declare dso_local i32 @nm_prinf(i8*, i8*) #1

declare dso_local i32 @netmap_dtor(%struct.netmap_priv_d*) #1

declare dso_local i32 @free(%struct.netmap_vm_handle_t*, i32) #1

declare dso_local i32 @dev_rel(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
