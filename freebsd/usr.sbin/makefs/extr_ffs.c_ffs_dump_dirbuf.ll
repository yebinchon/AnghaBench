; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_dump_dirbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_dump_dirbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.direct = type { i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"ffs_dump_dirbuf: dir %s size %d cur %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c" inode %4d %7s offset %4d reclen %3d namlen %3d name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @ffs_dump_dirbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_dump_dirbuf(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.direct*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %21, i32 %24)
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %33, %3
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to %struct.direct*
  store %struct.direct* %39, %struct.direct** %8, align 8
  %40 = load %struct.direct*, %struct.direct** %8, align 8
  %41 = getelementptr inbounds %struct.direct, %struct.direct* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ufs_rw16(i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.direct*, %struct.direct** %8, align 8
  %46 = getelementptr inbounds %struct.direct, %struct.direct* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ufs_rw32(i32 %47, i32 %48)
  %50 = load %struct.direct*, %struct.direct** %8, align 8
  %51 = getelementptr inbounds %struct.direct, %struct.direct* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DTTOIF(i32 %52)
  %54 = call i8* @inode_type(i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.direct*, %struct.direct** %8, align 8
  %58 = getelementptr inbounds %struct.direct, %struct.direct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.direct*, %struct.direct** %8, align 8
  %61 = getelementptr inbounds %struct.direct, %struct.direct* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %54, i64 %55, i32 %56, i32 %59, i8* %62)
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %26

72:                                               ; preds = %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ufs_rw16(i32, i32) #1

declare dso_local i32 @ufs_rw32(i32, i32) #1

declare dso_local i8* @inode_type(i32) #1

declare dso_local i32 @DTTOIF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
