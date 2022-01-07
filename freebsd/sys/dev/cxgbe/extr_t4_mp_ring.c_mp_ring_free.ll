; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_mp_ring_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_mp_ring.c_mp_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ring = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_ring_free(%struct.mp_ring* %0) #0 {
  %2 = alloca %struct.mp_ring*, align 8
  store %struct.mp_ring* %0, %struct.mp_ring** %2, align 8
  %3 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %4 = icmp eq %struct.mp_ring* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %72

6:                                                ; preds = %1
  %7 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %8 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %13 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @counter_u64_free(i32* %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %18 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %23 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @counter_u64_free(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %28 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %33 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @counter_u64_free(i32* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %38 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %43 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @counter_u64_free(i32* %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %48 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %53 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @counter_u64_free(i32* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %58 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %63 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @counter_u64_free(i32* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %68 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %69 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @free(%struct.mp_ring* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %5
  ret void
}

declare dso_local i32 @counter_u64_free(i32*) #1

declare dso_local i32 @free(%struct.mp_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
