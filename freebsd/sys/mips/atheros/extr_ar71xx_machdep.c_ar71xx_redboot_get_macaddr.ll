; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_machdep.c_ar71xx_redboot_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_machdep.c_ar71xx_redboot_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ethaddr\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kmac\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%x%*c%x%*c%x%*c%x%*c%x%*c%x\00", align 1
@ar71xx_board_mac_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ar71xx_redboot_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_redboot_get_macaddr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = call i8* @kern_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = call i8* @kern_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %59

21:                                               ; preds = %18, %0
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i32, i32* %12, i64 0
  %24 = getelementptr inbounds i32, i32* %12, i64 1
  %25 = getelementptr inbounds i32, i32* %12, i64 2
  %26 = getelementptr inbounds i32, i32* %12, i64 3
  %27 = getelementptr inbounds i32, i32* %12, i64 4
  %28 = getelementptr inbounds i32, i32* %12, i64 5
  %29 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = mul nuw i64 4, %10
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %12, i32 0, i32 %34)
  br label %56

36:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %12, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %15, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load i32, i32* @ar71xx_board_mac_addr, align 4
  %55 = call i32 @ar71xx_mac_addr_init(i32 %54, i32* %15, i32 0, i32 0)
  br label %56

56:                                               ; preds = %53, %32
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 @freeenv(i8* %57)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %60

59:                                               ; preds = %18
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kern_getenv(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ar71xx_mac_addr_init(i32, i32*, i32, i32) #2

declare dso_local i32 @freeenv(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
