; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_partition/extr_mac_partition.c_partition_cred_check_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_partition/extr_mac_partition.c_partition_cred_check_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.label = type { i32 }

@PRIV_MAC_PARTITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.label*)* @partition_cred_check_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_cred_check_relabel(%struct.ucred* %0, %struct.label* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.label*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.label* %1, %struct.label** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.label*, %struct.label** %4, align 8
  %7 = call i64 @SLOT(%struct.label* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.ucred*, %struct.ucred** %3, align 8
  %11 = load i32, i32* @PRIV_MAC_PARTITION, align 4
  %12 = call i32 @priv_check_cred(%struct.ucred* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

declare dso_local i64 @SLOT(%struct.label*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
