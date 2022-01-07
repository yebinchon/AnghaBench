; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns_req = type { i64, i32* }
%struct.isns_tlv = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isns_req_add(%struct.isns_req* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.isns_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.isns_tlv*, align 8
  %10 = alloca i32, align 4
  store %struct.isns_req* %0, %struct.isns_req** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 3
  %18 = sub nsw i32 4, %17
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  %22 = add nsw i32 %11, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 16, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @isns_req_getspace(%struct.isns_req* %23, i32 %27)
  %29 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %30 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %33 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = bitcast i32* %35 to %struct.isns_tlv*
  store %struct.isns_tlv* %36, %struct.isns_tlv** %9, align 8
  %37 = load %struct.isns_tlv*, %struct.isns_tlv** %9, align 8
  %38 = getelementptr inbounds %struct.isns_tlv, %struct.isns_tlv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @be32enc(i32 %39, i32 %40)
  %42 = load %struct.isns_tlv*, %struct.isns_tlv** %9, align 8
  %43 = getelementptr inbounds %struct.isns_tlv, %struct.isns_tlv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @be32enc(i32 %44, i32 %45)
  %47 = load %struct.isns_tlv*, %struct.isns_tlv** %9, align 8
  %48 = getelementptr inbounds %struct.isns_tlv, %struct.isns_tlv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @memcpy(i32* %49, i8* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %20
  %57 = load %struct.isns_tlv*, %struct.isns_tlv** %9, align 8
  %58 = getelementptr inbounds %struct.isns_tlv, %struct.isns_tlv* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 @memset(i32* %62, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %56, %20
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 16, %69
  %71 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %72 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  ret void
}

declare dso_local i32 @isns_req_getspace(%struct.isns_req*, i32) #1

declare dso_local i32 @be32enc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
