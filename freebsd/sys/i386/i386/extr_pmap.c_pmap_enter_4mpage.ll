; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_enter_4mpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_enter_4mpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@PG_U = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@PMAP_ENTER_NOREPLACE = common dso_local global i32 0, align 4
@PMAP_ENTER_NORECLAIM = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@i386_read_exec = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.TYPE_6__*, i32)* @pmap_enter_4mpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_enter_4mpage(i64 %0, i32 %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @PMAP_LOCK_ASSERT(i64 %10, i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %13)
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pmap_cache_bits(i64 %15, i32 %19, i32 1)
  %21 = or i32 %14, %20
  %22 = load i32, i32* @PG_PS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PG_V, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VPO_UNMANAGED, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i32, i32* @PG_MANAGED, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %4
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @kernel_pmap, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @PG_U, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %49 = load i32, i32* @PMAP_ENTER_NOREPLACE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PMAP_ENTER_NORECLAIM, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @pmap_enter_pde(i64 %45, i32 %46, i32 %47, i32 %52, i32* null)
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  ret i32 %56
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i64, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i32 @pmap_cache_bits(i64, i32, i32) #1

declare dso_local i64 @pmap_enter_pde(i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
