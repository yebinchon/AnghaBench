; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_match_ipv4_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_match_ipv4_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.dyn_ipv4_state = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.ip_fw* }
%struct.ip_fw = type { i32 }
%struct.TYPE_3__ = type { %struct.ip_fw*, i32 }

@O_LIMIT_PARENT = common dso_local global i64 0, align 8
@O_LIMIT = common dso_local global i64 0, align 8
@V_dyn_keep_states = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.dyn_ipv4_state*, i32*)* @dyn_match_ipv4_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dyn_match_ipv4_state(%struct.ip_fw_chain* %0, %struct.dyn_ipv4_state* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.dyn_ipv4_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ip_fw*, align 8
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.dyn_ipv4_state* %1, %struct.dyn_ipv4_state** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %6, align 8
  %11 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @O_LIMIT_PARENT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %6, align 8
  %17 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ip_fw*, %struct.ip_fw** %19, align 8
  store %struct.ip_fw* %20, %struct.ip_fw** %8, align 8
  %21 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %6, align 8
  %22 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %27 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @dyn_match_range(i32 %25, i32 %28, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %3
  %32 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %6, align 8
  %33 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.ip_fw*, %struct.ip_fw** %35, align 8
  store %struct.ip_fw* %36, %struct.ip_fw** %8, align 8
  %37 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %6, align 8
  %38 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @O_LIMIT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %44 = bitcast %struct.ip_fw* %43 to %struct.dyn_ipv4_state*
  %45 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.ip_fw*, %struct.ip_fw** %47, align 8
  store %struct.ip_fw* %48, %struct.ip_fw** %8, align 8
  br label %49

49:                                               ; preds = %42, %31
  %50 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %6, align 8
  %51 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %56 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @dyn_match_range(i32 %54, i32 %57, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %49
  %63 = load i64, i64* @V_dyn_keep_states, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %62, %49
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %80

70:                                               ; preds = %65
  %71 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %72 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %6, align 8
  %73 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %76 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %6, align 8
  %77 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dyn_acquire_rule(%struct.ip_fw_chain* %71, %struct.TYPE_4__* %74, %struct.ip_fw* %75, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %70, %68, %15
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @dyn_match_range(i32, i32, i32*) #1

declare dso_local i32 @dyn_acquire_rule(%struct.ip_fw_chain*, %struct.TYPE_4__*, %struct.ip_fw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
