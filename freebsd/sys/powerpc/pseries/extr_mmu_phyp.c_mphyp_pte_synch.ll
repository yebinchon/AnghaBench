; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_synch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_synch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpte = type { i32, i32 }

@H_READ = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@ADDR_API_SHFT64 = common dso_local global i32 0, align 4
@ADDR_PIDX_SHFT = common dso_local global i32 0, align 4
@LPTE_VALID = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*)* @mphyp_pte_synch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mphyp_pte_synch(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca %struct.lpte, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  call void asm sideeffect "ptesync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %8 = load i32, i32* @H_READ, align 4
  %9 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %10 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 1
  %15 = call i32 @phyp_pft_hcall(i32 %8, i32 0, i32 %12, i32 0, i32 0, i32* %13, i32* %14, i32* %7)
  %16 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %21 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ADDR_API_SHFT64, align 4
  %24 = load i32, i32* @ADDR_PIDX_SHFT, align 4
  %25 = sub nsw i32 %23, %24
  %26 = ashr i32 %22, %25
  %27 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %19, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LPTE_VALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %45

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LPTE_CHG, align 4
  %42 = load i32, i32* @LPTE_REF, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %37, %30
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @phyp_pft_hcall(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 705}
