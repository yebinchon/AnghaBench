; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_hash_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_hash_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @atse_hash_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_hash_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %16 = call i32* @LLADDR(%struct.sockaddr_dl* %15)
  store i32* %16, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %51, %3
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1
  store i32 %27, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %42, %21
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = ashr i32 %36, %37
  %39 = and i32 %38, 1
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %17

54:                                               ; preds = %17
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 1, %55
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  ret i32 1
}

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
