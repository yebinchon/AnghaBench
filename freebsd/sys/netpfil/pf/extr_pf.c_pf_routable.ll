; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_routable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_routable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { i32, i32 }
%struct.pfi_kif = type { %struct.ifnet* }
%struct.ifnet = type { i64 }

@IFT_ENC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_routable(%struct.pf_addr* %0, i32 %1, %struct.pfi_kif* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfi_kif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifnet*, align 8
  store %struct.pf_addr* %0, %struct.pf_addr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.pf_addr*, %struct.pf_addr** %6, align 8
  %15 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %14, i32 0, i32 1
  %16 = call i64 @IN6_IS_SCOPE_EMBED(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %58

19:                                               ; preds = %13, %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 129
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %58

26:                                               ; preds = %22, %19
  %27 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %28 = icmp ne %struct.pfi_kif* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %31 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %30, i32 0, i32 0
  %32 = load %struct.ifnet*, %struct.ifnet** %31, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IFT_ENC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %58

38:                                               ; preds = %29, %26
  store %struct.ifnet* null, %struct.ifnet** %10, align 8
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %40 [
  ]

40:                                               ; preds = %38
  %41 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %42 = icmp eq %struct.pfi_kif* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %58

44:                                               ; preds = %40
  %45 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %46 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %45, i32 0, i32 0
  %47 = load %struct.ifnet*, %struct.ifnet** %46, align 8
  %48 = icmp eq %struct.ifnet* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %58

50:                                               ; preds = %44
  %51 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %52 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %51, i32 0, i32 0
  %53 = load %struct.ifnet*, %struct.ifnet** %52, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %55 = icmp eq %struct.ifnet* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %58

57:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %56, %49, %43, %37, %25, %18
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @IN6_IS_SCOPE_EMBED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
