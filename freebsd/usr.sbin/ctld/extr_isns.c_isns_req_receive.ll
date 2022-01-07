; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns_req = type { i32, i32* }
%struct.isns_hdr = type { i32, i32, i32 }

@ISNS_VERSION = common dso_local global i32 0, align 4
@ISNS_FLAG_LAST = common dso_local global i32 0, align 4
@ISNS_FLAG_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isns_req_receive(i32 %0, %struct.isns_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.isns_req*, align 8
  %6 = alloca %struct.isns_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.isns_req* %1, %struct.isns_req** %5, align 8
  %9 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %10 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %12 = call i32 @isns_req_getspace(%struct.isns_req* %11, i32 12)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %15 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @read(i32 %13, i32* %16, i32 12)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 12
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %23 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %22, i32 0, i32 0
  store i32 12, i32* %23, align 8
  %24 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %25 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.isns_hdr*
  store %struct.isns_hdr* %27, %struct.isns_hdr** %6, align 8
  %28 = load %struct.isns_hdr*, %struct.isns_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.isns_hdr, %struct.isns_hdr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be16dec(i32 %30)
  %32 = load i32, i32* @ISNS_VERSION, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %78

35:                                               ; preds = %21
  %36 = load %struct.isns_hdr*, %struct.isns_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.isns_hdr, %struct.isns_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16dec(i32 %38)
  %40 = load i32, i32* @ISNS_FLAG_LAST, align 4
  %41 = load i32, i32* @ISNS_FLAG_FIRST, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = load i32, i32* @ISNS_FLAG_LAST, align 4
  %45 = load i32, i32* @ISNS_FLAG_FIRST, align 4
  %46 = or i32 %44, %45
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %78

49:                                               ; preds = %35
  %50 = load %struct.isns_hdr*, %struct.isns_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.isns_hdr, %struct.isns_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be16dec(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @isns_req_getspace(%struct.isns_req* %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %59 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %62 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @read(i32 %57, i32* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %78

72:                                               ; preds = %49
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.isns_req*, %struct.isns_req** %5, align 8
  %75 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %71, %48, %34, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @isns_req_getspace(%struct.isns_req*, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @be16dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
