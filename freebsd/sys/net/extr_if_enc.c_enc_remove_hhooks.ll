; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_enc.c_enc_remove_hhooks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_enc.c_enc_remove_hhooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_softc = type { i32 }
%struct.hookinfo = type { i8*, i32, %struct.enc_softc*, i32*, i32 }

@enc_hhook = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@HHOOK_IPSEC_INET = common dso_local global i64 0, align 8
@HHOOK_IPSEC_INET6 = common dso_local global i64 0, align 8
@HHOOK_TYPE_IPSEC_IN = common dso_local global i8* null, align 8
@HHOOK_TYPE_IPSEC_OUT = common dso_local global i8* null, align 8
@V_ipsec_hhh_in = common dso_local global i32* null, align 8
@V_ipsec_hhh_out = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enc_softc*)* @enc_remove_hhooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc_remove_hhooks(%struct.enc_softc* %0) #0 {
  %2 = alloca %struct.enc_softc*, align 8
  %3 = alloca %struct.hookinfo, align 8
  store %struct.enc_softc* %0, %struct.enc_softc** %2, align 8
  %4 = load i32, i32* @enc_hhook, align 4
  %5 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %3, i32 0, i32 4
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %3, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = load %struct.enc_softc*, %struct.enc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %3, i32 0, i32 2
  store %struct.enc_softc* %7, %struct.enc_softc** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
