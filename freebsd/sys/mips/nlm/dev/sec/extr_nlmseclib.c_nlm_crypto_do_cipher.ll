; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_crypto_do_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_crypto_do_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_softc = type { i32 }
%struct.xlp_sec_command = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cryptodesc* }
%struct.cryptodesc = type { i32, i32, i64 }

@NLM_CIPHER_3DES = common dso_local global i64 0, align 8
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@NLM_HASH_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_crypto_do_cipher(%struct.xlp_sec_softc* %0, %struct.xlp_sec_command* %1) #0 {
  %3 = alloca %struct.xlp_sec_softc*, align 8
  %4 = alloca %struct.xlp_sec_command*, align 8
  %5 = alloca %struct.cryptodesc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.xlp_sec_softc* %0, %struct.xlp_sec_softc** %3, align 8
  store %struct.xlp_sec_command* %1, %struct.xlp_sec_command** %4, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %11 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %10, i32 0, i32 9
  %12 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  store %struct.cryptodesc* %12, %struct.cryptodesc** %5, align 8
  %13 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %14 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %18 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NLM_CIPHER_3DES, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %2
  %23 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %24 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %22
  %30 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %31 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %35 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %29, %22
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %58 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NLM_HASH_BYPASS, align 4
  %61 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %62 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %65 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %69 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 3
  %72 = call i32 @nlm_crypto_fill_pkt_ctrl(i32 %59, i32 0, i32 %60, i32 0, i64 %63, i32 %66, i8* %67, i32 %71, i32* null, i32 0)
  %73 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %74 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %77 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %80 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %88 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %91 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %94 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %97 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @nlm_crypto_fill_cipher_pkt_param(i32 %75, i32 %78, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98)
  %100 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %101 = call i32 @nlm_crypto_form_srcdst_segs(%struct.xlp_sec_command* %100)
  %102 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %3, align 8
  %103 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %104 = call i32 @nlm_crypto_complete_sec_request(%struct.xlp_sec_softc* %102, %struct.xlp_sec_command* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @nlm_crypto_fill_pkt_ctrl(i32, i32, i32, i32, i64, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @nlm_crypto_fill_cipher_pkt_param(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_crypto_form_srcdst_segs(%struct.xlp_sec_command*) #1

declare dso_local i32 @nlm_crypto_complete_sec_request(%struct.xlp_sec_softc*, %struct.xlp_sec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
