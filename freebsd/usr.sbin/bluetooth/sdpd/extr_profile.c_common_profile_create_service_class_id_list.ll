; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_common_profile_create_service_class_id_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_common_profile_create_service_class_id_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_DATA_SEQ8 = common dso_local global i32 0, align 4
@SDP_DATA_UUID16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @common_profile_create_service_class_id_list(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
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
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = mul nsw i32 3, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ugt i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %16, %4
  store i32 -1, i32* %5, align 4
  br label %54

28:                                               ; preds = %19
  %29 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @SDP_PUT8(i32 %29, i32* %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @SDP_PUT8(i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %48, %28
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* @SDP_DATA_UUID16, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @SDP_PUT8(i32 %39, i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @SDP_PUT16(i32 %43, i32* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 2, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %27
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @SDP_PUT8(i32, i32*) #1

declare dso_local i32 @SDP_PUT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
