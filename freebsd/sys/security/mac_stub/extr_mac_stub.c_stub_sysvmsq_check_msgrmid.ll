; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_stub/extr_mac_stub.c_stub_sysvmsq_check_msgrmid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_stub/extr_mac_stub.c_stub_sysvmsq_check_msgrmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.msg = type { i32 }
%struct.label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.msg*, %struct.label*)* @stub_sysvmsq_check_msgrmid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stub_sysvmsq_check_msgrmid(%struct.ucred* %0, %struct.msg* %1, %struct.label* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.label*, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.msg* %1, %struct.msg** %5, align 8
  store %struct.label* %2, %struct.label** %6, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
