; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opti_read(%struct.mss_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mss_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %7 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %10 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %13 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @port_wr(i32 %8, i32 %11, i32 %14)
  %16 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %17 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %71 [
    i32 129, label %19
    i32 128, label %51
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 7
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %24 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %27 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @port_wr(i32 %25, i32 %28, i32 %29)
  %31 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %32 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %35 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %38 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @port_wr(i32 %33, i32 %36, i32 %39)
  %41 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %42 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @port_rd(i32 %43, i32 9)
  store i32 %44, i32* %3, align 4
  br label %72

45:                                               ; preds = %19
  %46 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %47 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @port_rd(i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %2
  %52 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %53 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @port_wr(i32 %54, i32 0, i32 %55)
  %57 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %58 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %61 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %64 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @port_wr(i32 %59, i32 %62, i32 %65)
  %67 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %68 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @port_rd(i32 %69, i32 1)
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %51, %45, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @port_wr(i32, i32, i32) #1

declare dso_local i32 @port_rd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
