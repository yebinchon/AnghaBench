; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_id.c_randomid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_id.c_randomid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomtab = type { i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i64, i64 }

@time_uptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.randomtab*)* @randomid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randomid(%struct.randomtab* %0) #0 {
  %2 = alloca %struct.randomtab*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.randomtab* %0, %struct.randomtab** %2, align 8
  %5 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %6 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %9 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @time_uptime, align 8
  %14 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %15 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %1
  %19 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %20 = call i32 @initid(%struct.randomtab* %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = call i32 (...) @arc4random()
  %23 = and i32 %22, 3
  store i32 %23, i32* %4, align 4
  %24 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %25 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %31 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %36 = call i32 @initid(%struct.randomtab* %35)
  br label %37

37:                                               ; preds = %34, %21
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %44 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %43, i32 0, i32 11
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %48 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %53 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = trunc i64 %55 to i32
  %57 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %58 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %56, %59
  %61 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %62 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %42
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %38

66:                                               ; preds = %38
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %70 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %74 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %77 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %80 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %83 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %88 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pmod(i32 %78, i64 %86, i32 %89)
  %91 = xor i32 %75, %90
  %92 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %93 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  ret i32 %95
}

declare dso_local i32 @initid(%struct.randomtab*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @pmod(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
