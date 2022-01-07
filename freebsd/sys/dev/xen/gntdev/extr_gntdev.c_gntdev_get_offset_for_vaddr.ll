; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_get_offset_for_vaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_get_offset_for_vaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioctl_gntdev_get_offset_for_vaddr = type { i32, i32, i32 }
%struct.thread = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.gntdev_gmap*, %struct.TYPE_13__ }
%struct.gntdev_gmap = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@VM_PROT_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OBJT_MGTDEVICE = common dso_local global i64 0, align 8
@gntdev_gmap_pg_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioctl_gntdev_get_offset_for_vaddr*, %struct.thread*)* @gntdev_get_offset_for_vaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_get_offset_for_vaddr(%struct.ioctl_gntdev_get_offset_for_vaddr* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ioctl_gntdev_get_offset_for_vaddr*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gntdev_gmap*, align 8
  %14 = alloca i32, align 4
  store %struct.ioctl_gntdev_get_offset_for_vaddr* %0, %struct.ioctl_gntdev_get_offset_for_vaddr** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %15 = load %struct.thread*, %struct.thread** %5, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32* %20, i32** %7, align 8
  %21 = load %struct.ioctl_gntdev_get_offset_for_vaddr*, %struct.ioctl_gntdev_get_offset_for_vaddr** %4, align 8
  %22 = getelementptr inbounds %struct.ioctl_gntdev_get_offset_for_vaddr, %struct.ioctl_gntdev_get_offset_for_vaddr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VM_PROT_NONE, align 4
  %25 = call i32 @vm_map_lookup(i32** %7, i32 %23, i32 %24, %struct.TYPE_15__** %8, %struct.TYPE_14__** %9, i32* %10, i32* %11, i32* %12)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @KERN_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %84

31:                                               ; preds = %2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OBJT_MGTDEVICE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, @gntdev_gmap_pg_ops
  br i1 %43, label %44, label %46

44:                                               ; preds = %37, %31
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %14, align 4
  br label %79

46:                                               ; preds = %37
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %48, align 8
  store %struct.gntdev_gmap* %49, %struct.gntdev_gmap** %13, align 8
  %50 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %13, align 8
  %51 = icmp eq %struct.gntdev_gmap* %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %13, align 8
  %61 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = mul nsw i32 %62, %63
  %65 = icmp ne i32 %59, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %52, %46
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %14, align 4
  br label %79

68:                                               ; preds = %52
  %69 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %13, align 8
  %70 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ioctl_gntdev_get_offset_for_vaddr*, %struct.ioctl_gntdev_get_offset_for_vaddr** %4, align 8
  %73 = getelementptr inbounds %struct.ioctl_gntdev_get_offset_for_vaddr, %struct.ioctl_gntdev_get_offset_for_vaddr* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %13, align 8
  %75 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ioctl_gntdev_get_offset_for_vaddr*, %struct.ioctl_gntdev_get_offset_for_vaddr** %4, align 8
  %78 = getelementptr inbounds %struct.ioctl_gntdev_get_offset_for_vaddr, %struct.ioctl_gntdev_get_offset_for_vaddr* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %68, %66, %44
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = call i32 @vm_map_lookup_done(i32* %80, %struct.TYPE_15__* %81)
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %29
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @vm_map_lookup(i32**, i32, i32, %struct.TYPE_15__**, %struct.TYPE_14__**, i32*, i32*, i32*) #1

declare dso_local i32 @vm_map_lookup_done(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
