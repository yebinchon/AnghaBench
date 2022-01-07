; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_is_path_marked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_is_path_marked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32 }
%struct.bxe_prev_list_node = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@bxe_prev_mtx = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Path %d/%d/%d was marked by AER\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Path %d/%d/%d was already cleaned from previous drivers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_prev_is_path_marked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_prev_is_path_marked(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_prev_list_node*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 @mtx_lock(i32* @bxe_prev_mtx)
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = call %struct.bxe_prev_list_node* @bxe_prev_path_get_entry(%struct.bxe_softc* %7)
  store %struct.bxe_prev_list_node* %8, %struct.bxe_prev_list_node** %3, align 8
  %9 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %3, align 8
  %10 = icmp ne %struct.bxe_prev_list_node* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load %struct.bxe_prev_list_node*, %struct.bxe_prev_list_node** %3, align 8
  %13 = getelementptr inbounds %struct.bxe_prev_list_node, %struct.bxe_prev_list_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = load i32, i32* @DBG_LOAD, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %26 = call i32 @SC_PATH(%struct.bxe_softc* %25)
  %27 = call i32 @BLOGD(%struct.bxe_softc* %17, i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %26)
  br label %41

28:                                               ; preds = %11
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %4, align 4
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = load i32, i32* @DBG_LOAD, align 4
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %36 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = call i32 @SC_PATH(%struct.bxe_softc* %38)
  %40 = call i32 @BLOGD(%struct.bxe_softc* %30, i32 %31, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %28, %16
  br label %42

42:                                               ; preds = %41, %1
  %43 = call i32 @mtx_unlock(i32* @bxe_prev_mtx)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bxe_prev_list_node* @bxe_prev_path_get_entry(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
