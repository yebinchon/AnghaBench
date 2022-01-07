; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_srchash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_srchash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_iflist = type { i32 }
%struct.sockaddr = type { i32 }

@FNV1_32_INIT = common dso_local global i32 0, align 4
@IPSEC_HASH_SIZE = common dso_local global i32 0, align 4
@V_ipsec4_srchtbl = common dso_local global %struct.ipsec_iflist* null, align 8
@V_ipsec6_srchtbl = common dso_local global %struct.ipsec_iflist* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipsec_iflist* (%struct.sockaddr*)* @ipsec_srchash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipsec_iflist* @ipsec_srchash(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  %4 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %5 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
  ]

7:                                                ; preds = %1
  ret %struct.ipsec_iflist* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
