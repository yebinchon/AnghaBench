; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_obex_profile_create_protocol_descriptor_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_obex_profile_create_protocol_descriptor_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_DATA_SEQ8 = common dso_local global i32 0, align 4
@SDP_DATA_UUID16 = common dso_local global i32 0, align 4
@SDP_UUID_PROTOCOL_L2CAP = common dso_local global i32 0, align 4
@SDP_UUID_PROTOCOL_RFCOMM = common dso_local global i32 0, align 4
@SDP_DATA_UINT8 = common dso_local global i32 0, align 4
@SDP_UUID_PROTOCOL_OBEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obex_profile_create_protocol_descriptor_list(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 19
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ugt i32* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %4
  store i32 -1, i32* %5, align 4
  br label %64

18:                                               ; preds = %12
  %19 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @SDP_PUT8(i32 %19, i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @SDP_PUT8(i32 17, i32* %22)
  %24 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @SDP_PUT8(i32 %24, i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @SDP_PUT8(i32 3, i32* %27)
  %29 = load i32, i32* @SDP_DATA_UUID16, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @SDP_PUT8(i32 %29, i32* %30)
  %32 = load i32, i32* @SDP_UUID_PROTOCOL_L2CAP, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @SDP_PUT16(i32 %32, i32* %33)
  %35 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @SDP_PUT8(i32 %35, i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @SDP_PUT8(i32 5, i32* %38)
  %40 = load i32, i32* @SDP_DATA_UUID16, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @SDP_PUT8(i32 %40, i32* %41)
  %43 = load i32, i32* @SDP_UUID_PROTOCOL_RFCOMM, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @SDP_PUT16(i32 %43, i32* %44)
  %46 = load i32, i32* @SDP_DATA_UINT8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @SDP_PUT8(i32 %46, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @SDP_PUT8(i32 %50, i32* %51)
  %53 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @SDP_PUT8(i32 %53, i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @SDP_PUT8(i32 3, i32* %56)
  %58 = load i32, i32* @SDP_DATA_UUID16, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @SDP_PUT8(i32 %58, i32* %59)
  %61 = load i32, i32* @SDP_UUID_PROTOCOL_OBEX, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @SDP_PUT16(i32 %61, i32* %62)
  store i32 19, i32* %5, align 4
  br label %64

64:                                               ; preds = %18, %17
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @SDP_PUT8(i32, i32*) #1

declare dso_local i32 @SDP_PUT16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
