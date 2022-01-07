; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_hash_flow_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_hash_flow_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhashentry = type { i64 }
%struct.fhashentry4 = type { i32 }
%struct.fhashentry6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fhashentry*, i32)* @hash_flow_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_flow_ent(%struct.fhashentry* %0, i32 %1) #0 {
  %3 = alloca %struct.fhashentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fhashentry* %0, %struct.fhashentry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fhashentry*, %struct.fhashentry** %3, align 8
  %7 = getelementptr inbounds %struct.fhashentry, %struct.fhashentry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.fhashentry*, %struct.fhashentry** %3, align 8
  %13 = bitcast %struct.fhashentry* %12 to %struct.fhashentry4*
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @hash_flow4(%struct.fhashentry4* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.fhashentry*, %struct.fhashentry** %3, align 8
  %18 = bitcast %struct.fhashentry* %17 to %struct.fhashentry6*
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @hash_flow6(%struct.fhashentry6* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @hash_flow4(%struct.fhashentry4*, i32) #1

declare dso_local i32 @hash_flow6(%struct.fhashentry6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
