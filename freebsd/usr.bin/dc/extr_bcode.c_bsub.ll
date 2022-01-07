; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bsub.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsub() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.number*, align 8
  %3 = alloca %struct.number*, align 8
  %4 = call %struct.number* (...) @pop_number()
  store %struct.number* %4, %struct.number** %1, align 8
  %5 = load %struct.number*, %struct.number** %1, align 8
  %6 = icmp eq %struct.number* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %72

8:                                                ; preds = %0
  %9 = call %struct.number* (...) @pop_number()
  store %struct.number* %9, %struct.number** %2, align 8
  %10 = load %struct.number*, %struct.number** %2, align 8
  %11 = icmp eq %struct.number* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.number*, %struct.number** %1, align 8
  %14 = call i32 @push_number(%struct.number* %13)
  br label %72

15:                                               ; preds = %8
  %16 = call %struct.number* (...) @new_number()
  store %struct.number* %16, %struct.number** %3, align 8
  %17 = load %struct.number*, %struct.number** %1, align 8
  %18 = getelementptr inbounds %struct.number, %struct.number* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.number*, %struct.number** %2, align 8
  %21 = getelementptr inbounds %struct.number, %struct.number* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @max(i64 %19, i64 %22)
  %24 = load %struct.number*, %struct.number** %3, align 8
  %25 = getelementptr inbounds %struct.number, %struct.number* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.number*, %struct.number** %3, align 8
  %27 = getelementptr inbounds %struct.number, %struct.number* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.number*, %struct.number** %1, align 8
  %30 = getelementptr inbounds %struct.number, %struct.number* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %15
  %34 = load %struct.number*, %struct.number** %1, align 8
  %35 = load %struct.number*, %struct.number** %3, align 8
  %36 = getelementptr inbounds %struct.number, %struct.number* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @normalize(%struct.number* %34, i64 %37)
  br label %54

39:                                               ; preds = %15
  %40 = load %struct.number*, %struct.number** %3, align 8
  %41 = getelementptr inbounds %struct.number, %struct.number* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.number*, %struct.number** %2, align 8
  %44 = getelementptr inbounds %struct.number, %struct.number* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.number*, %struct.number** %2, align 8
  %49 = load %struct.number*, %struct.number** %3, align 8
  %50 = getelementptr inbounds %struct.number, %struct.number* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @normalize(%struct.number* %48, i64 %51)
  br label %53

53:                                               ; preds = %47, %39
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.number*, %struct.number** %3, align 8
  %56 = getelementptr inbounds %struct.number, %struct.number* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.number*, %struct.number** %2, align 8
  %59 = getelementptr inbounds %struct.number, %struct.number* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.number*, %struct.number** %1, align 8
  %62 = getelementptr inbounds %struct.number, %struct.number* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @BN_sub(i32 %57, i32 %60, i32 %63)
  %65 = call i32 @bn_check(i32 %64)
  %66 = load %struct.number*, %struct.number** %3, align 8
  %67 = call i32 @push_number(%struct.number* %66)
  %68 = load %struct.number*, %struct.number** %1, align 8
  %69 = call i32 @free_number(%struct.number* %68)
  %70 = load %struct.number*, %struct.number** %2, align 8
  %71 = call i32 @free_number(%struct.number* %70)
  br label %72

72:                                               ; preds = %54, %12, %7
  ret void
}

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i32 @push_number(%struct.number*) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @normalize(%struct.number*, i64) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_sub(i32, i32, i32) #1

declare dso_local i32 @free_number(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
