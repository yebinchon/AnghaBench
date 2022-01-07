; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.h_krb5_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.h_krb5_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.krb5_key_state*, i32, %struct.mbuf*, i64, i64, i64)* }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, i32, %struct.mbuf*, i64, i64, i64)* @krb5_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krb5_checksum(%struct.krb5_key_state* %0, i32 %1, %struct.mbuf* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.krb5_key_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %14 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.krb5_key_state*, i32, %struct.mbuf*, i64, i64, i64)*, i32 (%struct.krb5_key_state*, i32, %struct.mbuf*, i64, i64, i64)** %16, align 8
  %18 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 %17(%struct.krb5_key_state* %18, i32 %19, %struct.mbuf* %20, i64 %21, i64 %22, i64 %23)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
