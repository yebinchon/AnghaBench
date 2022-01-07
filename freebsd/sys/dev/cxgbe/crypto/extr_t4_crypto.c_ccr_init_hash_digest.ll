; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_init_hash_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_init_hash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.auth_hash* }
%struct.auth_hash = type { i32 (%union.authctx*)* }
%union.authctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccr_session*, i32)* @ccr_init_hash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccr_init_hash_digest(%struct.ccr_session* %0, i32 %1) #0 {
  %3 = alloca %struct.ccr_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.authctx, align 4
  %6 = alloca %struct.auth_hash*, align 8
  store %struct.ccr_session* %0, %struct.ccr_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ccr_session*, %struct.ccr_session** %3, align 8
  %8 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.auth_hash*, %struct.auth_hash** %9, align 8
  store %struct.auth_hash* %10, %struct.auth_hash** %6, align 8
  %11 = load %struct.auth_hash*, %struct.auth_hash** %6, align 8
  %12 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %11, i32 0, i32 0
  %13 = load i32 (%union.authctx*)*, i32 (%union.authctx*)** %12, align 8
  %14 = call i32 %13(%union.authctx* %5)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ccr_session*, %struct.ccr_session** %3, align 8
  %17 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @t4_copy_partial_hash(i32 %15, %union.authctx* %5, i32 %19)
  ret void
}

declare dso_local i32 @t4_copy_partial_hash(i32, %union.authctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
