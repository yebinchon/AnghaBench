; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_find_pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_find_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entry = type { i64 }
%struct.tp_entries = type { i32 }

@tp_e = common dso_local global i32 0, align 4
@tp_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tp_entry* (%struct.tp_entries*, i64)* @bridge_addrs_find_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tp_entry* @bridge_addrs_find_pos(%struct.tp_entries* %0, i64 %1) #0 {
  %3 = alloca %struct.tp_entry*, align 8
  %4 = alloca %struct.tp_entries*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tp_entry*, align 8
  store %struct.tp_entries* %0, %struct.tp_entries** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tp_entries*, %struct.tp_entries** %4, align 8
  %9 = call %struct.tp_entry* @TAILQ_FIRST(%struct.tp_entries* %8)
  store %struct.tp_entry* %9, %struct.tp_entry** %7, align 8
  %10 = icmp eq %struct.tp_entry* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %14 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @bridge_compare_sysidx(i64 %12, i64 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %2
  store %struct.tp_entry* null, %struct.tp_entry** %3, align 8
  br label %66

19:                                               ; preds = %11
  %20 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %21 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %24 = load i32, i32* @tp_e, align 4
  %25 = call %struct.tp_entry* @TAILQ_NEXT(%struct.tp_entry* %23, i32 %24)
  store %struct.tp_entry* %25, %struct.tp_entry** %7, align 8
  br label %26

26:                                               ; preds = %53, %19
  %27 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %28 = icmp ne %struct.tp_entry* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %31 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %38 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @bridge_compare_sysidx(i64 %36, i64 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %44 = load i32, i32* @tp_entries, align 4
  %45 = load i32, i32* @tp_e, align 4
  %46 = call %struct.tp_entry* @TAILQ_PREV(%struct.tp_entry* %43, i32 %44, i32 %45)
  store %struct.tp_entry* %46, %struct.tp_entry** %3, align 8
  br label %66

47:                                               ; preds = %35
  %48 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %49 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %55 = load i32, i32* @tp_e, align 4
  %56 = call %struct.tp_entry* @TAILQ_NEXT(%struct.tp_entry* %54, i32 %55)
  store %struct.tp_entry* %56, %struct.tp_entry** %7, align 8
  br label %26

57:                                               ; preds = %26
  %58 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %59 = icmp eq %struct.tp_entry* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.tp_entries*, %struct.tp_entries** %4, align 8
  %62 = load i32, i32* @tp_entries, align 4
  %63 = call %struct.tp_entry* @TAILQ_LAST(%struct.tp_entries* %61, i32 %62)
  store %struct.tp_entry* %63, %struct.tp_entry** %7, align 8
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  store %struct.tp_entry* %65, %struct.tp_entry** %3, align 8
  br label %66

66:                                               ; preds = %64, %42, %18
  %67 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  ret %struct.tp_entry* %67
}

declare dso_local %struct.tp_entry* @TAILQ_FIRST(%struct.tp_entries*) #1

declare dso_local i64 @bridge_compare_sysidx(i64, i64) #1

declare dso_local %struct.tp_entry* @TAILQ_NEXT(%struct.tp_entry*, i32) #1

declare dso_local %struct.tp_entry* @TAILQ_PREV(%struct.tp_entry*, i32, i32) #1

declare dso_local %struct.tp_entry* @TAILQ_LAST(%struct.tp_entries*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
