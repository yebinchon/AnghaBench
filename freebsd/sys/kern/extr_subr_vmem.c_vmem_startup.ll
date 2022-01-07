; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmem_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vmem list lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vmem\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_VM = common dso_local global i32 0, align 4
@vmem_zone = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"vmem btag\00", align 1
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@vmem_bt_zone = common dso_local global i8* null, align 8
@vmem_bt_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"btag lock\00", align 1
@BT_MAXALLOC = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@vmem_bt_alloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmem_startup() #0 {
  %1 = load i32, i32* @MTX_DEF, align 4
  %2 = call i32 @mtx_init(i32* @vmem_list_lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  %3 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %4 = load i32, i32* @UMA_ZONE_VM, align 4
  %5 = call i8* @uma_zcreate(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %3, i32 %4)
  store i8* %5, i8** @vmem_zone, align 8
  %6 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %7 = load i32, i32* @UMA_ZONE_VM, align 4
  %8 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @uma_zcreate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %6, i32 %9)
  store i8* %10, i8** @vmem_bt_zone, align 8
  %11 = load i32, i32* @MTX_DEF, align 4
  %12 = call i32 @mtx_init(i32* @vmem_bt_lock, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %11)
  %13 = load i8*, i8** @vmem_bt_zone, align 8
  %14 = load i32, i32* @BT_MAXALLOC, align 4
  %15 = call i32 @uma_prealloc(i8* %13, i32 %14)
  %16 = load i8*, i8** @vmem_bt_zone, align 8
  %17 = load i32, i32* @BT_MAXALLOC, align 4
  %18 = mul nsw i32 2, %17
  %19 = load i32, i32* @mp_ncpus, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @uma_zone_reserve(i8* %16, i32 %20)
  %22 = load i8*, i8** @vmem_bt_zone, align 8
  %23 = load i32, i32* @vmem_bt_alloc, align 4
  %24 = call i32 @uma_zone_set_allocf(i8* %22, i32 %23)
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_prealloc(i8*, i32) #1

declare dso_local i32 @uma_zone_reserve(i8*, i32) #1

declare dso_local i32 @uma_zone_set_allocf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
