; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_ifnet_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_ifnet_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.label = type { i32 }
%struct.mac_mls = type { i32 }

@IFT_LOOP = common dso_local global i64 0, align 8
@MAC_MLS_TYPE_EQUAL = common dso_local global i32 0, align 4
@MAC_MLS_TYPE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.label*)* @mls_ifnet_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mls_ifnet_create(%struct.ifnet* %0, %struct.label* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.label*, align 8
  %5 = alloca %struct.mac_mls*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.label* %1, %struct.label** %4, align 8
  %7 = load %struct.label*, %struct.label** %4, align 8
  %8 = call %struct.mac_mls* @SLOT(%struct.label* %7)
  store %struct.mac_mls* %8, %struct.mac_mls** %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IFT_LOOP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @MAC_MLS_TYPE_EQUAL, align 4
  store i32 %15, i32* %6, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MAC_MLS_TYPE_LOW, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.mac_mls*, %struct.mac_mls** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mls_set_effective(%struct.mac_mls* %19, i32 %20, i32 0, i32* null)
  %22 = load %struct.mac_mls*, %struct.mac_mls** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mls_set_range(%struct.mac_mls* %22, i32 %23, i32 0, i32* null, i32 %24, i32 0, i32* null)
  ret void
}

declare dso_local %struct.mac_mls* @SLOT(%struct.label*) #1

declare dso_local i32 @mls_set_effective(%struct.mac_mls*, i32, i32, i32*) #1

declare dso_local i32 @mls_set_range(%struct.mac_mls*, i32, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
