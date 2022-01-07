; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_update_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_update_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32 }
%struct.tp_entry = type { i32 }
%struct.ifbareq = type { i32 }

@BA_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_update_addrs(%struct.bridge_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tp_entry*, align 8
  %9 = alloca %struct.tp_entry*, align 8
  %10 = alloca %struct.ifbareq*, align 8
  %11 = alloca %struct.ifbareq*, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %3, align 8
  %12 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %13 = call i32 @bridge_addrs_getinfo_ifalist(%struct.bridge_if* %12, %struct.ifbareq** %10)
  store i32 %13, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %57, %16
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %17
  %25 = load %struct.ifbareq*, %struct.ifbareq** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %25, i64 %27
  store %struct.ifbareq* %28, %struct.ifbareq** %11, align 8
  %29 = load %struct.ifbareq*, %struct.ifbareq** %11, align 8
  %30 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %33 = call %struct.tp_entry* @bridge_addrs_find(i32 %31, %struct.bridge_if* %32)
  store %struct.tp_entry* %33, %struct.tp_entry** %8, align 8
  %34 = icmp eq %struct.tp_entry* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  %38 = load %struct.ifbareq*, %struct.ifbareq** %11, align 8
  %39 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %42 = call %struct.tp_entry* @bridge_new_addrs(i32 %40, %struct.bridge_if* %41)
  store %struct.tp_entry* %42, %struct.tp_entry** %8, align 8
  %43 = icmp eq %struct.tp_entry* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %57

45:                                               ; preds = %35
  br label %49

46:                                               ; preds = %24
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.ifbareq*, %struct.ifbareq** %11, align 8
  %51 = load %struct.tp_entry*, %struct.tp_entry** %8, align 8
  %52 = call i32 @bridge_addrs_info_ifaddrlist(%struct.ifbareq* %50, %struct.tp_entry* %51)
  %53 = load %struct.tp_entry*, %struct.tp_entry** %8, align 8
  %54 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %17

60:                                               ; preds = %17
  %61 = load %struct.ifbareq*, %struct.ifbareq** %10, align 8
  %62 = call i32 @free(%struct.ifbareq* %61)
  %63 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %64 = call %struct.tp_entry* @bridge_addrs_bif_first(%struct.bridge_if* %63)
  store %struct.tp_entry* %64, %struct.tp_entry** %8, align 8
  br label %65

65:                                               ; preds = %86, %60
  %66 = load %struct.tp_entry*, %struct.tp_entry** %8, align 8
  %67 = icmp ne %struct.tp_entry* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load %struct.tp_entry*, %struct.tp_entry** %8, align 8
  %70 = call %struct.tp_entry* @bridge_addrs_bif_next(%struct.tp_entry* %69)
  store %struct.tp_entry* %70, %struct.tp_entry** %9, align 8
  %71 = load %struct.tp_entry*, %struct.tp_entry** %8, align 8
  %72 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.tp_entry*, %struct.tp_entry** %8, align 8
  %78 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %79 = call i32 @bridge_addrs_remove(%struct.tp_entry* %77, %struct.bridge_if* %78)
  br label %85

80:                                               ; preds = %68
  %81 = load %struct.tp_entry*, %struct.tp_entry** %8, align 8
  %82 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, -2
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.tp_entry*, %struct.tp_entry** %9, align 8
  store %struct.tp_entry* %87, %struct.tp_entry** %8, align 8
  br label %65

88:                                               ; preds = %65
  %89 = call i32 @time(i32* null)
  %90 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %91 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %88, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @bridge_addrs_getinfo_ifalist(%struct.bridge_if*, %struct.ifbareq**) #1

declare dso_local %struct.tp_entry* @bridge_addrs_find(i32, %struct.bridge_if*) #1

declare dso_local %struct.tp_entry* @bridge_new_addrs(i32, %struct.bridge_if*) #1

declare dso_local i32 @bridge_addrs_info_ifaddrlist(%struct.ifbareq*, %struct.tp_entry*) #1

declare dso_local i32 @free(%struct.ifbareq*) #1

declare dso_local %struct.tp_entry* @bridge_addrs_bif_first(%struct.bridge_if*) #1

declare dso_local %struct.tp_entry* @bridge_addrs_bif_next(%struct.tp_entry*) #1

declare dso_local i32 @bridge_addrs_remove(%struct.tp_entry*, %struct.bridge_if*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
