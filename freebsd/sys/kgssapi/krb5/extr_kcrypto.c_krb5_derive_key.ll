; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_derive_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_key_state = type { %struct.krb5_encryption_class* }
%struct.krb5_encryption_class = type { i32, i32 }
%struct.mbuf = type { i32, i32* }

@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.krb5_key_state* @krb5_derive_key(%struct.krb5_key_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.krb5_key_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.krb5_key_state*, align 8
  %8 = alloca %struct.krb5_encryption_class*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.krb5_key_state* %0, %struct.krb5_key_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.krb5_key_state*, %struct.krb5_key_state** %4, align 8
  %17 = getelementptr inbounds %struct.krb5_key_state, %struct.krb5_key_state* %16, i32 0, i32 0
  %18 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %17, align 8
  store %struct.krb5_encryption_class* %18, %struct.krb5_encryption_class** %8, align 8
  %19 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %20 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @M_GSSAPI, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i32* @malloc(i32 %21, i32 %22, i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %27 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @krb5_n_fold(i32* %25, i32 %28, i8* %29, i64 %30)
  %32 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %33 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 8
  %36 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %37 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @roundup(i32 %35, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @M_GSSAPI, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = call i32* @malloc(i32 %40, i32 %41, i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = load i32, i32* @MT_DATA, align 4
  %47 = call i32 @MGET(%struct.mbuf* %44, i32 %45, i32 %46)
  %48 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %49 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %15, align 4
  %53 = load i32*, i32** %10, align 8
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %9, align 8
  store i32* %54, i32** %12, align 8
  br label %55

55:                                               ; preds = %82, %3
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %55
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %65 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bcopy(i32* %60, i32* %63, i32 %66)
  %68 = load %struct.krb5_key_state*, %struct.krb5_key_state** %4, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %70 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %71 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @krb5_encrypt(%struct.krb5_key_state* %68, %struct.mbuf* %69, i32 0, i32 %72, i32* null, i32 0)
  %74 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %79 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bcopy(i32* %76, i32* %77, i32 %80)
  br label %82

82:                                               ; preds = %59
  %83 = load i32*, i32** %11, align 8
  store i32* %83, i32** %12, align 8
  %84 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %85 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %90 = getelementptr inbounds %struct.krb5_encryption_class, %struct.krb5_encryption_class* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %11, align 8
  br label %55

95:                                               ; preds = %55
  %96 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %97 = call i32 @m_free(%struct.mbuf* %96)
  %98 = load %struct.krb5_encryption_class*, %struct.krb5_encryption_class** %8, align 8
  %99 = call %struct.krb5_key_state* @krb5_create_key(%struct.krb5_encryption_class* %98)
  store %struct.krb5_key_state* %99, %struct.krb5_key_state** %7, align 8
  %100 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @krb5_random_to_key(%struct.krb5_key_state* %100, i32* %101)
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* @M_GSSAPI, align 4
  %105 = call i32 @free(i32* %103, i32 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* @M_GSSAPI, align 4
  %108 = call i32 @free(i32* %106, i32 %107)
  %109 = load %struct.krb5_key_state*, %struct.krb5_key_state** %7, align 8
  ret %struct.krb5_key_state* %109
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @krb5_n_fold(i32*, i32, i8*, i64) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @krb5_encrypt(%struct.krb5_key_state*, %struct.mbuf*, i32, i32, i32*, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local %struct.krb5_key_state* @krb5_create_key(%struct.krb5_encryption_class*) #1

declare dso_local i32 @krb5_random_to_key(%struct.krb5_key_state*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
