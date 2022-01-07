; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_satisfies_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix.c_rn_satisfies_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i8*, i8* }

@rn_ones = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.radix_node*, i32)* @rn_satisfies_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn_satisfies_leaf(i8* %0, %struct.radix_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.radix_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.radix_node* %1, %struct.radix_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %15 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %18 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @LEN(i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @LEN(i8* %22)
  %24 = call i32 @min(i32 %21, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i8*, i8** @rn_ones, align 8
  store i8* %28, i8** %10, align 8
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @LEN(i8* %31)
  %33 = call i32 @min(i32 %30, i32 %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %29, %27
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %70, %34
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = xor i32 %58, %61
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %78

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  br label %51

77:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @LEN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
