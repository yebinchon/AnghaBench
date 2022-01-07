; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_read_mac_addr_82542.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_read_mac_addr_82542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8**, i8** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"e1000_read_mac_addr\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_mac_addr_82542(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %7, i64* %3, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %53, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.0*
  %23 = load i32, i32* %4, align 4
  %24 = call i64 %20(%struct.e1000_hw.0* %22, i32 %23, i32 1, i32* %5)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %81

29:                                               ; preds = %13
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %33, i8** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* %44, i8** %52, align 8
  br label %53

53:                                               ; preds = %29
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %6, align 4
  br label %9

56:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %77, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %69, i8** %76, align 8
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %57

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %80, %27
  %82 = load i64, i64* %3, align 8
  ret i64 %82
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
