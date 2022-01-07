; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_bnep_profile_create_protocol_descriptor_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_profile.c_bnep_profile_create_protocol_descriptor_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.bnep_profile_create_protocol_descriptor_list.ptype = private unnamed_addr constant [2 x i32] [i32 2048, i32 2054], align 4
@SDP_DATA_SEQ8 = common dso_local global i32 0, align 4
@SDP_DATA_UUID16 = common dso_local global i32 0, align 4
@SDP_UUID_PROTOCOL_L2CAP = common dso_local global i32 0, align 4
@SDP_DATA_UINT16 = common dso_local global i32 0, align 4
@SDP_UUID_PROTOCOL_BNEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnep_profile_create_protocol_descriptor_list(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.bnep_profile_create_protocol_descriptor_list.ptype to i8*), i64 8, i1 false)
  store i32 256, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = mul nsw i32 %17, 3
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %33, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %15, align 4
  %23 = add nsw i32 18, %22
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 20
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ugt i32* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %21, %4
  store i32 -1, i32* %5, align 4
  br label %106

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @memcpy(i32* %12, i32* %35, i32 4)
  %37 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @SDP_PUT8(i32 %37, i32* %38)
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 18, %40
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @SDP_PUT8(i32 %41, i32* %42)
  %44 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @SDP_PUT8(i32 %44, i32* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @SDP_PUT8(i32 6, i32* %47)
  %49 = load i32, i32* @SDP_DATA_UUID16, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @SDP_PUT8(i32 %49, i32* %50)
  %52 = load i32, i32* @SDP_UUID_PROTOCOL_L2CAP, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @SDP_PUT16(i32 %52, i32* %53)
  %55 = load i32, i32* @SDP_DATA_UINT16, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @SDP_PUT8(i32 %55, i32* %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @SDP_PUT16(i32 %58, i32* %59)
  %61 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @SDP_PUT8(i32 %61, i32* %62)
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 8, %64
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @SDP_PUT8(i32 %65, i32* %66)
  %68 = load i32, i32* @SDP_DATA_UUID16, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @SDP_PUT8(i32 %68, i32* %69)
  %71 = load i32, i32* @SDP_UUID_PROTOCOL_BNEP, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @SDP_PUT16(i32 %71, i32* %72)
  %74 = load i32, i32* @SDP_DATA_UINT16, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @SDP_PUT8(i32 %74, i32* %75)
  %77 = load i32, i32* %13, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @SDP_PUT16(i32 %77, i32* %78)
  %80 = load i32, i32* @SDP_DATA_SEQ8, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @SDP_PUT8(i32 %80, i32* %81)
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @SDP_PUT8(i32 %83, i32* %84)
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %100, %34
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32, i32* @SDP_DATA_UINT16, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @SDP_PUT8(i32 %91, i32* %92)
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @SDP_PUT16(i32 %97, i32* %98)
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %86

103:                                              ; preds = %86
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 20, %104
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %33
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @SDP_PUT8(i32, i32*) #2

declare dso_local i32 @SDP_PUT16(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
