; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_release_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_release_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@XLP_NTXFRAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"cpu %d: ERR Tx packet paddr %jx, mag %jx, desc %jx mbuf %jx\0A\00", align 1
@nl_tx_desc_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nlm_xlpge_release_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xlpge_release_mbuf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @XLP_NTXFRAGS, align 4
  %7 = sub nsw i32 %6, 3
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @nlm_paddr_ld(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @nlm_paddr_ld(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @nlm_paddr_ld(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 15731629
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = call i32 (...) @nlm_cpuid()
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  br label %45

35:                                               ; preds = %1
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.mbuf*
  %39 = call i32 @m_freem(%struct.mbuf* %38)
  %40 = load i32, i32* @nl_tx_desc_zone, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @uma_zfree(i32 %40, i8* %43)
  br label %45

45:                                               ; preds = %35, %28
  ret void
}

declare dso_local i32 @nlm_paddr_ld(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlm_cpuid(...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @uma_zfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
