; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_generate_tmp_ifid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_generate_tmp_ifid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EUI64_UBIT = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"generate_tmp_ifid: computed MD5 value is zero.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @generate_tmp_ifid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_tmp_ifid(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca [16 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %14 = call i32 @bzero(i32* %13, i32 32)
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @bcmp(i32* %15, i32* %16, i32 32)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = call i32 (...) @arc4random()
  store i32 %24, i32* %11, align 4
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = call i32 @bcopy(i32* %11, i32* %29, i32 4)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  br label %20

34:                                               ; preds = %20
  br label %39

35:                                               ; preds = %3
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %38 = call i32 @bcopy(i32* %36, i32* %37, i32 8)
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8
  %42 = call i32 @bcopy(i32* %40, i32* %41, i32 8)
  %43 = call i32 @bzero(i32* %7, i32 4)
  %44 = call i32 @MD5Init(i32* %7)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %46 = call i32 @MD5Update(i32* %7, i32* %45, i32 64)
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %48 = call i32 @MD5Final(i32* %47, i32* %7)
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @bcopy(i32* %49, i32* %50, i32 8)
  %52 = load i32, i32* @EUI64_UBIT, align 4
  %53 = xor i32 %52, -1
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @bcmp(i32* %58, i32* %59, i32 32)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %39
  %63 = load i32, i32* @LOG_INFO, align 4
  %64 = call i32 @nd6log(i32 ptrtoint ([48 x i8]* @.str to i32))
  %65 = call i32 (...) @arc4random()
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = urem i32 %66, -2
  %68 = add i32 1, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %62, %39
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @bcopy(i32* %70, i32* %71, i32 8)
  ret i32 0
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @nd6log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
