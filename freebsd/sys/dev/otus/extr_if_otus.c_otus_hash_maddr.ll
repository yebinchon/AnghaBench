; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_hash_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_hash_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @otus_hash_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otus_hash_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %12 = call i64 @LLADDR(%struct.sockaddr_dl* %11)
  %13 = add nsw i64 %12, 4
  %14 = call i32 @le32dec(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 65280
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 2
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 32
  %33 = shl i32 1, %32
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %23
  ret i32 1
}

declare dso_local i32 @le32dec(i64) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
