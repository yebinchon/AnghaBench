; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_rtnode_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_rtnode_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32, i32, i32* }
%struct.bridge_rtnode = type { i64, i32 }

@brt_hash = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@brt_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, %struct.bridge_rtnode*)* @bridge_rtnode_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_rtnode_insert(%struct.bridge_softc* %0, %struct.bridge_rtnode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca %struct.bridge_rtnode*, align 8
  %6 = alloca %struct.bridge_rtnode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store %struct.bridge_rtnode* %1, %struct.bridge_rtnode** %5, align 8
  %9 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %10 = call i32 @BRIDGE_LOCK_ASSERT(%struct.bridge_softc* %9)
  %11 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %12 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %5, align 8
  %13 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @bridge_rthash(%struct.bridge_softc* %11, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %17 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call %struct.bridge_rtnode* @LIST_FIRST(i32* %20)
  store %struct.bridge_rtnode* %21, %struct.bridge_rtnode** %6, align 8
  %22 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %6, align 8
  %23 = icmp eq %struct.bridge_rtnode* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %5, align 8
  %31 = load i32, i32* @brt_hash, align 4
  %32 = call i32 @LIST_INSERT_HEAD(i32* %29, %struct.bridge_rtnode* %30, i32 %31)
  br label %80

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %76, %33
  %35 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %5, align 8
  %36 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %6, align 8
  %39 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bridge_rtnode_addr_cmp(i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %5, align 8
  %46 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %6, align 8
  %49 = getelementptr inbounds %struct.bridge_rtnode, %struct.bridge_rtnode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @EEXIST, align 4
  store i32 %53, i32* %3, align 4
  br label %90

54:                                               ; preds = %44, %34
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %6, align 8
  %59 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %5, align 8
  %60 = load i32, i32* @brt_hash, align 4
  %61 = call i32 @LIST_INSERT_BEFORE(%struct.bridge_rtnode* %58, %struct.bridge_rtnode* %59, i32 %60)
  br label %80

62:                                               ; preds = %54
  %63 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %6, align 8
  %64 = load i32, i32* @brt_hash, align 4
  %65 = call %struct.bridge_rtnode* @LIST_NEXT(%struct.bridge_rtnode* %63, i32 %64)
  %66 = icmp eq %struct.bridge_rtnode* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %6, align 8
  %69 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %5, align 8
  %70 = load i32, i32* @brt_hash, align 4
  %71 = call i32 @LIST_INSERT_AFTER(%struct.bridge_rtnode* %68, %struct.bridge_rtnode* %69, i32 %70)
  br label %80

72:                                               ; preds = %62
  %73 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %6, align 8
  %74 = load i32, i32* @brt_hash, align 4
  %75 = call %struct.bridge_rtnode* @LIST_NEXT(%struct.bridge_rtnode* %73, i32 %74)
  store %struct.bridge_rtnode* %75, %struct.bridge_rtnode** %6, align 8
  br label %76

76:                                               ; preds = %72
  %77 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %6, align 8
  %78 = icmp ne %struct.bridge_rtnode* %77, null
  br i1 %78, label %34, label %79

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %67, %57, %24
  %81 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %82 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %81, i32 0, i32 1
  %83 = load %struct.bridge_rtnode*, %struct.bridge_rtnode** %5, align 8
  %84 = load i32, i32* @brt_list, align 4
  %85 = call i32 @LIST_INSERT_HEAD(i32* %82, %struct.bridge_rtnode* %83, i32 %84)
  %86 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %87 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %80, %52
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @BRIDGE_LOCK_ASSERT(%struct.bridge_softc*) #1

declare dso_local i64 @bridge_rthash(%struct.bridge_softc*, i32) #1

declare dso_local %struct.bridge_rtnode* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.bridge_rtnode*, i32) #1

declare dso_local i32 @bridge_rtnode_addr_cmp(i32, i32) #1

declare dso_local i32 @LIST_INSERT_BEFORE(%struct.bridge_rtnode*, %struct.bridge_rtnode*, i32) #1

declare dso_local %struct.bridge_rtnode* @LIST_NEXT(%struct.bridge_rtnode*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.bridge_rtnode*, %struct.bridge_rtnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
