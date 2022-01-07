; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_transmit_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_transmit_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64 }
%struct.ck_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"tx cksum: iovcnt/s/off/len %d/%d/%d/%d\0D\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iovec*, i32, %struct.ck_info*)* @e82545_transmit_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_transmit_checksum(%struct.iovec* %0, i32 %1, %struct.ck_info* %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ck_info* %2, %struct.ck_info** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ck_info*, %struct.ck_info** %6, align 8
  %11 = getelementptr inbounds %struct.ck_info, %struct.ck_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ck_info*, %struct.ck_info** %6, align 8
  %14 = getelementptr inbounds %struct.ck_info, %struct.ck_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ck_info*, %struct.ck_info** %6, align 8
  %17 = getelementptr inbounds %struct.ck_info, %struct.ck_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DPRINTF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18)
  %20 = load %struct.ck_info*, %struct.ck_info** %6, align 8
  %21 = getelementptr inbounds %struct.ck_info, %struct.ck_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.ck_info*, %struct.ck_info** %6, align 8
  %26 = getelementptr inbounds %struct.ck_info, %struct.ck_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ck_info*, %struct.ck_info** %6, align 8
  %29 = getelementptr inbounds %struct.ck_info, %struct.ck_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = add nsw i32 %31, 1
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @INT_MAX, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi i32 [ %32, %24 ], [ %34, %33 ]
  store i32 %36, i32* %8, align 4
  %37 = load %struct.iovec*, %struct.iovec** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ck_info*, %struct.ck_info** %6, align 8
  %40 = getelementptr inbounds %struct.ck_info, %struct.ck_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @e82545_iov_checksum(%struct.iovec* %37, i32 %38, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.iovec*, %struct.iovec** %4, align 8
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %46, i64 0
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.ck_info*, %struct.ck_info** %6, align 8
  %52 = getelementptr inbounds %struct.ck_info, %struct.ck_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32 %45, i32* %55, align 4
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @e82545_iov_checksum(%struct.iovec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
