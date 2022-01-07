; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.netmap_vm_handle_t = type { %struct.netmap_priv_d*, %struct.cdev* }
%struct.netmap_priv_d = type { i32, i32* }

@netmap_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"cdev %p foff %jd size %jd objp %p prot %d\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OBJT_DEVICE = common dso_local global i32 0, align 4
@netmap_cdev_pager_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cdev_pager_allocate failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64*, i64, i32**, i32)* @netmap_mmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mmap_single(%struct.cdev* %0, i64* %1, i64 %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netmap_vm_handle_t*, align 8
  %14 = alloca %struct.netmap_priv_d*, align 8
  %15 = alloca i32*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* @netmap_verbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.cdev*, %struct.cdev** %7, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32**, i32*** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @nm_prinf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.cdev* %19, i32 %22, i32 %24, i32** %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %5
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.netmap_vm_handle_t* @malloc(i32 16, i32 %29, i32 %32)
  store %struct.netmap_vm_handle_t* %33, %struct.netmap_vm_handle_t** %13, align 8
  %34 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %13, align 8
  %35 = icmp eq %struct.netmap_vm_handle_t* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %6, align 4
  br label %91

38:                                               ; preds = %28
  %39 = load %struct.cdev*, %struct.cdev** %7, align 8
  %40 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %13, align 8
  %41 = getelementptr inbounds %struct.netmap_vm_handle_t, %struct.netmap_vm_handle_t* %40, i32 0, i32 1
  store %struct.cdev* %39, %struct.cdev** %41, align 8
  %42 = call i32 (...) @NMG_LOCK()
  %43 = bitcast %struct.netmap_priv_d** %14 to i8**
  %44 = call i32 @devfs_get_cdevpriv(i8** %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %85

48:                                               ; preds = %38
  %49 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %14, align 8
  %50 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %12, align 4
  br label %85

55:                                               ; preds = %48
  %56 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %14, align 8
  %57 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %13, align 8
  %58 = getelementptr inbounds %struct.netmap_vm_handle_t, %struct.netmap_vm_handle_t* %57, i32 0, i32 0
  store %struct.netmap_priv_d* %56, %struct.netmap_priv_d** %58, align 8
  %59 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %14, align 8
  %60 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = call i32 (...) @NMG_UNLOCK()
  %64 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %13, align 8
  %65 = load i32, i32* @OBJT_DEVICE, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i64*, i64** %8, align 8
  %69 = load i64, i64* %68, align 8
  %70 = call i32* @cdev_pager_allocate(%struct.netmap_vm_handle_t* %64, i32 %65, i32* @netmap_cdev_pager_ops, i64 %66, i32 %67, i64 %69, i32* null)
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = call i32 @nm_prerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %12, align 4
  br label %79

76:                                               ; preds = %55
  %77 = load i32*, i32** %15, align 8
  %78 = load i32**, i32*** %10, align 8
  store i32* %77, i32** %78, align 8
  store i32 0, i32* %6, align 4
  br label %91

79:                                               ; preds = %73
  %80 = call i32 (...) @NMG_LOCK()
  %81 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %14, align 8
  %82 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %53, %47
  %86 = call i32 (...) @NMG_UNLOCK()
  %87 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %13, align 8
  %88 = load i32, i32* @M_DEVBUF, align 4
  %89 = call i32 @free(%struct.netmap_vm_handle_t* %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %85, %76, %36
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @nm_prinf(i8*, %struct.cdev*, i32, i32, i32**, i32) #1

declare dso_local %struct.netmap_vm_handle_t* @malloc(i32, i32, i32) #1

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

declare dso_local i32* @cdev_pager_allocate(%struct.netmap_vm_handle_t*, i32, i32*, i64, i32, i64, i32*) #1

declare dso_local i32 @nm_prerr(i8*) #1

declare dso_local i32 @free(%struct.netmap_vm_handle_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
