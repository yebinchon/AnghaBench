; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_arcfour.c_arcfour_derive_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_arcfour.c_arcfour_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ETYPE_ARCFOUR_HMAC_MD5_56 = common dso_local global i64 0, align 8
@__const.arcfour_derive_key.L40 = private unnamed_addr constant [14 x i8] c"fortybits\00\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_key_state*, i32, i8*)* @arcfour_derive_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcfour_derive_key(%struct.krb5_key_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.krb5_key_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca [14 x i8], align 1
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 24
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %11, i8* %12, align 1
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 16
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 %15, i8* %16, align 1
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 %19, i8* %20, align 1
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 0
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 %23, i8* %24, align 1
  %25 = load %struct.krb5_key_state*, %struct.krb5_key_state** %4, align 8
  %26 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ETYPE_ARCFOUR_HMAC_MD5_56, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %3
  %33 = bitcast [14 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.arcfour_derive_key.L40, i32 0, i32 0), i64 14, i1 false)
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %35 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 10
  %37 = call i32 @bcopy(i8* %34, i8* %36, i32 4)
  %38 = load %struct.krb5_key_state*, %struct.krb5_key_state** %4, align 8
  %39 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %8, i64 0, i64 0
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @arcfour_hmac(i32 %40, i8* %41, i32 14, i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 7
  %46 = call i32 @memset(i8* %45, i32 171, i32 9)
  br label %54

47:                                               ; preds = %3
  %48 = load %struct.krb5_key_state*, %struct.krb5_key_state** %4, align 8
  %49 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @arcfour_hmac(i32 %50, i8* %51, i32 4, i8* %52)
  br label %54

54:                                               ; preds = %47, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @arcfour_hmac(i32, i8*, i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
