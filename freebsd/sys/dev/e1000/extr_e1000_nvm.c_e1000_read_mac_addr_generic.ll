; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_mac_addr_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_mac_addr_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i8** }

@E1000_RAL_MAC_ADDR_LEN = common dso_local global i64 0, align 8
@E1000_RAH_MAC_ADDR_LEN = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_read_mac_addr_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = call i32 @E1000_RAH(i32 0)
  %8 = call i64 @E1000_READ_REG(%struct.e1000_hw* %6, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = call i32 @E1000_RAL(i32 0)
  %11 = call i64 @E1000_READ_REG(%struct.e1000_hw* %9, i32 %10)
  store i64 %11, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %28, %1
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @E1000_RAL_MAC_ADDR_LEN, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = mul i64 %18, 8
  %20 = lshr i64 %17, %19
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  store i8* %21, i8** %27, align 8
  br label %28

28:                                               ; preds = %16
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %12

31:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @E1000_RAH_MAC_ADDR_LEN, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = mul i64 %38, 8
  %40 = lshr i64 %37, %39
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 4
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %41, i8** %48, align 8
  br label %49

49:                                               ; preds = %36
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %32

52:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %64, i8** %70, align 8
  br label %71

71:                                               ; preds = %57
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %53

74:                                               ; preds = %53
  %75 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %75
}

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_RAH(i32) #1

declare dso_local i32 @E1000_RAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
