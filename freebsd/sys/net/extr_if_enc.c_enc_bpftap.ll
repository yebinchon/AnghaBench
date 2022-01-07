; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_enc.c_enc_bpftap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_enc.c_enc_bpftap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.secasvar = type { i64, i64, i32 }
%struct.enchdr = type { i32, i32, i32 }

@HHOOK_TYPE_IPSEC_IN = common dso_local global i64 0, align 8
@V_bpf_mask_in = common dso_local global i32 0, align 4
@HHOOK_TYPE_IPSEC_OUT = common dso_local global i64 0, align 8
@V_bpf_mask_out = common dso_local global i32 0, align 4
@SADB_EALG_NONE = common dso_local global i64 0, align 8
@M_CONF = common dso_local global i32 0, align 4
@SADB_AALG_NONE = common dso_local global i64 0, align 8
@M_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.mbuf*, %struct.secasvar*, i64, i32, i32)* @enc_bpftap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc_bpftap(%struct.ifnet* %0, %struct.mbuf* %1, %struct.secasvar* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.secasvar*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.enchdr, align 4
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store %struct.secasvar* %2, %struct.secasvar** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @HHOOK_TYPE_IPSEC_IN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @V_bpf_mask_in, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %76

23:                                               ; preds = %17, %6
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @HHOOK_TYPE_IPSEC_OUT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @V_bpf_mask_out, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %76

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @bpf_peers_present(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %76

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = getelementptr inbounds %struct.enchdr, %struct.enchdr* %13, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %45 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.enchdr, %struct.enchdr* %13, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.enchdr, %struct.enchdr* %13, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %50 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SADB_EALG_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load i32, i32* @M_CONF, align 4
  %56 = getelementptr inbounds %struct.enchdr, %struct.enchdr* %13, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %41
  %60 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  %61 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SADB_AALG_NONE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* @M_AUTH, align 4
  %67 = getelementptr inbounds %struct.enchdr, %struct.enchdr* %13, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %75 = call i32 @bpf_mtap2(i32 %73, %struct.enchdr* %13, i32 12, %struct.mbuf* %74)
  br label %76

76:                                               ; preds = %70, %40, %32, %22
  ret void
}

declare dso_local i64 @bpf_peers_present(i32) #1

declare dso_local i32 @bpf_mtap2(i32, %struct.enchdr*, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
