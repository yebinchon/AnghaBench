; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_change_icmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_change_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_addr*, i32*, %struct.pf_addr*, %struct.pf_addr*, i32, i32*, i32*, i32*, i32*, i32, i32)* @pf_change_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_change_icmp(%struct.pf_addr* %0, i32* %1, %struct.pf_addr* %2, %struct.pf_addr* %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.pf_addr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.pf_addr*, align 8
  %15 = alloca %struct.pf_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.pf_addr, align 8
  %24 = alloca %struct.pf_addr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.pf_addr* %0, %struct.pf_addr** %12, align 8
  store i32* %1, i32** %13, align 8
  store %struct.pf_addr* %2, %struct.pf_addr** %14, align 8
  store %struct.pf_addr* %3, %struct.pf_addr** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %27 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %28 = load i32, i32* %22, align 4
  %29 = call i32 @PF_ACPY(%struct.pf_addr* %23, %struct.pf_addr* %27, i32 %28)
  %30 = load %struct.pf_addr*, %struct.pf_addr** %14, align 8
  %31 = icmp ne %struct.pf_addr* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %11
  %33 = load %struct.pf_addr*, %struct.pf_addr** %14, align 8
  %34 = load i32, i32* %22, align 4
  %35 = call i32 @PF_ACPY(%struct.pf_addr* %24, %struct.pf_addr* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %11
  %37 = load i32*, i32** %13, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %25, align 4
  %42 = load i32*, i32** %17, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %26, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %16, align 4
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %17, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32*, i32** %17, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %25, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %21, align 4
  %59 = call i32 @pf_cksum_fixup(i32 %54, i32 %55, i32 %57, i32 %58)
  %60 = load i32*, i32** %17, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %47
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %25, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pf_cksum_fixup(i32 %63, i32 %64, i32 %66, i32 0)
  %68 = load i32*, i32** %19, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load i32*, i32** %19, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %26, align 4
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pf_cksum_fixup(i32 %73, i32 %74, i32 %76, i32 0)
  %78 = load i32*, i32** %19, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %61
  br label %80

80:                                               ; preds = %79, %36
  %81 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %82 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %83 = load i32, i32* %22, align 4
  %84 = call i32 @PF_ACPY(%struct.pf_addr* %81, %struct.pf_addr* %82, i32 %83)
  %85 = load i32, i32* %22, align 4
  switch i32 %85, label %86 [
  ]

86:                                               ; preds = %80
  %87 = load %struct.pf_addr*, %struct.pf_addr** %14, align 8
  %88 = icmp ne %struct.pf_addr* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.pf_addr*, %struct.pf_addr** %14, align 8
  %91 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %92 = load i32, i32* %22, align 4
  %93 = call i32 @PF_ACPY(%struct.pf_addr* %90, %struct.pf_addr* %91, i32 %92)
  %94 = load i32, i32* %22, align 4
  switch i32 %94, label %95 [
  ]

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %86
  ret void
}

declare dso_local i32 @PF_ACPY(%struct.pf_addr*, %struct.pf_addr*, i32) #1

declare dso_local i32 @pf_cksum_fixup(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
