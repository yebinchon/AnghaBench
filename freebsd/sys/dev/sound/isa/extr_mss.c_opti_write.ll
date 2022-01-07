; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_opti_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*, i32, i32)* @opti_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opti_write(%struct.mss_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mss_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %8 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %11 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %14 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @port_wr(i32 %9, i32 %12, i32 %15)
  %17 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %18 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %75 [
    i32 129, label %20
    i32 128, label %54
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 7
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %25 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %28 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @port_wr(i32 %26, i32 %29, i32 %30)
  %32 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %33 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %36 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %39 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @port_wr(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %43 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @port_wr(i32 %44, i32 9, i32 %45)
  br label %75

47:                                               ; preds = %20
  %48 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %49 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @port_wr(i32 %50, i32 %51, i32 %52)
  br label %75

54:                                               ; preds = %3
  %55 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %56 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @port_wr(i32 %57, i32 0, i32 %58)
  %60 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %61 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %64 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %67 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @port_wr(i32 %62, i32 %65, i32 %68)
  %70 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %71 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @port_wr(i32 %72, i32 1, i32 %73)
  br label %75

75:                                               ; preds = %23, %3, %54, %47
  ret void
}

declare dso_local i32 @port_wr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
