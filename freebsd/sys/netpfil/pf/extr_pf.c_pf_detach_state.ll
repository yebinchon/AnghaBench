; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_detach_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_detach_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_keyhash = type { i32 }
%struct.pf_state = type { %struct.pf_state_key** }
%struct.pf_state_key = type { i32 }

@PF_SK_STACK = common dso_local global i64 0, align 8
@V_pf_keyhash = common dso_local global %struct.pf_keyhash* null, align 8
@PF_SK_WIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_state*)* @pf_detach_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_detach_state(%struct.pf_state* %0) #0 {
  %2 = alloca %struct.pf_state*, align 8
  %3 = alloca %struct.pf_state_key*, align 8
  %4 = alloca %struct.pf_keyhash*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %2, align 8
  %5 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %6 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %5, i32 0, i32 0
  %7 = load %struct.pf_state_key**, %struct.pf_state_key*** %6, align 8
  %8 = load i64, i64* @PF_SK_STACK, align 8
  %9 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %7, i64 %8
  %10 = load %struct.pf_state_key*, %struct.pf_state_key** %9, align 8
  store %struct.pf_state_key* %10, %struct.pf_state_key** %3, align 8
  %11 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %12 = icmp ne %struct.pf_state_key* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load %struct.pf_keyhash*, %struct.pf_keyhash** @V_pf_keyhash, align 8
  %15 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %16 = call i64 @pf_hashkey(%struct.pf_state_key* %15)
  %17 = getelementptr inbounds %struct.pf_keyhash, %struct.pf_keyhash* %14, i64 %16
  store %struct.pf_keyhash* %17, %struct.pf_keyhash** %4, align 8
  %18 = load %struct.pf_keyhash*, %struct.pf_keyhash** %4, align 8
  %19 = call i32 @PF_HASHROW_LOCK(%struct.pf_keyhash* %18)
  %20 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %21 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %20, i32 0, i32 0
  %22 = load %struct.pf_state_key**, %struct.pf_state_key*** %21, align 8
  %23 = load i64, i64* @PF_SK_STACK, align 8
  %24 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %22, i64 %23
  %25 = load %struct.pf_state_key*, %struct.pf_state_key** %24, align 8
  %26 = icmp ne %struct.pf_state_key* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %29 = load i64, i64* @PF_SK_STACK, align 8
  %30 = call i32 @pf_state_key_detach(%struct.pf_state* %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %13
  %32 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %33 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %34 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %33, i32 0, i32 0
  %35 = load %struct.pf_state_key**, %struct.pf_state_key*** %34, align 8
  %36 = load i64, i64* @PF_SK_WIRE, align 8
  %37 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %35, i64 %36
  %38 = load %struct.pf_state_key*, %struct.pf_state_key** %37, align 8
  %39 = icmp eq %struct.pf_state_key* %32, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %42 = load i64, i64* @PF_SK_WIRE, align 8
  %43 = call i32 @pf_state_key_detach(%struct.pf_state* %41, i64 %42)
  %44 = load %struct.pf_keyhash*, %struct.pf_keyhash** %4, align 8
  %45 = call i32 @PF_HASHROW_UNLOCK(%struct.pf_keyhash* %44)
  br label %83

46:                                               ; preds = %31
  %47 = load %struct.pf_keyhash*, %struct.pf_keyhash** %4, align 8
  %48 = call i32 @PF_HASHROW_UNLOCK(%struct.pf_keyhash* %47)
  br label %49

49:                                               ; preds = %46, %1
  %50 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %51 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %50, i32 0, i32 0
  %52 = load %struct.pf_state_key**, %struct.pf_state_key*** %51, align 8
  %53 = load i64, i64* @PF_SK_WIRE, align 8
  %54 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %52, i64 %53
  %55 = load %struct.pf_state_key*, %struct.pf_state_key** %54, align 8
  %56 = icmp ne %struct.pf_state_key* %55, null
  br i1 %56, label %57, label %83

57:                                               ; preds = %49
  %58 = load %struct.pf_keyhash*, %struct.pf_keyhash** @V_pf_keyhash, align 8
  %59 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %60 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %59, i32 0, i32 0
  %61 = load %struct.pf_state_key**, %struct.pf_state_key*** %60, align 8
  %62 = load i64, i64* @PF_SK_WIRE, align 8
  %63 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %61, i64 %62
  %64 = load %struct.pf_state_key*, %struct.pf_state_key** %63, align 8
  %65 = call i64 @pf_hashkey(%struct.pf_state_key* %64)
  %66 = getelementptr inbounds %struct.pf_keyhash, %struct.pf_keyhash* %58, i64 %65
  store %struct.pf_keyhash* %66, %struct.pf_keyhash** %4, align 8
  %67 = load %struct.pf_keyhash*, %struct.pf_keyhash** %4, align 8
  %68 = call i32 @PF_HASHROW_LOCK(%struct.pf_keyhash* %67)
  %69 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %70 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %69, i32 0, i32 0
  %71 = load %struct.pf_state_key**, %struct.pf_state_key*** %70, align 8
  %72 = load i64, i64* @PF_SK_WIRE, align 8
  %73 = getelementptr inbounds %struct.pf_state_key*, %struct.pf_state_key** %71, i64 %72
  %74 = load %struct.pf_state_key*, %struct.pf_state_key** %73, align 8
  %75 = icmp ne %struct.pf_state_key* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %57
  %77 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %78 = load i64, i64* @PF_SK_WIRE, align 8
  %79 = call i32 @pf_state_key_detach(%struct.pf_state* %77, i64 %78)
  br label %80

80:                                               ; preds = %76, %57
  %81 = load %struct.pf_keyhash*, %struct.pf_keyhash** %4, align 8
  %82 = call i32 @PF_HASHROW_UNLOCK(%struct.pf_keyhash* %81)
  br label %83

83:                                               ; preds = %40, %80, %49
  ret void
}

declare dso_local i64 @pf_hashkey(%struct.pf_state_key*) #1

declare dso_local i32 @PF_HASHROW_LOCK(%struct.pf_keyhash*) #1

declare dso_local i32 @pf_state_key_detach(%struct.pf_state*, i64) #1

declare dso_local i32 @PF_HASHROW_UNLOCK(%struct.pf_keyhash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
