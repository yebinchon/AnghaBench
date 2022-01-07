; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_virtualblocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_virtualblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32 }
%union.dinode = type { i32 }

@di_size = common dso_local global i32 0, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs*, %union.dinode*)* @virtualblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtualblocks(%struct.fs* %0, %union.dinode* %1) #0 {
  %3 = alloca %struct.fs*, align 8
  %4 = alloca %union.dinode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %3, align 8
  store %union.dinode* %1, %union.dinode** %4, align 8
  %7 = load %struct.fs*, %struct.fs** %3, align 8
  %8 = load %union.dinode*, %union.dinode** %4, align 8
  %9 = load i32, i32* @di_size, align 4
  %10 = call i32 @DIP(%struct.fs* %7, %union.dinode* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.fs*, %struct.fs** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @lblkno(%struct.fs* %11, i32 %12)
  %14 = load i32, i32* @UFS_NDADDR, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %2
  %17 = load %struct.fs*, %struct.fs** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @blkroundup(%struct.fs* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.fs*, %struct.fs** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @lblkno(%struct.fs* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @UFS_NDADDR, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load %struct.fs*, %struct.fs** %3, align 8
  %27 = call i32 @NINDIR(%struct.fs* %26)
  %28 = add nsw i32 %25, %27
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.fs*, %struct.fs** %3, align 8
  %31 = call i32 @NINDIR(%struct.fs* %30)
  %32 = sdiv i32 %29, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %36, %16
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.fs*, %struct.fs** %3, align 8
  %39 = getelementptr inbounds %struct.fs, %struct.fs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.fs*, %struct.fs** %3, align 8
  %47 = call i32 @NINDIR(%struct.fs* %46)
  %48 = add nsw i32 %45, %47
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.fs*, %struct.fs** %3, align 8
  %51 = call i32 @NINDIR(%struct.fs* %50)
  %52 = sdiv i32 %49, %51
  store i32 %52, i32* %6, align 4
  br label %33

53:                                               ; preds = %33
  br label %58

54:                                               ; preds = %2
  %55 = load %struct.fs*, %struct.fs** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @fragroundup(%struct.fs* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i32, i32* %5, align 4
  %60 = sdiv i32 %59, 512
  ret i32 %60
}

declare dso_local i32 @DIP(%struct.fs*, %union.dinode*, i32) #1

declare dso_local i32 @lblkno(%struct.fs*, i32) #1

declare dso_local i32 @blkroundup(%struct.fs*, i32) #1

declare dso_local i32 @NINDIR(%struct.fs*) #1

declare dso_local i32 @fragroundup(%struct.fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
