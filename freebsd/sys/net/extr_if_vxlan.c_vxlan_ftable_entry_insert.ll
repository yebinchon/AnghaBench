; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ftable_entry_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ftable_entry_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, i32* }
%struct.vxlan_ftable_entry = type { i32 }

@vxlfe_hash = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, %struct.vxlan_ftable_entry*)* @vxlan_ftable_entry_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ftable_entry_insert(%struct.vxlan_softc* %0, %struct.vxlan_ftable_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxlan_softc*, align 8
  %5 = alloca %struct.vxlan_ftable_entry*, align 8
  %6 = alloca %struct.vxlan_ftable_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %4, align 8
  store %struct.vxlan_ftable_entry* %1, %struct.vxlan_ftable_entry** %5, align 8
  %9 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %10 = call i32 @VXLAN_LOCK_WASSERT(%struct.vxlan_softc* %9)
  %11 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %12 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %5, align 8
  %13 = getelementptr inbounds %struct.vxlan_ftable_entry, %struct.vxlan_ftable_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @VXLAN_SC_FTABLE_HASH(%struct.vxlan_softc* %11, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %17 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call %struct.vxlan_ftable_entry* @LIST_FIRST(i32* %20)
  store %struct.vxlan_ftable_entry* %21, %struct.vxlan_ftable_entry** %6, align 8
  %22 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %23 = icmp eq %struct.vxlan_ftable_entry* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %26 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %5, align 8
  %31 = load i32, i32* @vxlfe_hash, align 4
  %32 = call i32 @LIST_INSERT_HEAD(i32* %29, %struct.vxlan_ftable_entry* %30, i32 %31)
  br label %74

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %70, %33
  %35 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %5, align 8
  %36 = getelementptr inbounds %struct.vxlan_ftable_entry, %struct.vxlan_ftable_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %39 = getelementptr inbounds %struct.vxlan_ftable_entry, %struct.vxlan_ftable_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vxlan_ftable_addr_cmp(i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @EEXIST, align 4
  store i32 %45, i32* %3, align 4
  br label %79

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %51 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %5, align 8
  %52 = load i32, i32* @vxlfe_hash, align 4
  %53 = call i32 @LIST_INSERT_BEFORE(%struct.vxlan_ftable_entry* %50, %struct.vxlan_ftable_entry* %51, i32 %52)
  br label %74

54:                                               ; preds = %46
  %55 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %56 = load i32, i32* @vxlfe_hash, align 4
  %57 = call %struct.vxlan_ftable_entry* @LIST_NEXT(%struct.vxlan_ftable_entry* %55, i32 %56)
  %58 = icmp eq %struct.vxlan_ftable_entry* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %61 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %5, align 8
  %62 = load i32, i32* @vxlfe_hash, align 4
  %63 = call i32 @LIST_INSERT_AFTER(%struct.vxlan_ftable_entry* %60, %struct.vxlan_ftable_entry* %61, i32 %62)
  br label %74

64:                                               ; preds = %54
  %65 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %66 = load i32, i32* @vxlfe_hash, align 4
  %67 = call %struct.vxlan_ftable_entry* @LIST_NEXT(%struct.vxlan_ftable_entry* %65, i32 %66)
  store %struct.vxlan_ftable_entry* %67, %struct.vxlan_ftable_entry** %6, align 8
  br label %68

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %72 = icmp ne %struct.vxlan_ftable_entry* %71, null
  br i1 %72, label %34, label %73

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73, %59, %49, %24
  %75 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %76 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %44
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @VXLAN_LOCK_WASSERT(%struct.vxlan_softc*) #1

declare dso_local i64 @VXLAN_SC_FTABLE_HASH(%struct.vxlan_softc*, i32) #1

declare dso_local %struct.vxlan_ftable_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.vxlan_ftable_entry*, i32) #1

declare dso_local i32 @vxlan_ftable_addr_cmp(i32, i32) #1

declare dso_local i32 @LIST_INSERT_BEFORE(%struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry*, i32) #1

declare dso_local %struct.vxlan_ftable_entry* @LIST_NEXT(%struct.vxlan_ftable_entry*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
