; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_hw_addr_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_hw_addr_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nicvf_hw_addr_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_hw_addr_random(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = call i32 (...) @arc4random()
  %11 = and i32 %10, 16777215
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 98, i8* %12, align 16
  %13 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 115, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 100, i8* %14, align 2
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 16
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds i8, i8* %9, i64 3
  store i8 %17, i8* %18, align 1
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, i8* %9, i64 4
  store i8 %21, i8* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 0
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, i8* %9, i64 5
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %29 = call i32 @memcpy(i8* %27, i8* %9, i32 %28)
  %30 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %30)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @arc4random(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
