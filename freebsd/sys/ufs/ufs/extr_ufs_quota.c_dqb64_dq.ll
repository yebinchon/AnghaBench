; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dqb64_dq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dqb64_dq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dqblk64 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dquot = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dqblk64*, %struct.dquot*)* @dqb64_dq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dqb64_dq(%struct.dqblk64* %0, %struct.dquot* %1) #0 {
  %3 = alloca %struct.dqblk64*, align 8
  %4 = alloca %struct.dquot*, align 8
  store %struct.dqblk64* %0, %struct.dqblk64** %3, align 8
  store %struct.dquot* %1, %struct.dquot** %4, align 8
  %5 = load %struct.dqblk64*, %struct.dqblk64** %3, align 8
  %6 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @be64toh(i32 %7)
  %9 = load %struct.dquot*, %struct.dquot** %4, align 8
  %10 = getelementptr inbounds %struct.dquot, %struct.dquot* %9, i32 0, i32 7
  store i8* %8, i8** %10, align 8
  %11 = load %struct.dqblk64*, %struct.dqblk64** %3, align 8
  %12 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @be64toh(i32 %13)
  %15 = load %struct.dquot*, %struct.dquot** %4, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.dqblk64*, %struct.dqblk64** %3, align 8
  %18 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @be64toh(i32 %19)
  %21 = load %struct.dquot*, %struct.dquot** %4, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.dqblk64*, %struct.dqblk64** %3, align 8
  %24 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @be64toh(i32 %25)
  %27 = load %struct.dquot*, %struct.dquot** %4, align 8
  %28 = getelementptr inbounds %struct.dquot, %struct.dquot* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.dqblk64*, %struct.dqblk64** %3, align 8
  %30 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @be64toh(i32 %31)
  %33 = load %struct.dquot*, %struct.dquot** %4, align 8
  %34 = getelementptr inbounds %struct.dquot, %struct.dquot* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.dqblk64*, %struct.dqblk64** %3, align 8
  %36 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @be64toh(i32 %37)
  %39 = load %struct.dquot*, %struct.dquot** %4, align 8
  %40 = getelementptr inbounds %struct.dquot, %struct.dquot* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.dqblk64*, %struct.dqblk64** %3, align 8
  %42 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @be64toh(i32 %43)
  %45 = load %struct.dquot*, %struct.dquot** %4, align 8
  %46 = getelementptr inbounds %struct.dquot, %struct.dquot* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.dqblk64*, %struct.dqblk64** %3, align 8
  %48 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @be64toh(i32 %49)
  %51 = load %struct.dquot*, %struct.dquot** %4, align 8
  %52 = getelementptr inbounds %struct.dquot, %struct.dquot* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  ret void
}

declare dso_local i8* @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
