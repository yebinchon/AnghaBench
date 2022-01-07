; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_replace_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_replace_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpte = type { i32, i32 }
%struct.pvo_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@moea64_pteg_table = common dso_local global %struct.lpte* null, align 8
@moea64_eviction_lock = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*, i32)* @moea64_pte_replace_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea64_pte_replace_native(i32 %0, %struct.pvo_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvo_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpte*, align 8
  %9 = alloca %struct.lpte, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lpte*, %struct.lpte** @moea64_pteg_table, align 8
  %12 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %13 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lpte, %struct.lpte* %11, i64 %16
  store %struct.lpte* %17, %struct.lpte** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %3
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %22 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %21, %struct.lpte* %9)
  %23 = call i32 @rw_rlock(i32* @moea64_eviction_lock)
  %24 = load %struct.lpte*, %struct.lpte** %8, align 8
  %25 = getelementptr inbounds %struct.lpte, %struct.lpte* %24, i32 0, i32 0
  %26 = load volatile i32, i32* %25, align 4
  %27 = call i32 @be64toh(i32 %26)
  %28 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %29 = and i32 %27, %28
  %30 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  store i32 -1, i32* %4, align 4
  br label %55

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @htobe64(i32 %39)
  %41 = load %struct.lpte*, %struct.lpte** %8, align 8
  %42 = getelementptr inbounds %struct.lpte, %struct.lpte* %41, i32 0, i32 0
  store volatile i32 %40, i32* %42, align 4
  %43 = load %struct.lpte*, %struct.lpte** %8, align 8
  %44 = getelementptr inbounds %struct.lpte, %struct.lpte* %43, i32 0, i32 1
  %45 = load volatile i32, i32* %44, align 4
  %46 = call i32 @be64toh(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  br label %53

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %51 = load %struct.lpte*, %struct.lpte** %8, align 8
  %52 = call i32 @moea64_pte_replace_inval_native(i32 %49, %struct.pvo_entry* %50, %struct.lpte* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %48, %37
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %35
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @moea64_pte_replace_inval_native(i32, %struct.pvo_entry*, %struct.lpte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
