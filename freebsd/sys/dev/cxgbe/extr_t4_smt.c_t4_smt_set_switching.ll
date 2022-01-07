; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_smt.c_t4_smt_set_switching.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_smt.c_t4_smt_set_switching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.smt_entry = type { i32, i32, i32, i32, i32, i32*, i32 }

@SMT_STATE_SWITCHING = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_smt_set_switching(%struct.adapter* %0, %struct.smt_entry* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.smt_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.smt_entry* %1, %struct.smt_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %11 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %10, i32 0, i32 6
  %12 = call i32 @atomic_load_acq_int(i32* %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %49

14:                                               ; preds = %4
  %15 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %16 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %24 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %23, i32 0, i32 5
  store i32* %22, i32** %24, align 8
  %25 = load %struct.adapter*, %struct.adapter** %5, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %31 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %34 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @SMT_STATE_SWITCHING, align 4
  %36 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %37 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %39 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %43 = call i32 @memcpy(i32 %40, i32* %41, i32 %42)
  %44 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %45 = call i32 @t4_write_sme(%struct.smt_entry* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %47 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %46, i32 0, i32 0
  %48 = call i32 @mtx_unlock(i32* %47)
  br label %49

49:                                               ; preds = %14, %4
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @t4_write_sme(%struct.smt_entry*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
