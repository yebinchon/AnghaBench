; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_initialize_rss_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_initialize_rss_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@RSSKEYLEN = common dso_local global i32 0, align 4
@E1000_MRQC = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_ENABLE_2Q = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_TCP_EX = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_EX = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @em_initialize_rss_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_initialize_rss_mapping(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %10 = load i32, i32* @RSSKEYLEN, align 4
  %11 = mul nsw i32 4, %10
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  store %struct.e1000_hw* %16, %struct.e1000_hw** %6, align 8
  %17 = mul nuw i64 4, %12
  %18 = trunc i64 %17 to i32
  %19 = call i32 @arc4rand(i32* %14, i32 %18, i32 0)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RSSKEYLEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @EM_RSSRK_VAL(i32* %14, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @E1000_RSSRK(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %27, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = srem i32 %41, %44
  %46 = shl i32 %45, 7
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 8, %48
  %50 = shl i32 %47, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %36

56:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 32
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @E1000_RETA(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %57

69:                                               ; preds = %57
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %71 = load i32, i32* @E1000_MRQC, align 4
  %72 = load i32, i32* @E1000_MRQC_RSS_ENABLE_2Q, align 4
  %73 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4_TCP, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_TCP_EX, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_EX, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %70, i32 %71, i32 %82)
  %84 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @arc4rand(i32*, i32, i32) #2

declare dso_local i32 @EM_RSSRK_VAL(i32*, i32) #2

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #2

declare dso_local i32 @E1000_RSSRK(i32) #2

declare dso_local i32 @E1000_RETA(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
