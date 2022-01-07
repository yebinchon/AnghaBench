; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_insert_vlan_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_insert_vlan_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@M_VLANTAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.TYPE_5__*, %struct.mbuf*, i32*)* @oce_insert_vlan_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @oce_insert_vlan_tag(%struct.TYPE_5__* %0, %struct.mbuf* %1, i32* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %10 = call i32 @M_WRITABLE(%struct.mbuf* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %77

13:                                               ; preds = %3
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @M_VLANTAG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @EVL_VLANOFTAG(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* @M_VLANTAG, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %20, %13
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call %struct.mbuf* @ether_vlanencap(%struct.mbuf* %55, i64 %56)
  store %struct.mbuf* %57, %struct.mbuf** %6, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.mbuf* @ether_vlanencap(%struct.mbuf* %64, i64 %67)
  store %struct.mbuf* %68, %struct.mbuf** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @FALSE, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %63
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %76, %struct.mbuf** %4, align 8
  br label %77

77:                                               ; preds = %75, %12
  %78 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %78
}

declare dso_local i32 @M_WRITABLE(%struct.mbuf*) #1

declare dso_local i64 @EVL_VLANOFTAG(i32) #1

declare dso_local %struct.mbuf* @ether_vlanencap(%struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
