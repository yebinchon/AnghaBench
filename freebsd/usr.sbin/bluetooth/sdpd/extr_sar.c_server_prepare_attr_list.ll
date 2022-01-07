; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_sar.c_server_prepare_attr_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_sar.c_server_prepare_attr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_DATA_SEQ16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_prepare_attr_list(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ugt i32* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %97

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %80, %23
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @SDP_GET8(i32 %29, i32* %30)
  %32 = load i32, i32* %13, align 4
  switch i32 %32, label %57 [
    i32 129, label %33
    i32 128, label %44
  ]

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ugt i32* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %97

39:                                               ; preds = %33
  %40 = load i32, i32* %15, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @SDP_GET16(i32 %40, i32* %41)
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %14, align 4
  br label %58

44:                                               ; preds = %28
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ugt i32* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %97

50:                                               ; preds = %44
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @SDP_GET16(i32 %51, i32* %52)
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @SDP_GET16(i32 %54, i32* %55)
  br label %58

57:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %97

58:                                               ; preds = %50, %39
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @server_prepare_attr_value_pair(i32 %64, i32 %65, i32* %66, i32* %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %97

72:                                               ; preds = %63
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %12, align 8
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %59

80:                                               ; preds = %59
  br label %24

81:                                               ; preds = %24
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* @SDP_DATA_SEQ16, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @SDP_PUT8(i32 %89, i32* %90)
  %92 = load i32, i32* %16, align 4
  %93 = sub nsw i32 %92, 3
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @SDP_PUT16(i32 %93, i32* %94)
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %81, %71, %57, %49, %38, %22
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @SDP_GET8(i32, i32*) #1

declare dso_local i32 @SDP_GET16(i32, i32*) #1

declare dso_local i32 @server_prepare_attr_value_pair(i32, i32, i32*, i32*) #1

declare dso_local i32 @SDP_PUT8(i32, i32*) #1

declare dso_local i32 @SDP_PUT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
