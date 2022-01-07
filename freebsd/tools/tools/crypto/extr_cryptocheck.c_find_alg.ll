; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_find_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_find_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@algs = common dso_local global %struct.alg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alg* (i8*)* @find_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alg* @find_alg(i8* %0) #0 {
  %2 = alloca %struct.alg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.alg*, %struct.alg** @algs, align 8
  %8 = call i64 @nitems(%struct.alg* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.alg*, %struct.alg** @algs, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.alg, %struct.alg* %11, i64 %12
  %14 = getelementptr inbounds %struct.alg, %struct.alg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcasecmp(i32 %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load %struct.alg*, %struct.alg** @algs, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.alg, %struct.alg* %20, i64 %21
  store %struct.alg* %22, %struct.alg** %2, align 8
  br label %28

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %5

27:                                               ; preds = %5
  store %struct.alg* null, %struct.alg** %2, align 8
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.alg*, %struct.alg** %2, align 8
  ret %struct.alg* %29
}

declare dso_local i64 @nitems(%struct.alg*) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
