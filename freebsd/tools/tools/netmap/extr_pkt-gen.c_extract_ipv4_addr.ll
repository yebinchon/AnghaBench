; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_extract_ipv4_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_extract_ipv4_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64*)* @extract_ipv4_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_ipv4_addr(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 58)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %8, align 8
  store i8 0, i8* %14, align 1
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @strtol(i8* %16, i32* null, i32 0)
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @AF_INET, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @inet_pton(i32 %20, i8* %21, %struct.in_addr* %7)
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, %struct.in_addr*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
