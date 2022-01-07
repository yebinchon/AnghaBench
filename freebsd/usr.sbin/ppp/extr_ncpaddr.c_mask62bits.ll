; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_mask62bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_mask62bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@__const.mask62bits.masks = private unnamed_addr constant [8 x i32] [i32 0, i32 128, i32 192, i32 224, i32 240, i32 248, i32 252, i32 254], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_addr*)* @mask62bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask62bits(%struct.in6_addr* %0) #0 {
  %2 = alloca %struct.in6_addr*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %2, align 8
  %9 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([8 x i32]* @__const.mask62bits.masks to i8*), i64 32, i1 false)
  %10 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %11 = bitcast %struct.in6_addr* %10 to i32*
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 16
  store i32* %13, i32** %6, align 8
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ult i32* %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 255
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 8
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  br label %14

30:                                               ; preds = %22
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  store i32* %35, i32** %4, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %52, %34
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %39 = getelementptr inbounds i32, i32* %38, i64 32
  %40 = icmp ult i32* %37, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %57

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %36

57:                                               ; preds = %47, %36
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
