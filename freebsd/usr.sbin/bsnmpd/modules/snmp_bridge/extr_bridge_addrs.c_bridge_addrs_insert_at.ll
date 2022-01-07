; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_insert_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_addrs_insert_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entries = type { i32 }
%struct.tp_entry = type { i64, i32 }

@tp_e = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tp_entries*, %struct.tp_entry*, %struct.tp_entry**)* @bridge_addrs_insert_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_addrs_insert_at(%struct.tp_entries* %0, %struct.tp_entry* %1, %struct.tp_entry** %2) #0 {
  %4 = alloca %struct.tp_entries*, align 8
  %5 = alloca %struct.tp_entry*, align 8
  %6 = alloca %struct.tp_entry**, align 8
  %7 = alloca %struct.tp_entry*, align 8
  store %struct.tp_entries* %0, %struct.tp_entries** %4, align 8
  store %struct.tp_entry* %1, %struct.tp_entry** %5, align 8
  store %struct.tp_entry** %2, %struct.tp_entry*** %6, align 8
  %8 = load %struct.tp_entry**, %struct.tp_entry*** %6, align 8
  %9 = icmp ne %struct.tp_entry** %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.tp_entry**, %struct.tp_entry*** %6, align 8
  %13 = load %struct.tp_entry*, %struct.tp_entry** %12, align 8
  store %struct.tp_entry* %13, %struct.tp_entry** %7, align 8
  br label %14

14:                                               ; preds = %50, %3
  %15 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %16 = icmp ne %struct.tp_entry* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.tp_entry*, %struct.tp_entry** %5, align 8
  %19 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %22 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br label %25

25:                                               ; preds = %17, %14
  %26 = phi i1 [ false, %14 ], [ %24, %17 ]
  br i1 %26, label %27, label %54

27:                                               ; preds = %25
  %28 = load %struct.tp_entry*, %struct.tp_entry** %5, align 8
  %29 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %32 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @bridge_compare_macs(i32 %30, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %38 = load %struct.tp_entry*, %struct.tp_entry** %5, align 8
  %39 = load i32, i32* @tp_e, align 4
  %40 = call i32 @TAILQ_INSERT_BEFORE(%struct.tp_entry* %37, %struct.tp_entry* %38, i32 %39)
  %41 = load %struct.tp_entry**, %struct.tp_entry*** %6, align 8
  %42 = load %struct.tp_entry*, %struct.tp_entry** %41, align 8
  %43 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %44 = icmp eq %struct.tp_entry* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.tp_entry*, %struct.tp_entry** %5, align 8
  %47 = load %struct.tp_entry**, %struct.tp_entry*** %6, align 8
  store %struct.tp_entry* %46, %struct.tp_entry** %47, align 8
  br label %48

48:                                               ; preds = %45, %36
  br label %67

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %52 = load i32, i32* @tp_e, align 4
  %53 = call %struct.tp_entry* @TAILQ_NEXT(%struct.tp_entry* %51, i32 %52)
  store %struct.tp_entry* %53, %struct.tp_entry** %7, align 8
  br label %14

54:                                               ; preds = %25
  %55 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %56 = icmp eq %struct.tp_entry* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.tp_entries*, %struct.tp_entries** %4, align 8
  %59 = load %struct.tp_entry*, %struct.tp_entry** %5, align 8
  %60 = load i32, i32* @tp_e, align 4
  %61 = call i32 @TAILQ_INSERT_TAIL(%struct.tp_entries* %58, %struct.tp_entry* %59, i32 %60)
  br label %67

62:                                               ; preds = %54
  %63 = load %struct.tp_entry*, %struct.tp_entry** %7, align 8
  %64 = load %struct.tp_entry*, %struct.tp_entry** %5, align 8
  %65 = load i32, i32* @tp_e, align 4
  %66 = call i32 @TAILQ_INSERT_BEFORE(%struct.tp_entry* %63, %struct.tp_entry* %64, i32 %65)
  br label %67

67:                                               ; preds = %48, %62, %57
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bridge_compare_macs(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.tp_entry*, %struct.tp_entry*, i32) #1

declare dso_local %struct.tp_entry* @TAILQ_NEXT(%struct.tp_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.tp_entries*, %struct.tp_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
