; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcbtoxinpcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcb.c_in_pcbtoxinpcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.xinpcb = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbtoxinpcb(%struct.inpcb* %0, %struct.xinpcb* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.xinpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.xinpcb* %1, %struct.xinpcb** %4, align 8
  %5 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %6 = call i32 @bzero(%struct.xinpcb* %5, i32 80)
  %7 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %8 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %7, i32 0, i32 0
  store i32 80, i32* %8, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 16
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %15 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %14, i32 0, i32 16
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %18 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %17, i32 0, i32 17
  %19 = call i32 @sotoxsocket(i64 %16, i32* %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 15
  %23 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %24 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %23, i32 0, i32 16
  %25 = call i32 @bcopy(i32* %22, i32* %24, i32 4)
  %26 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %30 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %32 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %31, i32 0, i32 13
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %35 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %40 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %39, i32 0, i32 14
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %45 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %47 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %50 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  %51 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %55 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %60 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %62 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %65 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %67 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %70 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %72 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %75 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %77 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %80 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %82 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %85 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %87 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %90 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %92 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %95 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %97 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.xinpcb*, %struct.xinpcb** %4, align 8
  %100 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.xinpcb*, i32) #1

declare dso_local i32 @sotoxsocket(i64, i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
