; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_mac_proto_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_mac_proto_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Bad type!!! 0x%08x\0A\00", align 1
@Q81_CTL_MAC_PROTO_ADDR_INDEX = common dso_local global i32 0, align 4
@Q81_CTL_MAC_PROTO_ADDR_DATA = common dso_local global i32 0, align 4
@Q81_NUM_TYPES = common dso_local global i32 0, align 4
@Q81_RS_AND_ADR = common dso_local global i32 0, align 4
@Q81_RS_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @qls_get_mac_proto_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qls_get_mac_proto_regs(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %83, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %86

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %28 [
    i32 0, label %19
    i32 1, label %20
    i32 2, label %21
    i32 3, label %21
    i32 4, label %22
    i32 5, label %23
    i32 6, label %24
    i32 7, label %25
    i32 8, label %26
    i32 9, label %27
  ]

19:                                               ; preds = %17
  store i32 100663296, i32* %11, align 4
  store i32 512, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %31

20:                                               ; preds = %17
  store i32 67108864, i32* %11, align 4
  store i32 32, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %31

21:                                               ; preds = %17, %17
  store i32 67108864, i32* %11, align 4
  store i32 4096, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %31

22:                                               ; preds = %17
  store i32 67108864, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %31

23:                                               ; preds = %17
  store i32 67108864, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %31

24:                                               ; preds = %17
  store i32 67108864, i32* %11, align 4
  store i32 16, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %31

25:                                               ; preds = %17
  store i32 67108864, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %31

26:                                               ; preds = %17
  store i32 67108864, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %31

27:                                               ; preds = %17
  store i32 67108864, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %27, %26, %25, %24, %23, %22, %21, %20, %19
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %79, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %75, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 4
  %48 = or i32 %45, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @Q81_CTL_MAC_PROTO_ADDR_INDEX, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @WRITE_REG32(i32* %51, i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %59, %41
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 1073741824
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @Q81_CTL_MAC_PROTO_ADDR_INDEX, align 4
  %62 = call i32 @READ_REG32(i32* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %55

63:                                               ; preds = %55
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @Q81_CTL_MAC_PROTO_ADDR_DATA, align 4
  %66 = call i32 @READ_REG32(i32* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** %4, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %4, align 8
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %37

78:                                               ; preds = %37
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %32

82:                                               ; preds = %32
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %14

86:                                               ; preds = %14
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @WRITE_REG32(i32*, i32, i32) #1

declare dso_local i32 @READ_REG32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
