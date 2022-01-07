; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_biba = type { i32 }

@MAC_BIBA_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@MAC_BIBA_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_biba*, %struct.mac_biba*)* @biba_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @biba_copy(%struct.mac_biba* %0, %struct.mac_biba* %1) #0 {
  %3 = alloca %struct.mac_biba*, align 8
  %4 = alloca %struct.mac_biba*, align 8
  store %struct.mac_biba* %0, %struct.mac_biba** %3, align 8
  store %struct.mac_biba* %1, %struct.mac_biba** %4, align 8
  %5 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %6 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAC_BIBA_FLAG_EFFECTIVE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %13 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %14 = call i32 @biba_copy_effective(%struct.mac_biba* %12, %struct.mac_biba* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %17 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAC_BIBA_FLAG_RANGE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.mac_biba*, %struct.mac_biba** %3, align 8
  %24 = load %struct.mac_biba*, %struct.mac_biba** %4, align 8
  %25 = call i32 @biba_copy_range(%struct.mac_biba* %23, %struct.mac_biba* %24)
  br label %26

26:                                               ; preds = %22, %15
  ret void
}

declare dso_local i32 @biba_copy_effective(%struct.mac_biba*, %struct.mac_biba*) #1

declare dso_local i32 @biba_copy_range(%struct.mac_biba*, %struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
