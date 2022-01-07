; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_hash_maddr_admtek_le.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_hash_maddr_admtek_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.dc_hash_maddr_admtek_le_ctx = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @dc_hash_maddr_admtek_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_hash_maddr_admtek_le(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_hash_maddr_admtek_le_ctx*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dc_hash_maddr_admtek_le_ctx*
  store %struct.dc_hash_maddr_admtek_le_ctx* %10, %struct.dc_hash_maddr_admtek_le_ctx** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.dc_hash_maddr_admtek_le_ctx*, %struct.dc_hash_maddr_admtek_le_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.dc_hash_maddr_admtek_le_ctx, %struct.dc_hash_maddr_admtek_le_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %15 = call i32 @LLADDR(%struct.sockaddr_dl* %14)
  %16 = call i32 @dc_mchash_le(i32 %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.dc_hash_maddr_admtek_le_ctx*, %struct.dc_hash_maddr_admtek_le_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.dc_hash_maddr_admtek_le_ctx, %struct.dc_hash_maddr_admtek_le_ctx* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 4
  br label %38

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 32
  %31 = shl i32 1, %30
  %32 = load %struct.dc_hash_maddr_admtek_le_ctx*, %struct.dc_hash_maddr_admtek_le_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.dc_hash_maddr_admtek_le_ctx, %struct.dc_hash_maddr_admtek_le_ctx* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %28, %19
  ret i32 1
}

declare dso_local i32 @dc_mchash_le(i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
