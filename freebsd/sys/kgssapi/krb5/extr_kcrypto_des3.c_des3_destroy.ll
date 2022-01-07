; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des3.c_des3_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des3.c_des3_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { %struct.des3_state* }
%struct.des3_state = type { i32, i64 }

@M_GSSAPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*)* @des3_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des3_destroy(%struct.krb5_key_state* %0) #0 {
  %2 = alloca %struct.krb5_key_state*, align 8
  %3 = alloca %struct.des3_state*, align 8
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %2, align 8
  %4 = load %struct.krb5_key_state*, %struct.krb5_key_state** %2, align 8
  %5 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %4, i32 0, i32 0
  %6 = load %struct.des3_state*, %struct.des3_state** %5, align 8
  store %struct.des3_state* %6, %struct.des3_state** %3, align 8
  %7 = load %struct.des3_state*, %struct.des3_state** %3, align 8
  %8 = getelementptr inbounds %struct.des3_state, %struct.des3_state* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.des3_state*, %struct.des3_state** %3, align 8
  %13 = getelementptr inbounds %struct.des3_state, %struct.des3_state* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @crypto_freesession(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.des3_state*, %struct.des3_state** %3, align 8
  %18 = getelementptr inbounds %struct.des3_state, %struct.des3_state* %17, i32 0, i32 0
  %19 = call i32 @mtx_destroy(i32* %18)
  %20 = load %struct.krb5_key_state*, %struct.krb5_key_state** %2, align 8
  %21 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %20, i32 0, i32 0
  %22 = load %struct.des3_state*, %struct.des3_state** %21, align 8
  %23 = load i32, i32* @M_GSSAPI, align 4
  %24 = call i32 @free(%struct.des3_state* %22, i32 %23)
  ret void
}

declare dso_local i32 @crypto_freesession(i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.des3_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
