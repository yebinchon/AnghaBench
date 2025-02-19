; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_arcfour.c_arcfour_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_arcfour.c_arcfour_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { i8* }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"signaturekey\00", align 1
@MD5Update_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, i32, %struct.mbuf*, i64, i64, i64)* @arcfour_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcfour_checksum(%struct.krb5_key_state* %0, i32 %1, %struct.mbuf* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.krb5_key_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca [4 x i8], align 1
  %16 = alloca [16 x i8], align 16
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %18 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %21 = call i32 @arcfour_hmac(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 13, i8* %20)
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 0
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %24, i8* %25, align 1
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 1
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 16
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 2
  store i8 %32, i8* %33, align 1
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 24
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 3
  store i8 %36, i8* %37, align 1
  %38 = call i32 @MD5Init(i32* %13)
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %40 = call i32 @MD5Update(i32* %13, i8* %39, i32 4)
  %41 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* @MD5Update_int, align 4
  %45 = call i32 @m_apply(%struct.mbuf* %41, i64 %42, i64 %43, i32 %44, i32* %13)
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %47 = call i32 @MD5Final(i8* %46, i32* %13)
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %51 = call i32 @arcfour_hmac(i8* %48, i8* %49, i32 16, i8* %50)
  %52 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %58 = call i32 @m_copyback(%struct.mbuf* %52, i64 %55, i64 %56, i8* %57)
  ret void
}

declare dso_local i32 @arcfour_hmac(i8*, i8*, i32, i8*) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i8*, i32) #1

declare dso_local i32 @m_apply(%struct.mbuf*, i64, i64, i32, i32*) #1

declare dso_local i32 @MD5Final(i8*, i32*) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
