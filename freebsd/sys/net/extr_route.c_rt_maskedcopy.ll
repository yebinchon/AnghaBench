; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_maskedcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_maskedcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_maskedcopy(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %13 = bitcast %struct.sockaddr* %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = bitcast %struct.sockaddr* %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* %28, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %33, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ugt i32* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32*, i32** %11, align 8
  store i32* %44, i32** %10, align 8
  br label %45

45:                                               ; preds = %43, %3
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ult i32* %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %9, align 8
  %56 = load i32, i32* %54, align 4
  %57 = and i32 %53, %56
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  br label %46

60:                                               ; preds = %46
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ult i32* %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32 @bzero(i32 %66, i32 %73)
  br label %75

75:                                               ; preds = %64, %60
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
