; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_lookup.c_readep.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_lookup.c_readep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i64, i32, i32 }
%struct.buf = type { i32 }
%struct.direntry = type { i32 }

@MSDOSFSROOT = common dso_local global i64 0, align 8
@NOCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readep(%struct.msdosfsmount* %0, i64 %1, i64 %2, %struct.buf** %3, %struct.direntry** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msdosfsmount*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buf**, align 8
  %11 = alloca %struct.direntry**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.buf** %3, %struct.buf*** %10, align 8
  store %struct.direntry** %4, %struct.direntry*** %11, align 8
  %15 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %16 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @MSDOSFSROOT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %5
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i64 @de_blk(%struct.msdosfsmount* %22, i64 %26)
  %28 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %29 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %35 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @de_bn2off(%struct.msdosfsmount* %33, i64 %36)
  %38 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %39 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %37, %40
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %32, %21, %5
  %43 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @detobn(%struct.msdosfsmount* %43, i64 %44, i64 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %48 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @NOCRED, align 4
  %53 = load %struct.buf**, %struct.buf*** %10, align 8
  %54 = call i32 @bread(i32 %49, i32 %50, i32 %51, i32 %52, %struct.buf** %53)
  store i32 %54, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load %struct.buf**, %struct.buf*** %10, align 8
  %58 = load %struct.buf*, %struct.buf** %57, align 8
  %59 = call i32 @brelse(%struct.buf* %58)
  %60 = load %struct.buf**, %struct.buf*** %10, align 8
  store %struct.buf* null, %struct.buf** %60, align 8
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %73

62:                                               ; preds = %42
  %63 = load %struct.direntry**, %struct.direntry*** %11, align 8
  %64 = icmp ne %struct.direntry** %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %67 = load %struct.buf**, %struct.buf*** %10, align 8
  %68 = load %struct.buf*, %struct.buf** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call %struct.direntry* @bptoep(%struct.msdosfsmount* %66, %struct.buf* %68, i64 %69)
  %71 = load %struct.direntry**, %struct.direntry*** %11, align 8
  store %struct.direntry* %70, %struct.direntry** %71, align 8
  br label %72

72:                                               ; preds = %65, %62
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @de_blk(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @de_bn2off(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @detobn(%struct.msdosfsmount*, i64, i64) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local %struct.direntry* @bptoep(%struct.msdosfsmount*, %struct.buf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
