; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_get_hmc_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_get_hmc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_context_ele = type { i64, i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.i40e_context_ele*, i32*)* @i40e_get_hmc_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_hmc_context(i32* %0, %struct.i40e_context_ele* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40e_context_ele*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.i40e_context_ele* %1, %struct.i40e_context_ele** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %57, %3
  %9 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %9, i64 %11
  %13 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %8
  %17 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %17, i64 %19
  %21 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %55 [
    i32 1, label %23
    i32 2, label %31
    i32 4, label %39
    i32 8, label %47
  ]

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %25, i64 %27
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @i40e_read_byte(i32* %24, %struct.i40e_context_ele* %28, i32* %29)
  br label %56

31:                                               ; preds = %16
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %33, i64 %35
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @i40e_read_word(i32* %32, %struct.i40e_context_ele* %36, i32* %37)
  br label %56

39:                                               ; preds = %16
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %41, i64 %43
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @i40e_read_dword(i32* %40, %struct.i40e_context_ele* %44, i32* %45)
  br label %56

47:                                               ; preds = %16
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %49, i64 %51
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @i40e_read_qword(i32* %48, %struct.i40e_context_ele* %52, i32* %53)
  br label %56

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55, %47, %39, %31, %23
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %8

60:                                               ; preds = %8
  %61 = load i32, i32* @I40E_SUCCESS, align 4
  ret i32 %61
}

declare dso_local i32 @i40e_read_byte(i32*, %struct.i40e_context_ele*, i32*) #1

declare dso_local i32 @i40e_read_word(i32*, %struct.i40e_context_ele*, i32*) #1

declare dso_local i32 @i40e_read_dword(i32*, %struct.i40e_context_ele*, i32*) #1

declare dso_local i32 @i40e_read_qword(i32*, %struct.i40e_context_ele*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
