; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_dns_utils.c_compute_weight.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_dns_utils.c_compute_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_srvinfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dns_srvinfo**, i32, i32)* @compute_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_weight(%struct.dns_srvinfo** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dns_srvinfo**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.dns_srvinfo** %0, %struct.dns_srvinfo*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %25, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.dns_srvinfo**, %struct.dns_srvinfo*** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dns_srvinfo*, %struct.dns_srvinfo** %16, i64 %18
  %20 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %19, align 8
  %21 = getelementptr inbounds %struct.dns_srvinfo, %struct.dns_srvinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %108

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32* @malloc(i32 %39)
  store i32* %40, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %102, %32
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %105

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %100, %45
  %47 = call i32 (...) @random()
  %48 = load %struct.dns_srvinfo**, %struct.dns_srvinfo*** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dns_srvinfo*, %struct.dns_srvinfo** %48, i64 %50
  %52 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %51, align 8
  %53 = getelementptr inbounds %struct.dns_srvinfo, %struct.dns_srvinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 100
  %56 = load i32, i32* %9, align 4
  %57 = sdiv i32 %55, %56
  %58 = srem i32 %47, %57
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %81, %46
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %84

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %63

84:                                               ; preds = %79, %63
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dns_srvinfo**, %struct.dns_srvinfo*** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.dns_srvinfo*, %struct.dns_srvinfo** %94, i64 %96
  %98 = load %struct.dns_srvinfo*, %struct.dns_srvinfo** %97, align 8
  %99 = getelementptr inbounds %struct.dns_srvinfo, %struct.dns_srvinfo* %98, i32 0, i32 1
  store i32 %93, i32* %99, align 4
  br label %101

100:                                              ; preds = %84
  br label %46

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %41

105:                                              ; preds = %41
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @free(i32* %106)
  br label %108

108:                                              ; preds = %105, %31
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
