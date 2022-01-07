; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_async.c_async_Encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_async.c_async_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@PROTO_LCP = common dso_local global i32 0, align 4
@HDLC_ESC = common dso_local global i32 0, align 4
@HDLC_SYN = common dso_local global i32 0, align 4
@HDLC_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async*, i32**, i32, i32)* @async_Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_Encode(%struct.async* %0, i32** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.async*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.async* %0, %struct.async** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32**, i32*** %6, align 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PROTO_LCP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = load %struct.async*, %struct.async** %5, align 8
  %20 = getelementptr inbounds %struct.async, %struct.async* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %18, %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @HDLC_ESC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @HDLC_SYN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30, %26, %18, %14
  %35 = load i32, i32* @HDLC_ESC, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* @HDLC_XOR, align 4
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %34, %30
  %42 = load %struct.async*, %struct.async** %5, align 8
  %43 = getelementptr inbounds %struct.async, %struct.async* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 32
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %41
  %50 = load %struct.async*, %struct.async** %5, align 8
  %51 = getelementptr inbounds %struct.async, %struct.async* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 7
  %61 = shl i32 1, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %49
  %65 = load i32, i32* @HDLC_ESC, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* @HDLC_XOR, align 4
  %69 = load i32, i32* %7, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %64, %49, %41
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32**, i32*** %6, align 8
  store i32* %75, i32** %76, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
