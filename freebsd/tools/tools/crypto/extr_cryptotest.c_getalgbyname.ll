; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptotest.c_getalgbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptotest.c_getalgbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@algorithms = common dso_local global %struct.alg* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alg* @getalgbyname(i8* %0) #0 {
  %2 = alloca %struct.alg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.alg*, %struct.alg** @algorithms, align 8
  %8 = call i32 @nitems(%struct.alg* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.alg*, %struct.alg** @algorithms, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.alg, %struct.alg* %12, i64 %14
  %16 = getelementptr inbounds %struct.alg, %struct.alg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @streq(i8* %11, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.alg*, %struct.alg** @algorithms, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.alg, %struct.alg* %21, i64 %23
  store %struct.alg* %24, %struct.alg** %2, align 8
  br label %30

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store %struct.alg* null, %struct.alg** %2, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.alg*, %struct.alg** %2, align 8
  ret %struct.alg* %31
}

declare dso_local i32 @nitems(%struct.alg*) #1

declare dso_local i64 @streq(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
