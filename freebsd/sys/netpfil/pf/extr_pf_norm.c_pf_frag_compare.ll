; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_frag_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_frag_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_fragment*, %struct.pf_fragment*)* @pf_frag_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_frag_compare(%struct.pf_fragment* %0, %struct.pf_fragment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_fragment*, align 8
  %5 = alloca %struct.pf_fragment*, align 8
  %6 = alloca i32, align 4
  store %struct.pf_fragment* %0, %struct.pf_fragment** %4, align 8
  store %struct.pf_fragment* %1, %struct.pf_fragment** %5, align 8
  %7 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %8 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %11 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %19 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %22 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %64

28:                                               ; preds = %17
  %29 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %30 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %33 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %64

39:                                               ; preds = %28
  %40 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %41 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %40, i32 0, i32 4
  %42 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %43 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %42, i32 0, i32 4
  %44 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %45 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pf_addr_cmp(i32* %41, i32* %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %64

51:                                               ; preds = %39
  %52 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %53 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %52, i32 0, i32 3
  %54 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %55 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %54, i32 0, i32 3
  %56 = load %struct.pf_fragment*, %struct.pf_fragment** %4, align 8
  %57 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pf_addr_cmp(i32* %53, i32* %55, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %61, %49, %37, %26, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @pf_addr_cmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
