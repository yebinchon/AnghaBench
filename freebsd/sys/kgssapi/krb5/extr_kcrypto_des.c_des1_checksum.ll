; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des.c_des1_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_des.c_des1_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { i32 }
%struct.mbuf = type { i32 }

@MD5Update_int = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, i32, %struct.mbuf*, i64, i64, i64)* @des1_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des1_checksum(%struct.krb5_key_state* %0, i32 %1, %struct.mbuf* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.krb5_key_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [16 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = call i32 @MD5Init(i32* %14)
  %16 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* @MD5Update_int, align 4
  %20 = call i32 @m_apply(%struct.mbuf* %16, i64 %17, i64 %18, i32 %19, i32* %14)
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %22 = call i32 @MD5Final(i8* %21, i32* %14)
  %23 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %25 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %26 = call i32 @des1_encrypt_1(%struct.krb5_key_state* %23, i32 0, i8* %24, i32 0, i32 16, i32* null, i32 %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i32 @m_copyback(%struct.mbuf* %27, i64 %30, i64 %31, i8* %33)
  ret void
}

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @m_apply(%struct.mbuf*, i64, i64, i32, i32*) #1

declare dso_local i32 @MD5Final(i8*, i32*) #1

declare dso_local i32 @des1_encrypt_1(%struct.krb5_key_state*, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
