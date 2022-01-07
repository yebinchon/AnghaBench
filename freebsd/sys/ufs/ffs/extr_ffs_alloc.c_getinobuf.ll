; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_alloc.c_getinobuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_alloc.c_getinobuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.inode = type { i32 }
%struct.fs = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (%struct.inode*, i32, i64, i32)* @getinobuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @getinobuf(%struct.inode* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fs*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.fs* @ITOFS(%struct.inode* %10)
  store %struct.fs* %11, %struct.fs** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @ITODEVVP(%struct.inode* %12)
  %14 = load %struct.fs*, %struct.fs** %9, align 8
  %15 = load %struct.fs*, %struct.fs** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.fs*, %struct.fs** %9, align 8
  %18 = getelementptr inbounds %struct.fs, %struct.fs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @ino_to_fsba(%struct.fs* %15, i64 %23)
  %25 = call i32 @fsbtodb(%struct.fs* %14, i32 %24)
  %26 = load %struct.fs*, %struct.fs** %9, align 8
  %27 = getelementptr inbounds %struct.fs, %struct.fs* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.buf* @getblk(i32 %13, i32 %25, i32 %29, i32 0, i32 0, i32 %30)
  ret %struct.buf* %31
}

declare dso_local %struct.fs* @ITOFS(%struct.inode*) #1

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ITODEVVP(%struct.inode*) #1

declare dso_local i32 @fsbtodb(%struct.fs*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.fs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
