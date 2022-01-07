; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_bind_isrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_bind_isrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s: xen_intr_bind_isrc: Bad event handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@XEN_ALLOCATE_VECTOR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@xen_intr_port_to_isrc = common dso_local global %struct.xenisrc** null, align 8
@EVTCHN_TYPE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenisrc**, i64, i32, i8*, i32*, i32*, i8*, i32, i32**)* @xen_intr_bind_isrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_intr_bind_isrc(%struct.xenisrc** %0, i64 %1, i32 %2, i8* %3, i32* %4, i32* %5, i8* %6, i32 %7, i32** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.xenisrc**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca %struct.xenisrc*, align 8
  %21 = alloca i32, align 4
  store %struct.xenisrc** %0, %struct.xenisrc*** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32** %8, i32*** %19, align 8
  %22 = load %struct.xenisrc**, %struct.xenisrc*** %11, align 8
  store %struct.xenisrc* null, %struct.xenisrc** %22, align 8
  %23 = load i32**, i32*** %19, align 8
  %24 = icmp eq i32** %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %9
  %26 = load i8*, i8** %14, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %10, align 4
  br label %86

29:                                               ; preds = %9
  %30 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.xenisrc* @xen_intr_find_unused_isrc(i32 %31)
  store %struct.xenisrc* %32, %struct.xenisrc** %20, align 8
  %33 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %34 = icmp eq %struct.xenisrc* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @XEN_ALLOCATE_VECTOR, align 4
  %38 = call %struct.xenisrc* @xen_intr_alloc_isrc(i32 %36, i32 %37)
  store %struct.xenisrc* %38, %struct.xenisrc** %20, align 8
  %39 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %40 = icmp eq %struct.xenisrc* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %43 = load i32, i32* @ENOSPC, align 4
  store i32 %43, i32* %10, align 4
  br label %86

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %48 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %50 = load %struct.xenisrc**, %struct.xenisrc*** @xen_intr_port_to_isrc, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.xenisrc*, %struct.xenisrc** %50, i64 %51
  store %struct.xenisrc* %49, %struct.xenisrc** %52, align 8
  %53 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %54 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %53, i32 0, i32 3
  %55 = call i32 @refcount_init(i32* %54, i32 1)
  %56 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %57 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %58 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %57, i32 0, i32 2
  %59 = load i32**, i32*** %19, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %45
  %63 = load i32*, i32** %16, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %67 = load %struct.xenisrc**, %struct.xenisrc*** %11, align 8
  store %struct.xenisrc* %66, %struct.xenisrc** %67, align 8
  store i32 0, i32* %10, align 4
  br label %86

68:                                               ; preds = %62, %45
  %69 = load i8*, i8** %14, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load i32**, i32*** %19, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @xen_intr_add_handler(i8* %69, i32* %70, i32* %71, i8* %72, i32 %73, i32* %75)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %81 = call i32 @xen_intr_release_isrc(%struct.xenisrc* %80)
  %82 = load i32, i32* %21, align 4
  store i32 %82, i32* %10, align 4
  br label %86

83:                                               ; preds = %68
  %84 = load %struct.xenisrc*, %struct.xenisrc** %20, align 8
  %85 = load %struct.xenisrc**, %struct.xenisrc*** %11, align 8
  store %struct.xenisrc* %84, %struct.xenisrc** %85, align 8
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %79, %65, %41, %25
  %87 = load i32, i32* %10, align 4
  ret i32 %87
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.xenisrc* @xen_intr_find_unused_isrc(i32) #1

declare dso_local %struct.xenisrc* @xen_intr_alloc_isrc(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @xen_intr_add_handler(i8*, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @xen_intr_release_isrc(%struct.xenisrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
