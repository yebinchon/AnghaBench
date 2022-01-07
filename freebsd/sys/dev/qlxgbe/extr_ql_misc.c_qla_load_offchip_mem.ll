; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_misc.c_qla_load_offchip_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_misc.c_qla_load_offchip_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32)* @qla_load_offchip_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_load_offchip_mem(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %46, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 4
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* %19, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %8, align 8
  %25 = load i32, i32* %23, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %8, align 8
  %29 = load i32, i32* %27, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* %31, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 4
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ql_rdwr_offchip_mem(i32* %37, i64 %38, %struct.TYPE_4__* %10, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %89

42:                                               ; preds = %18
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 16
  store i64 %44, i64* %7, align 8
  br label %46

45:                                               ; preds = %15
  br label %47

46:                                               ; preds = %42
  br label %12

47:                                               ; preds = %45, %12
  %48 = call i32 @bzero(%struct.TYPE_4__* %10, i32 16)
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %86 [
    i32 3, label %50
    i32 2, label %66
    i32 1, label %78
  ]

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  %53 = load i32, i32* %51, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %8, align 8
  %57 = load i32, i32* %55, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %8, align 8
  %61 = load i32, i32* %59, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @ql_rdwr_offchip_mem(i32* %63, i64 %64, %struct.TYPE_4__* %10, i32 0)
  store i32 %65, i32* %11, align 4
  br label %87

66:                                               ; preds = %47
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %8, align 8
  %69 = load i32, i32* %67, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = load i32, i32* %71, align 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @ql_rdwr_offchip_mem(i32* %75, i64 %76, %struct.TYPE_4__* %10, i32 0)
  store i32 %77, i32* %11, align 4
  br label %87

78:                                               ; preds = %47
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %8, align 8
  %81 = load i32, i32* %79, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @ql_rdwr_offchip_mem(i32* %83, i64 %84, %struct.TYPE_4__* %10, i32 0)
  store i32 %85, i32* %11, align 4
  br label %87

86:                                               ; preds = %47
  br label %87

87:                                               ; preds = %86, %78, %66, %50
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %41
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @ql_rdwr_offchip_mem(i32*, i64, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
