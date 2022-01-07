; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_zbuf_sfbuf_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_zbuf_sfbuf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buf = type { i32 }
%struct.vm_map = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@SFB_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sf_buf* (%struct.vm_map*, i32)* @zbuf_sfbuf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sf_buf* @zbuf_sfbuf_get(%struct.vm_map* %0, i32 %1) #0 {
  %3 = alloca %struct.sf_buf*, align 8
  %4 = alloca %struct.vm_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sf_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.vm_map* %0, %struct.vm_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vm_map*, %struct.vm_map** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = load i32, i32* @VM_PROT_READ, align 4
  %12 = load i32, i32* @VM_PROT_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @vm_fault_quick_hold_pages(%struct.vm_map* %8, i32 %9, i32 %10, i32 %13, i32* %7, i32 1)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.sf_buf* null, %struct.sf_buf** %3, align 8
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SFB_NOWAIT, align 4
  %20 = call %struct.sf_buf* @sf_buf_alloc(i32 %18, i32 %19)
  store %struct.sf_buf* %20, %struct.sf_buf** %6, align 8
  %21 = load %struct.sf_buf*, %struct.sf_buf** %6, align 8
  %22 = icmp eq %struct.sf_buf* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @zbuf_page_free(i32 %24)
  store %struct.sf_buf* null, %struct.sf_buf** %3, align 8
  br label %28

26:                                               ; preds = %17
  %27 = load %struct.sf_buf*, %struct.sf_buf** %6, align 8
  store %struct.sf_buf* %27, %struct.sf_buf** %3, align 8
  br label %28

28:                                               ; preds = %26, %23, %16
  %29 = load %struct.sf_buf*, %struct.sf_buf** %3, align 8
  ret %struct.sf_buf* %29
}

declare dso_local i64 @vm_fault_quick_hold_pages(%struct.vm_map*, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.sf_buf* @sf_buf_alloc(i32, i32) #1

declare dso_local i32 @zbuf_page_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
