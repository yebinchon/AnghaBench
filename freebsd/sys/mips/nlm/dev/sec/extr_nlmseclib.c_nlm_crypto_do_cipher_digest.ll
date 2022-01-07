; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_crypto_do_cipher_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_crypto_do_cipher_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_softc = type { i32 }
%struct.xlp_sec_command = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cryptodesc*, %struct.cryptodesc* }
%struct.cryptodesc = type { i32, i32, i64 }

@NLM_CIPHER_3DES = common dso_local global i64 0, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_crypto_do_cipher_digest(%struct.xlp_sec_softc* %0, %struct.xlp_sec_command* %1) #0 {
  %3 = alloca %struct.xlp_sec_softc*, align 8
  %4 = alloca %struct.xlp_sec_command*, align 8
  %5 = alloca %struct.cryptodesc*, align 8
  %6 = alloca %struct.cryptodesc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.xlp_sec_softc* %0, %struct.xlp_sec_softc** %3, align 8
  store %struct.xlp_sec_command* %1, %struct.xlp_sec_command** %4, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %5, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %12 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %11, i32 0, i32 17
  %13 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* %13, %struct.cryptodesc** %5, align 8
  %14 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %15 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %14, i32 0, i32 16
  %16 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  store %struct.cryptodesc* %16, %struct.cryptodesc** %6, align 8
  %17 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %18 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %7, align 8
  %21 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %22 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NLM_CIPHER_3DES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %2
  %27 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %28 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %26
  %34 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %35 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %39 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %38, i32 0, i32 15
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %33, %26
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %62 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %65 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %71 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %74 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %77 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %80 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %84 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 3
  %87 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %88 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %91 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 3
  %94 = call i32 @nlm_crypto_fill_pkt_ctrl(i32 %63, i32 %69, i32 %72, i32 %75, i64 %78, i32 %81, i8* %82, i32 %86, i64 %89, i32 %93)
  %95 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %96 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %99 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %102 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %110 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %113 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %116 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %119 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %122 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %125 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %128 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %131 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %134 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @nlm_crypto_fill_cipher_auth_pkt_param(i32 %97, i32 %100, i32 %108, i32 %111, i32 %114, i32 %117, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i8* %136)
  %138 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %139 = call i32 @nlm_crypto_form_srcdst_segs(%struct.xlp_sec_command* %138)
  %140 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %3, align 8
  %141 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %142 = call i32 @nlm_crypto_complete_sec_request(%struct.xlp_sec_softc* %140, %struct.xlp_sec_command* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i32 @nlm_crypto_fill_pkt_ctrl(i32, i32, i32, i32, i64, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @nlm_crypto_fill_cipher_auth_pkt_param(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @nlm_crypto_form_srcdst_segs(%struct.xlp_sec_command*) #1

declare dso_local i32 @nlm_crypto_complete_sec_request(%struct.xlp_sec_softc*, %struct.xlp_sec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
