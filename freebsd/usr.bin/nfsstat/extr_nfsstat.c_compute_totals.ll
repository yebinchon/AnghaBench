; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/nfsstat/extr_nfsstat.c_compute_totals.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/nfsstat/extr_nfsstat.c_compute_totals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsstatsv1 = type { i32, i32, i32, i32*, i32*, i64*, i64* }

@NFSV42_NOPS = common dso_local global i32 0, align 4
@NFSV4OP_FAKENOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsstatsv1*, %struct.nfsstatsv1*)* @compute_totals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_totals(%struct.nfsstatsv1* %0, %struct.nfsstatsv1* %1) #0 {
  %3 = alloca %struct.nfsstatsv1*, align 8
  %4 = alloca %struct.nfsstatsv1*, align 8
  %5 = alloca i32, align 4
  store %struct.nfsstatsv1* %0, %struct.nfsstatsv1** %3, align 8
  store %struct.nfsstatsv1* %1, %struct.nfsstatsv1** %4, align 8
  %6 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %3, align 8
  %7 = call i32 @bzero(%struct.nfsstatsv1* %6, i32 48)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %65, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NFSV42_NOPS, align 4
  %11 = load i32, i32* @NFSV4OP_FAKENOPS, align 4
  %12 = add nsw i32 %10, %11
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %8
  %15 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %4, align 8
  %16 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %15, i32 0, i32 6
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %3, align 8
  %23 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %22, i32 0, i32 6
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %21
  store i64 %27, i64* %25, align 8
  %28 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %4, align 8
  %29 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %28, i32 0, i32 5
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %3, align 8
  %36 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %35, i32 0, i32 5
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %34
  store i64 %40, i64* %38, align 8
  %41 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %3, align 8
  %42 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %4, align 8
  %46 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @bintime_add(i32* %44, i32* %50)
  %52 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %4, align 8
  %53 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %3, align 8
  %60 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %14
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %8

68:                                               ; preds = %8
  %69 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %4, align 8
  %70 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %3, align 8
  %73 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %4, align 8
  %75 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %3, align 8
  %78 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %4, align 8
  %80 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nfsstatsv1*, %struct.nfsstatsv1** %3, align 8
  %83 = getelementptr inbounds %struct.nfsstatsv1, %struct.nfsstatsv1* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.nfsstatsv1*, i32) #1

declare dso_local i32 @bintime_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
