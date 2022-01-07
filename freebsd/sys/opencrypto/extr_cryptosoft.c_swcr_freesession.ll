; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_freesession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptosoft.c_swcr_freesession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swcr_session = type { %struct.swcr_data*, i32 }
%struct.swcr_data = type { i32, i32, %struct.auth_hash*, i32, i32, i32, %struct.enc_xform* }
%struct.auth_hash = type { i32 }
%struct.enc_xform = type { i32 (i32*)* }

@M_CRYPTO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @swcr_freesession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swcr_freesession(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.swcr_session*, align 8
  %6 = alloca %struct.swcr_data*, align 8
  %7 = alloca %struct.enc_xform*, align 8
  %8 = alloca %struct.auth_hash*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.swcr_session* @crypto_get_driver_session(i32 %10)
  store %struct.swcr_session* %11, %struct.swcr_session** %5, align 8
  %12 = load %struct.swcr_session*, %struct.swcr_session** %5, align 8
  %13 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %12, i32 0, i32 1
  %14 = call i32 @mtx_destroy(i32* %13)
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %151, %2
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.swcr_session*, %struct.swcr_session** %5, align 8
  %18 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %17, i32 0, i32 0
  %19 = load %struct.swcr_data*, %struct.swcr_data** %18, align 8
  %20 = call i64 @nitems(%struct.swcr_data* %19)
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %154

22:                                               ; preds = %15
  %23 = load %struct.swcr_session*, %struct.swcr_session** %5, align 8
  %24 = getelementptr inbounds %struct.swcr_session, %struct.swcr_session* %23, i32 0, i32 0
  %25 = load %struct.swcr_data*, %struct.swcr_data** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %25, i64 %26
  store %struct.swcr_data* %27, %struct.swcr_data** %6, align 8
  %28 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %29 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %150 [
    i32 148, label %31
    i32 165, label %31
    i32 153, label %31
    i32 151, label %31
    i32 128, label %31
    i32 141, label %31
    i32 156, label %31
    i32 159, label %31
    i32 158, label %31
    i32 157, label %31
    i32 152, label %31
    i32 144, label %31
    i32 150, label %31
    i32 161, label %31
    i32 146, label %47
    i32 138, label %47
    i32 135, label %47
    i32 133, label %47
    i32 131, label %47
    i32 129, label %47
    i32 140, label %47
    i32 143, label %47
    i32 160, label %47
    i32 145, label %87
    i32 137, label %87
    i32 155, label %127
    i32 154, label %127
    i32 147, label %127
    i32 142, label %127
    i32 139, label %127
    i32 136, label %127
    i32 134, label %127
    i32 132, label %127
    i32 130, label %127
    i32 164, label %127
    i32 163, label %127
    i32 162, label %127
    i32 149, label %149
  ]

31:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %32 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %33 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %32, i32 0, i32 6
  %34 = load %struct.enc_xform*, %struct.enc_xform** %33, align 8
  store %struct.enc_xform* %34, %struct.enc_xform** %7, align 8
  %35 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %36 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.enc_xform*, %struct.enc_xform** %7, align 8
  %41 = getelementptr inbounds %struct.enc_xform, %struct.enc_xform* %40, i32 0, i32 0
  %42 = load i32 (i32*)*, i32 (i32*)** %41, align 8
  %43 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %44 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %43, i32 0, i32 5
  %45 = call i32 %42(i32* %44)
  br label %46

46:                                               ; preds = %39, %31
  br label %150

47:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22
  %48 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %49 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %48, i32 0, i32 2
  %50 = load %struct.auth_hash*, %struct.auth_hash** %49, align 8
  store %struct.auth_hash* %50, %struct.auth_hash** %8, align 8
  %51 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %52 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %57 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.auth_hash*, %struct.auth_hash** %8, align 8
  %60 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bzero(i32 %58, i32 %61)
  %63 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %64 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @M_CRYPTO_DATA, align 4
  %67 = call i32 @free(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %55, %47
  %69 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %70 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %75 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.auth_hash*, %struct.auth_hash** %8, align 8
  %78 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bzero(i32 %76, i32 %79)
  %81 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %82 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @M_CRYPTO_DATA, align 4
  %85 = call i32 @free(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %68
  br label %150

87:                                               ; preds = %22, %22
  %88 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %89 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %88, i32 0, i32 2
  %90 = load %struct.auth_hash*, %struct.auth_hash** %89, align 8
  store %struct.auth_hash* %90, %struct.auth_hash** %8, align 8
  %91 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %92 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %97 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.auth_hash*, %struct.auth_hash** %8, align 8
  %100 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @bzero(i32 %98, i32 %101)
  %103 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %104 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @M_CRYPTO_DATA, align 4
  %107 = call i32 @free(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %95, %87
  %109 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %110 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %115 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %118 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @bzero(i32 %116, i32 %119)
  %121 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %122 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @M_CRYPTO_DATA, align 4
  %125 = call i32 @free(i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %113, %108
  br label %150

127:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %128 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %129 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %128, i32 0, i32 2
  %130 = load %struct.auth_hash*, %struct.auth_hash** %129, align 8
  store %struct.auth_hash* %130, %struct.auth_hash** %8, align 8
  %131 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %132 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %127
  %136 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %137 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.auth_hash*, %struct.auth_hash** %8, align 8
  %140 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @explicit_bzero(i32 %138, i32 %141)
  %143 = load %struct.swcr_data*, %struct.swcr_data** %6, align 8
  %144 = getelementptr inbounds %struct.swcr_data, %struct.swcr_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @M_CRYPTO_DATA, align 4
  %147 = call i32 @free(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %135, %127
  br label %150

149:                                              ; preds = %22
  br label %150

150:                                              ; preds = %22, %149, %148, %126, %86, %46
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %9, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %9, align 8
  br label %15

154:                                              ; preds = %15
  ret void
}

declare dso_local %struct.swcr_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i64 @nitems(%struct.swcr_data*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @explicit_bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
