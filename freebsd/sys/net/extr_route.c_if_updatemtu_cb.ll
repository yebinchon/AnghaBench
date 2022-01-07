; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_if_updatemtu_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_if_updatemtu_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { i64, i64, i32 }
%struct.if_mtuinfo = type { i64, i64 }

@RTF_FIXEDMTU = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @if_updatemtu_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_updatemtu_cb(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.if_mtuinfo*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %9 = bitcast %struct.radix_node* %8 to %struct.rtentry*
  store %struct.rtentry* %9, %struct.rtentry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.if_mtuinfo*
  store %struct.if_mtuinfo* %11, %struct.if_mtuinfo** %7, align 8
  %12 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %13 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.if_mtuinfo*, %struct.if_mtuinfo** %7, align 8
  %16 = getelementptr inbounds %struct.if_mtuinfo, %struct.if_mtuinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %22 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.if_mtuinfo*, %struct.if_mtuinfo** %7, align 8
  %25 = getelementptr inbounds %struct.if_mtuinfo, %struct.if_mtuinfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.if_mtuinfo*, %struct.if_mtuinfo** %7, align 8
  %30 = getelementptr inbounds %struct.if_mtuinfo, %struct.if_mtuinfo* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %33 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %52

34:                                               ; preds = %20
  %35 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %36 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RTF_FIXEDMTU, align 4
  %39 = load i32, i32* @RTF_GATEWAY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RTF_HOST, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %52

46:                                               ; preds = %34
  %47 = load %struct.if_mtuinfo*, %struct.if_mtuinfo** %7, align 8
  %48 = getelementptr inbounds %struct.if_mtuinfo, %struct.if_mtuinfo* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %51 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %45, %28, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
