; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_obex_profile_create_supported_formats_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_obex_profile_create_supported_formats_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_DATA_SEQ8 = common dso_local global i32 0, align 4
@SDP_DATA_UINT8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obex_profile_create_supported_formats_list(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = mul nsw i32 2, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ugt i32* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %15, %4
  store i32 -1, i32* %5, align 4
  br label %52

27:                                               ; preds = %18
  %28 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @SDP_PUT8(i32 %28, i32* %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @SDP_PUT8(i32 %31, i32* %32)
  br label %34

34:                                               ; preds = %46, %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* @SDP_DATA_UINT8, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @SDP_PUT8(i32 %38, i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* %41, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @SDP_PUT8(i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %9, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 2, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %26
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @SDP_PUT8(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
