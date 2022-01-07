; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns_req = type { i32, i64 }
%struct.isns_hdr = type { i32, i32, i32, i32 }

@ISNS_FLAG_LAST = common dso_local global i32 0, align 4
@ISNS_FLAG_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isns_req_send(i32 %0, %struct.isns_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isns_req*, align 8
  %5 = alloca %struct.isns_hdr*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.isns_req* %1, %struct.isns_req** %4, align 8
  %7 = load %struct.isns_req*, %struct.isns_req** %4, align 8
  %8 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.isns_hdr*
  store %struct.isns_hdr* %10, %struct.isns_hdr** %5, align 8
  %11 = load %struct.isns_hdr*, %struct.isns_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.isns_hdr, %struct.isns_hdr* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.isns_req*, %struct.isns_req** %4, align 8
  %15 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 16
  %19 = trunc i64 %18 to i32
  %20 = call i32 @be16enc(i32 %13, i32 %19)
  %21 = load %struct.isns_hdr*, %struct.isns_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.isns_hdr, %struct.isns_hdr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.isns_hdr*, %struct.isns_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.isns_hdr, %struct.isns_hdr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be16dec(i32 %26)
  %28 = load i32, i32* @ISNS_FLAG_LAST, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ISNS_FLAG_FIRST, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @be16enc(i32 %23, i32 %31)
  %33 = load %struct.isns_hdr*, %struct.isns_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.isns_hdr, %struct.isns_hdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be16enc(i32 %35, i32 0)
  %37 = load %struct.isns_hdr*, %struct.isns_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.isns_hdr, %struct.isns_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be16enc(i32 %39, i32 0)
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.isns_req*, %struct.isns_req** %4, align 8
  %43 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.isns_req*, %struct.isns_req** %4, align 8
  %46 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @write(i32 %41, i64 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 -1, i32 0
  ret i32 %52
}

declare dso_local i32 @be16enc(i32, i32) #1

declare dso_local i32 @be16dec(i32) #1

declare dso_local i32 @write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
