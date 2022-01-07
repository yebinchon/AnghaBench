; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_iov_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_iov_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iovec*, i32, i32, i32)* @e82545_iov_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e82545_iov_checksum(%struct.iovec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %27, %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.iovec*, %struct.iovec** %5, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br label %25

25:                                               ; preds = %22, %16, %13
  %26 = phi i1 [ false, %16 ], [ false, %13 ], [ %24, %22 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = load %struct.iovec*, %struct.iovec** %5, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.iovec*, %struct.iovec** %5, align 8
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 1
  store %struct.iovec* %34, %struct.iovec** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  br label %13

37:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %69, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  br i1 %45, label %46, label %84

46:                                               ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.iovec*, %struct.iovec** %5, align 8
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @MIN(i32 %47, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.iovec*, %struct.iovec** %5, align 8
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @e82545_buf_checksum(i64 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %46
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %65, 8
  br label %69

67:                                               ; preds = %46
  %68 = load i32, i32* %12, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 1
  %75 = load i32, i32* %10, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %80 = load %struct.iovec*, %struct.iovec** %5, align 8
  %81 = getelementptr inbounds %struct.iovec, %struct.iovec* %80, i32 1
  store %struct.iovec* %81, %struct.iovec** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %6, align 4
  br label %38

84:                                               ; preds = %44
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @e82545_carry(i32 %85)
  ret i32 %86
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @e82545_buf_checksum(i64, i32) #1

declare dso_local i32 @e82545_carry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
