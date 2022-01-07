; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_framework.c_mac_check_structmac_consistent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_framework.c_mac_check_structmac_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac = type { i32 }

@MAC_MAX_LABEL_BUF_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_check_structmac_consistent(%struct.mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac*, align 8
  store %struct.mac* %0, %struct.mac** %3, align 8
  %4 = load %struct.mac*, %struct.mac** %3, align 8
  %5 = getelementptr inbounds %struct.mac, %struct.mac* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAC_MAX_LABEL_BUF_LEN, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.mac*, %struct.mac** %3, align 8
  %11 = getelementptr inbounds %struct.mac, %struct.mac* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ule i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
