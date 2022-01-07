; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_alloc.c_ffs_hashalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_alloc.c_ffs_hashalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.fs* }
%struct.fs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i32, i64, i32, i64 (%struct.inode*, i32, i64, i32)*)* @ffs_hashalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ffs_hashalloc(%struct.inode* %0, i32 %1, i64 %2, i32 %3, i64 (%struct.inode*, i32, i64, i32)* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64 (%struct.inode*, i32, i64, i32)*, align 8
  %12 = alloca %struct.fs*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 (%struct.inode*, i32, i64, i32)* %4, i64 (%struct.inode*, i32, i64, i32)** %11, align 8
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.fs*, %struct.fs** %18, align 8
  store %struct.fs* %19, %struct.fs** %12, align 8
  %20 = load i64 (%struct.inode*, i32, i64, i32)*, i64 (%struct.inode*, i32, i64, i32)** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i64 %20(%struct.inode* %21, i32 %22, i64 %23, i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i64, i64* %13, align 8
  store i64 %29, i64* %6, align 8
  br label %103

30:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %31

31:                                               ; preds = %63, %30
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.fs*, %struct.fs** %12, align 8
  %34 = getelementptr inbounds %struct.fs, %struct.fs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.fs*, %struct.fs** %12, align 8
  %43 = getelementptr inbounds %struct.fs, %struct.fs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load %struct.fs*, %struct.fs** %12, align 8
  %48 = getelementptr inbounds %struct.fs, %struct.fs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %37
  %53 = load i64 (%struct.inode*, i32, i64, i32)*, i64 (%struct.inode*, i32, i64, i32)** %11, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 %53(%struct.inode* %54, i32 %55, i64 0, i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %6, align 8
  br label %103

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %14, align 4
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %14, align 4
  br label %31

66:                                               ; preds = %31
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 2
  %69 = load %struct.fs*, %struct.fs** %12, align 8
  %70 = getelementptr inbounds %struct.fs, %struct.fs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %68, %71
  store i32 %72, i32* %8, align 4
  store i32 2, i32* %14, align 4
  br label %73

73:                                               ; preds = %99, %66
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.fs*, %struct.fs** %12, align 8
  %76 = getelementptr inbounds %struct.fs, %struct.fs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  %80 = load i64 (%struct.inode*, i32, i64, i32)*, i64 (%struct.inode*, i32, i64, i32)** %11, align 8
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 %80(%struct.inode* %81, i32 %82, i64 0, i32 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i64, i64* %13, align 8
  store i64 %88, i64* %6, align 8
  br label %103

89:                                               ; preds = %79
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.fs*, %struct.fs** %12, align 8
  %94 = getelementptr inbounds %struct.fs, %struct.fs* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %89
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %73

102:                                              ; preds = %73
  store i64 0, i64* %6, align 8
  br label %103

103:                                              ; preds = %102, %87, %60, %28
  %104 = load i64, i64* %6, align 8
  ret i64 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
