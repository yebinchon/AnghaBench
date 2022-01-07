; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_mcast_macs_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_mcast_macs_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_ramrod_params = type { i32, i32 }
%struct.ecore_mcast_list_elem = type { i32*, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate temp mcast list\0A\00", align 1
@bxe_push_maddr = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Setting MCAST %02X:%02X:%02X:%02X:%02X:%02X and mc_count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*)* @bxe_init_mcast_macs_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_init_mcast_macs_list(%struct.bxe_softc* %0, %struct.ecore_mcast_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_mcast_ramrod_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_mcast_list_elem*, align 8
  %9 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_mcast_ramrod_params* %1, %struct.ecore_mcast_ramrod_params** %5, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %13, i32 0, i32 1
  %15 = call i32 @ECORE_LIST_INIT(i32* %14)
  %16 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @if_llmaddr_count(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 16, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.ecore_mcast_list_elem* @malloc(i32 %27, i32 %28, i32 %31)
  store %struct.ecore_mcast_list_elem* %32, %struct.ecore_mcast_list_elem** %8, align 8
  %33 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %34 = icmp ne %struct.ecore_mcast_list_elem* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %37 = call i32 @BLOGE(%struct.bxe_softc* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %121

38:                                               ; preds = %23
  %39 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 16, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @bzero(%struct.ecore_mcast_list_elem* %39, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @bxe_push_maddr, align 4
  %47 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %48 = call i32 @if_foreach_llmaddr(i32 %45, i32 %46, %struct.ecore_mcast_list_elem* %47)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %114, %38
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %117

53:                                               ; preds = %49
  %54 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %54, i64 %56
  %58 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %57, i32 0, i32 1
  %59 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %5, align 8
  %60 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %59, i32 0, i32 1
  %61 = call i32 @ECORE_LIST_PUSH_TAIL(i32* %58, i32* %60)
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %63 = load i32, i32* @DBG_LOAD, align 4
  %64 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %64, i64 %66
  %68 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %72, i64 %74
  %76 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %80, i64 %82
  %84 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %88, i64 %90
  %92 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %96, i64 %98
  %100 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ecore_mcast_list_elem*, %struct.ecore_mcast_list_elem** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %104, i64 %106
  %108 = getelementptr inbounds %struct.ecore_mcast_list_elem, %struct.ecore_mcast_list_elem* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 5
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @BLOGD(%struct.bxe_softc* %62, i32 %63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %79, i32 %87, i32 %95, i32 %103, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %53
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %49

117:                                              ; preds = %49
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %5, align 8
  %120 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %35, %22
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @ECORE_LIST_INIT(i32*) #1

declare dso_local i32 @if_llmaddr_count(i32) #1

declare dso_local %struct.ecore_mcast_list_elem* @malloc(i32, i32, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bzero(%struct.ecore_mcast_list_elem*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(i32, i32, %struct.ecore_mcast_list_elem*) #1

declare dso_local i32 @ECORE_LIST_PUSH_TAIL(i32*, i32*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
