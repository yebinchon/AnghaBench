; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pred.c_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pred.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pred1_state = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pred1_state*, i8*, i8*, i32)* @decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress(%struct.pred1_state* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pred1_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store %struct.pred1_state* %0, %struct.pred1_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %12, align 8
  br label %14

14:                                               ; preds = %74, %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8, i8* %18, align 1
  store i8 %20, i8* %11, align 1
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %23

23:                                               ; preds = %69, %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  %27 = load i8, i8* %11, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.pred1_state*, %struct.pred1_state** %5, align 8
  %34 = getelementptr inbounds %struct.pred1_state, %struct.pred1_state* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.pred1_state*, %struct.pred1_state** %5, align 8
  %37 = getelementptr inbounds %struct.pred1_state, %struct.pred1_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %7, align 8
  store i8 %40, i8* %41, align 1
  br label %62

42:                                               ; preds = %26
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %74

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = load %struct.pred1_state*, %struct.pred1_state** %5, align 8
  %50 = getelementptr inbounds %struct.pred1_state, %struct.pred1_state* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.pred1_state*, %struct.pred1_state** %5, align 8
  %53 = getelementptr inbounds %struct.pred1_state, %struct.pred1_state* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 %48, i8* %55, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  %58 = load i8, i8* %56, align 1
  %59 = load i8*, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %46, %32
  %63 = load %struct.pred1_state*, %struct.pred1_state** %5, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  %68 = call i32 @HASH(%struct.pred1_state* %63, i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %23

74:                                               ; preds = %45, %23
  br label %14

75:                                               ; preds = %14
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  ret i32 %81
}

declare dso_local i32 @HASH(%struct.pred1_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
