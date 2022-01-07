; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_open_stable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_open_stable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@NFSD_STABLERESTART = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@NFSD_STABLEBACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @open_stable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_stable(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.stat, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %6, align 4
  %10 = load i32, i32* @NFSD_STABLERESTART, align 4
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = call i32 @open(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @NFSD_STABLERESTART, align 4
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i32 %16, i32 %19, i32 384)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @fstat(i32 %25, %struct.stat* %8)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @close(i32 %30)
  store i32 -1, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load i32, i32* @NFSD_STABLEBACKUP, align 4
  %38 = load i32, i32* @O_RDWR, align 4
  %39 = call i32 @open(i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @NFSD_STABLEBACKUP, align 4
  %44 = load i32, i32* @O_RDWR, align 4
  %45 = load i32, i32* @O_CREAT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @open(i32 %43, i32 %46, i32 384)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %6, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @fstat(i32 %52, %struct.stat* %9)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @close(i32 %57)
  store i32 -1, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @close(i32 %64)
  store i32 -1, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* %5, align 4
  %69 = load i32*, i32** %3, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %4, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %92

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @copy_stable(i32 %80, i32 %81)
  br label %92

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @copy_stable(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %74, %91, %79
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @copy_stable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
