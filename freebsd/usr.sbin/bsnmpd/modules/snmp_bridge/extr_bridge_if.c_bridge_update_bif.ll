; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_update_bif.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_update_bif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mibif = type { %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4
@RowStatus_notInService = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_if*)* @bridge_update_bif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_update_bif(%struct.bridge_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca %struct.mibif*, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %3, align 8
  %5 = call %struct.mibif* (...) @mib_first_if()
  store %struct.mibif* %5, %struct.mibif** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.mibif*, %struct.mibif** %4, align 8
  %8 = icmp ne %struct.mibif* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.mibif*, %struct.mibif** %4, align 8
  %11 = getelementptr inbounds %struct.mibif, %struct.mibif* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %14 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strcmp(i32 %12, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %23

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.mibif*, %struct.mibif** %4, align 8
  %22 = call %struct.mibif* @mib_next_if(%struct.mibif* %21)
  store %struct.mibif* %22, %struct.mibif** %4, align 8
  br label %6

23:                                               ; preds = %18, %6
  %24 = load %struct.mibif*, %struct.mibif** %4, align 8
  %25 = icmp eq %struct.mibif* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %28 = call i32 @bridge_remove_bif(%struct.bridge_if* %27)
  store i32 0, i32* %2, align 4
  br label %91

29:                                               ; preds = %23
  %30 = load %struct.mibif*, %struct.mibif** %4, align 8
  %31 = getelementptr inbounds %struct.mibif, %struct.mibif* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.mibif*, %struct.mibif** %4, align 8
  %36 = getelementptr inbounds %struct.mibif, %struct.mibif* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %39 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %43 = call i32 @bcopy(i32* %37, i32 %41, i32 %42)
  br label %54

44:                                               ; preds = %29
  %45 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %46 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %49 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %53 = call i32 @bridge_get_basemac(i32 %47, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %34
  %55 = load %struct.mibif*, %struct.mibif** %4, align 8
  %56 = getelementptr inbounds %struct.mibif, %struct.mibif* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IFF_RUNNING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @RowStatus_active, align 4
  %64 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %65 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %54
  %67 = load i32, i32* @RowStatus_notInService, align 4
  %68 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %69 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %72 = call i32 @bridge_getinfo_bif(%struct.bridge_if* %71)
  switch i32 %72, label %82 [
    i32 2, label %73
    i32 1, label %76
    i32 -1, label %79
  ]

73:                                               ; preds = %70
  %74 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %75 = call i32 @bridge_new_root(%struct.bridge_if* %74)
  br label %83

76:                                               ; preds = %70
  %77 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %78 = call i32 @bridge_top_change(%struct.bridge_if* %77)
  br label %83

79:                                               ; preds = %70
  %80 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %81 = call i32 @bridge_remove_bif(%struct.bridge_if* %80)
  store i32 -1, i32* %2, align 4
  br label %91

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %76, %73
  %84 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %85 = call i32 @bridge_update_memif(%struct.bridge_if* %84)
  %86 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %87 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = call i32 @time(i32* null)
  %89 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %90 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %83, %79, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.mibif* @mib_first_if(...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.mibif* @mib_next_if(%struct.mibif*) #1

declare dso_local i32 @bridge_remove_bif(%struct.bridge_if*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bridge_get_basemac(i32, i32, i32) #1

declare dso_local i32 @bridge_getinfo_bif(%struct.bridge_if*) #1

declare dso_local i32 @bridge_new_root(%struct.bridge_if*) #1

declare dso_local i32 @bridge_top_change(%struct.bridge_if*) #1

declare dso_local i32 @bridge_update_memif(%struct.bridge_if*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
