; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_reverse_patches.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_reverse_patches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fragment*, %struct.patch* }
%struct.fragment = type { i32, i32, i32, i32, %struct.fragment* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.patch*)* @reverse_patches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse_patches(%struct.patch* %0) #0 {
  %2 = alloca %struct.patch*, align 8
  %3 = alloca %struct.fragment*, align 8
  store %struct.patch* %0, %struct.patch** %2, align 8
  br label %4

4:                                                ; preds = %69, %1
  %5 = load %struct.patch*, %struct.patch** %2, align 8
  %6 = icmp ne %struct.patch* %5, null
  br i1 %6, label %7, label %73

7:                                                ; preds = %4
  %8 = load %struct.patch*, %struct.patch** %2, align 8
  %9 = getelementptr inbounds %struct.patch, %struct.patch* %8, i32 0, i32 10
  %10 = load %struct.fragment*, %struct.fragment** %9, align 8
  store %struct.fragment* %10, %struct.fragment** %3, align 8
  %11 = load %struct.patch*, %struct.patch** %2, align 8
  %12 = getelementptr inbounds %struct.patch, %struct.patch* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.patch*, %struct.patch** %2, align 8
  %15 = getelementptr inbounds %struct.patch, %struct.patch* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @SWAP(i32 %13, i32 %16)
  %18 = load %struct.patch*, %struct.patch** %2, align 8
  %19 = getelementptr inbounds %struct.patch, %struct.patch* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.patch*, %struct.patch** %2, align 8
  %22 = getelementptr inbounds %struct.patch, %struct.patch* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @SWAP(i32 %20, i32 %23)
  %25 = load %struct.patch*, %struct.patch** %2, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.patch*, %struct.patch** %2, align 8
  %29 = getelementptr inbounds %struct.patch, %struct.patch* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SWAP(i32 %27, i32 %30)
  %32 = load %struct.patch*, %struct.patch** %2, align 8
  %33 = getelementptr inbounds %struct.patch, %struct.patch* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.patch*, %struct.patch** %2, align 8
  %36 = getelementptr inbounds %struct.patch, %struct.patch* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @SWAP(i32 %34, i32 %37)
  %39 = load %struct.patch*, %struct.patch** %2, align 8
  %40 = getelementptr inbounds %struct.patch, %struct.patch* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.patch*, %struct.patch** %2, align 8
  %43 = getelementptr inbounds %struct.patch, %struct.patch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @SWAP(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %64, %7
  %47 = load %struct.fragment*, %struct.fragment** %3, align 8
  %48 = icmp ne %struct.fragment* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load %struct.fragment*, %struct.fragment** %3, align 8
  %51 = getelementptr inbounds %struct.fragment, %struct.fragment* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fragment*, %struct.fragment** %3, align 8
  %54 = getelementptr inbounds %struct.fragment, %struct.fragment* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @SWAP(i32 %52, i32 %55)
  %57 = load %struct.fragment*, %struct.fragment** %3, align 8
  %58 = getelementptr inbounds %struct.fragment, %struct.fragment* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fragment*, %struct.fragment** %3, align 8
  %61 = getelementptr inbounds %struct.fragment, %struct.fragment* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @SWAP(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %49
  %65 = load %struct.fragment*, %struct.fragment** %3, align 8
  %66 = getelementptr inbounds %struct.fragment, %struct.fragment* %65, i32 0, i32 4
  %67 = load %struct.fragment*, %struct.fragment** %66, align 8
  store %struct.fragment* %67, %struct.fragment** %3, align 8
  br label %46

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.patch*, %struct.patch** %2, align 8
  %71 = getelementptr inbounds %struct.patch, %struct.patch* %70, i32 0, i32 11
  %72 = load %struct.patch*, %struct.patch** %71, align 8
  store %struct.patch* %72, %struct.patch** %2, align 8
  br label %4

73:                                               ; preds = %4
  ret void
}

declare dso_local i32 @SWAP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
