; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_if.c_pfi_cleanup_vnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_if.c_pfi_cleanup_vnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@V_pfi_all = common dso_local global i32* null, align 8
@pfi_ifhead = common dso_local global i32 0, align 4
@V_pfi_ifs = common dso_local global i32 0, align 4
@PFI_MTYPE = common dso_local global i32 0, align 4
@pfi_unlnkdkifs_mtx = common dso_local global i32 0, align 4
@V_pfi_unlinked_kifs = common dso_local global i32 0, align 4
@pfik_list = common dso_local global i32 0, align 4
@V_pfi_buffer = common dso_local global %struct.pfi_kif* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfi_cleanup_vnet() #0 {
  %1 = alloca %struct.pfi_kif*, align 8
  %2 = call i32 (...) @PF_RULES_WASSERT()
  store i32* null, i32** @V_pfi_all, align 8
  br label %3

3:                                                ; preds = %34, %0
  %4 = load i32, i32* @pfi_ifhead, align 4
  %5 = call %struct.pfi_kif* @RB_MIN(i32 %4, i32* @V_pfi_ifs)
  store %struct.pfi_kif* %5, %struct.pfi_kif** %1, align 8
  %6 = icmp ne %struct.pfi_kif* %5, null
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = load i32, i32* @pfi_ifhead, align 4
  %9 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %10 = call i32 @RB_REMOVE(i32 %8, i32* @V_pfi_ifs, %struct.pfi_kif* %9)
  %11 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %12 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %17 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %15, %7
  %21 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %22 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %27 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @if_rele(%struct.TYPE_4__* %28)
  %30 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %31 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %25, %20
  %35 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %36 = load i32, i32* @PFI_MTYPE, align 4
  %37 = call i32 @free(%struct.pfi_kif* %35, i32 %36)
  br label %3

38:                                               ; preds = %3
  %39 = call i32 @mtx_lock(i32* @pfi_unlnkdkifs_mtx)
  br label %40

40:                                               ; preds = %43, %38
  %41 = call %struct.pfi_kif* @LIST_FIRST(i32* @V_pfi_unlinked_kifs)
  store %struct.pfi_kif* %41, %struct.pfi_kif** %1, align 8
  %42 = icmp ne %struct.pfi_kif* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %45 = load i32, i32* @pfik_list, align 4
  %46 = call i32 @LIST_REMOVE(%struct.pfi_kif* %44, i32 %45)
  %47 = load %struct.pfi_kif*, %struct.pfi_kif** %1, align 8
  %48 = load i32, i32* @PFI_MTYPE, align 4
  %49 = call i32 @free(%struct.pfi_kif* %47, i32 %48)
  br label %40

50:                                               ; preds = %40
  %51 = call i32 @mtx_unlock(i32* @pfi_unlnkdkifs_mtx)
  %52 = load %struct.pfi_kif*, %struct.pfi_kif** @V_pfi_buffer, align 8
  %53 = load i32, i32* @PFI_MTYPE, align 4
  %54 = call i32 @free(%struct.pfi_kif* %52, i32 %53)
  ret void
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local %struct.pfi_kif* @RB_MIN(i32, i32*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pfi_kif*) #1

declare dso_local i32 @if_rele(%struct.TYPE_4__*) #1

declare dso_local i32 @free(%struct.pfi_kif*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.pfi_kif* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.pfi_kif*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
