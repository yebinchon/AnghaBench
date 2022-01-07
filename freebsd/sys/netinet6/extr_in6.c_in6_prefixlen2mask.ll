; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_prefixlen2mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_prefixlen2mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@__const.in6_prefixlen2mask.maskarray = private unnamed_addr constant [8 x i32] [i32 128, i32 192, i32 224, i32 240, i32 248, i32 252, i32 254, i32 255], align 16
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"in6_prefixlen2mask: invalid prefix length(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_prefixlen2mask(%struct.in6_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([8 x i32]* @__const.in6_prefixlen2mask.maskarray to i8*), i64 32, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 0, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 128
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @log(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %55

19:                                               ; preds = %12
  %20 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %21 = call i32 @bzero(%struct.in6_addr* %20, i32 8)
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %22, 8
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 8
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %37, %19
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %32 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 255, i32* %36, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  %50 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %15, %43, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @log(i32, i8*, i32) #2

declare dso_local i32 @bzero(%struct.in6_addr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
