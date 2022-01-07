; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_alive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@VM_PROT_READ = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OBJ_UMTXDEAD = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*)* @umtx_shm_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtx_shm_alive(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* %19, i32** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i32, i32* @VM_PROT_READ, align 4
  %23 = call i32 @vm_map_lookup(i32** %6, i64 %21, i32 %22, i32* %7, %struct.TYPE_7__** %8, i32* %9, i32* %10, i32* %13)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @KERN_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @EFAULT, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = icmp eq %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %12, align 4
  br label %46

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OBJ_UMTXDEAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOTTY, align 4
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %32
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @vm_map_lookup_done(i32* %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @vm_map_lookup(i32**, i64, i32, i32*, %struct.TYPE_7__**, i32*, i32*, i32*) #1

declare dso_local i32 @vm_map_lookup_done(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
