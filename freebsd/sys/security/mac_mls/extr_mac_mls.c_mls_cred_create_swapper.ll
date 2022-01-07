; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_cred_create_swapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_cred_create_swapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.mac_mls = type { i32 }

@MAC_MLS_TYPE_EQUAL = common dso_local global i32 0, align 4
@MAC_MLS_TYPE_LOW = common dso_local global i32 0, align 4
@MAC_MLS_TYPE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucred*)* @mls_cred_create_swapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mls_cred_create_swapper(%struct.ucred* %0) #0 {
  %2 = alloca %struct.ucred*, align 8
  %3 = alloca %struct.mac_mls*, align 8
  store %struct.ucred* %0, %struct.ucred** %2, align 8
  %4 = load %struct.ucred*, %struct.ucred** %2, align 8
  %5 = getelementptr inbounds %struct.ucred, %struct.ucred* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.mac_mls* @SLOT(i32 %6)
  store %struct.mac_mls* %7, %struct.mac_mls** %3, align 8
  %8 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %9 = load i32, i32* @MAC_MLS_TYPE_EQUAL, align 4
  %10 = call i32 @mls_set_effective(%struct.mac_mls* %8, i32 %9, i32 0, i32* null)
  %11 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %12 = load i32, i32* @MAC_MLS_TYPE_LOW, align 4
  %13 = load i32, i32* @MAC_MLS_TYPE_HIGH, align 4
  %14 = call i32 @mls_set_range(%struct.mac_mls* %11, i32 %12, i32 0, i32* null, i32 %13, i32 0, i32* null)
  ret void
}

declare dso_local %struct.mac_mls* @SLOT(i32) #1

declare dso_local i32 @mls_set_effective(%struct.mac_mls*, i32, i32, i32*) #1

declare dso_local i32 @mls_set_range(%struct.mac_mls*, i32, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
