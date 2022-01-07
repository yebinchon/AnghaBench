; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_set_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_set_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_biba = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@MAC_BIBA_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_biba*, i8*, i8*, i32*, i8*, i8*, i32*)* @biba_set_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @biba_set_range(%struct.mac_biba* %0, i8* %1, i8* %2, i32* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.mac_biba*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.mac_biba* %0, %struct.mac_biba** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %17 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i8* %15, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %21 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %7
  %26 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %27 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @memcpy(i32 %29, i32* %30, i32 4)
  br label %32

32:                                               ; preds = %25, %7
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %35 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %39 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %45 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @memcpy(i32 %47, i32* %48, i32 4)
  br label %50

50:                                               ; preds = %43, %32
  %51 = load i32, i32* @MAC_BIBA_FLAG_RANGE, align 4
  %52 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %53 = getelementptr inbounds %struct.mac_biba, %struct.mac_biba* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
