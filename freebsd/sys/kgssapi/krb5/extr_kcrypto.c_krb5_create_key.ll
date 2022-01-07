; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_create_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_create_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { i8*, i32, %struct.krb5_encryption_class* }
%struct.krb5_encryption_class = type { i32, i32 (%struct.krb5_key_state*)* }

@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.krb5_key_state* @krb5_create_key(%struct.krb5_encryption_class* %0) #0 {
  %2 = alloca %struct.krb5_encryption_class*, align 8
  %3 = alloca %struct.krb5_key_state*, align 8
  store %struct.krb5_encryption_class* %0, %struct.krb5_encryption_class** %2, align 8
  %4 = load i32, i32* @M_GSSAPI, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = call i8* @malloc(i32 24, i32 %4, i32 %5)
  %7 = bitcast i8* %6 to %struct.krb5_key_state*
  store %struct.krb5_key_state* %7, %struct.krb5_key_state** %3, align 8
  %8 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %2, align 8
  %9 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %10 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %9, i32 0, i32 2
  store %struct.krb5_encryption_class* %8, %struct.krb5_encryption_class** %10, align 8
  %11 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %12 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %11, i32 0, i32 1
  %13 = call i32 @refcount_init(i32* %12, i32 1)
  %14 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %2, align 8
  %15 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @M_GSSAPI, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = call i8* @malloc(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %21 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %2, align 8
  %23 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %22, i32 0, i32 1
  %24 = load i32 (%struct.krb5_key_state*)*, i32 (%struct.krb5_key_state*)** %23, align 8
  %25 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  %26 = call i32 %24(%struct.krb5_key_state* %25)
  %27 = load %struct.krb5_key_state*, %struct.krb5_key_state** %3, align 8
  ret %struct.krb5_key_state* %27
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
