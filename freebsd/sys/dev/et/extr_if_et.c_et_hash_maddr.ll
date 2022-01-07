; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_hash_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_hash_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @et_hash_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_hash_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %13 = call i32 @LLADDR(%struct.sockaddr_dl* %12)
  %14 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %15 = call i32 @ether_crc32_be(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 1065353216
  %18 = ashr i32 %17, 23
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 32
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 32
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32* %30, i32** %8, align 8
  br label %52

31:                                               ; preds = %23, %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 64
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 96
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 64
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %8, align 8
  br label %51

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 96
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 96
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32* %49, i32** %8, align 8
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 1, %53
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  ret i32 1
}

declare dso_local i32 @ether_crc32_be(i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
