; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_compare_sh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_compare_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_sopt_handler = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_sh(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipfw_sopt_handler*, align 8
  %7 = alloca %struct.ipfw_sopt_handler*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ipfw_sopt_handler*
  store %struct.ipfw_sopt_handler* %9, %struct.ipfw_sopt_handler** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ipfw_sopt_handler*
  store %struct.ipfw_sopt_handler* %11, %struct.ipfw_sopt_handler** %7, align 8
  %12 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %6, align 8
  %13 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %7, align 8
  %16 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %6, align 8
  %22 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %7, align 8
  %25 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %79

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %6, align 8
  %32 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %7, align 8
  %35 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %79

39:                                               ; preds = %30
  %40 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %6, align 8
  %41 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %7, align 8
  %44 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %79

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %6, align 8
  %51 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %79

55:                                               ; preds = %49
  %56 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %6, align 8
  %57 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %7, align 8
  %61 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = ptrtoint i32* %62 to i64
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %79

66:                                               ; preds = %55
  %67 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %6, align 8
  %68 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = ptrtoint i32* %69 to i64
  %71 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %7, align 8
  %72 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = ptrtoint i32* %73 to i64
  %75 = icmp ugt i64 %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %79

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %76, %65, %54, %47, %38, %28, %19
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
