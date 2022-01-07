; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_crypto_do_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmseclib.c_nlm_crypto_do_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_softc = type { i32 }
%struct.xlp_sec_command = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i32, i32 }

@NLM_CIPHER_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_crypto_do_digest(%struct.xlp_sec_softc* %0, %struct.xlp_sec_command* %1) #0 {
  %3 = alloca %struct.xlp_sec_softc*, align 8
  %4 = alloca %struct.xlp_sec_command*, align 8
  %5 = alloca %struct.cryptodesc*, align 8
  %6 = alloca i32, align 4
  store %struct.xlp_sec_softc* %0, %struct.xlp_sec_softc** %3, align 8
  store %struct.xlp_sec_command* %1, %struct.xlp_sec_command** %4, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %8 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %7, i32 0, i32 8
  %9 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  store %struct.cryptodesc* %9, %struct.cryptodesc** %5, align 8
  %10 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %11 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %14 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %20 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %23 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NLM_CIPHER_BYPASS, align 4
  %26 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %27 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cryptodesc*, %struct.cryptodesc** %5, align 8
  %30 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 3
  %33 = call i32 @nlm_crypto_fill_pkt_ctrl(i32 %12, i32 %18, i32 %21, i32 %24, i32 %25, i32 0, i32* null, i32 0, i32 %28, i32 %32)
  %34 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %35 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %38 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %41 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %44 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %47 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %50 = getelementptr inbounds %struct.xlp_sec_command, %struct.xlp_sec_command* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @nlm_crypto_fill_auth_pkt_param(i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i8* %52)
  %54 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %55 = call i32 @nlm_crypto_form_srcdst_segs(%struct.xlp_sec_command* %54)
  %56 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %3, align 8
  %57 = load %struct.xlp_sec_command*, %struct.xlp_sec_command** %4, align 8
  %58 = call i32 @nlm_crypto_complete_sec_request(%struct.xlp_sec_softc* %56, %struct.xlp_sec_command* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @nlm_crypto_fill_pkt_ctrl(i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @nlm_crypto_fill_auth_pkt_param(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @nlm_crypto_form_srcdst_segs(%struct.xlp_sec_command*) #1

declare dso_local i32 @nlm_crypto_complete_sec_request(%struct.xlp_sec_softc*, %struct.xlp_sec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
