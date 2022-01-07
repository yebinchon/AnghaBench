; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_readsuper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_readsuper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64, i64, i32, i64, i64, i32, i32, i32, i32*, i64, i64 }

@SBLOCKSIZE = common dso_local global i64 0, align 8
@FS_BAD_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@SBLOCK_UFS1 = common dso_local global i64 0, align 8
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@MINBSIZE = common dso_local global i64 0, align 8
@MAXBSIZE = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@FS_METACKHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Superblock check-hash failed: recorded check-hash 0x%x != computed check-hash 0x%x%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" (Ignored)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FS_NEEDSFSCK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fs**, i64, i32, i32, i32 (i8*, i64, i8**, i32)*)* @readsuper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readsuper(i8* %0, %struct.fs** %1, i64 %2, i32 %3, i32 %4, i32 (i8*, i64, i8**, i32)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fs**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (i8*, i64, i8**, i32)*, align 8
  %14 = alloca %struct.fs*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.fs** %1, %struct.fs*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (i8*, i64, i8**, i32)* %5, i32 (i8*, i64, i8**, i32)** %13, align 8
  %18 = load i32 (i8*, i64, i8**, i32)*, i32 (i8*, i64, i8**, i32)** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.fs**, %struct.fs*** %9, align 8
  %22 = bitcast %struct.fs** %21 to i8**
  %23 = load i64, i64* @SBLOCKSIZE, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 %18(i8* %19, i64 %20, i8** %22, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %7, align 4
  br label %151

30:                                               ; preds = %6
  %31 = load %struct.fs**, %struct.fs*** %9, align 8
  %32 = load %struct.fs*, %struct.fs** %31, align 8
  store %struct.fs* %32, %struct.fs** %14, align 8
  %33 = load %struct.fs*, %struct.fs** %14, align 8
  %34 = getelementptr inbounds %struct.fs, %struct.fs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FS_BAD_MAGIC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %7, align 4
  br label %151

40:                                               ; preds = %30
  %41 = load %struct.fs*, %struct.fs** %14, align 8
  %42 = getelementptr inbounds %struct.fs, %struct.fs* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @SBLOCK_UFS1, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %68, label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.fs*, %struct.fs** %14, align 8
  %55 = getelementptr inbounds %struct.fs, %struct.fs* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %149

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.fs*, %struct.fs** %14, align 8
  %65 = getelementptr inbounds %struct.fs, %struct.fs* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %149

68:                                               ; preds = %62, %59, %49, %46
  %69 = load %struct.fs*, %struct.fs** %14, align 8
  %70 = getelementptr inbounds %struct.fs, %struct.fs* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 1
  br i1 %72, label %73, label %149

73:                                               ; preds = %68
  %74 = load %struct.fs*, %struct.fs** %14, align 8
  %75 = getelementptr inbounds %struct.fs, %struct.fs* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MINBSIZE, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %149

79:                                               ; preds = %73
  %80 = load %struct.fs*, %struct.fs** %14, align 8
  %81 = getelementptr inbounds %struct.fs, %struct.fs* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MAXBSIZE, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %149

85:                                               ; preds = %79
  %86 = load %struct.fs*, %struct.fs** %14, align 8
  %87 = getelementptr inbounds %struct.fs, %struct.fs* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @DEV_BSIZE, align 4
  %90 = call i64 @roundup(i32 80, i32 %89)
  %91 = icmp sge i64 %88, %90
  br i1 %91, label %92, label %149

92:                                               ; preds = %85
  %93 = load %struct.fs*, %struct.fs** %14, align 8
  %94 = getelementptr inbounds %struct.fs, %struct.fs* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SBLOCKSIZE, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %149

98:                                               ; preds = %92
  %99 = load %struct.fs*, %struct.fs** %14, align 8
  %100 = getelementptr inbounds %struct.fs, %struct.fs* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FS_METACKHASH, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.fs*, %struct.fs** %14, align 8
  %107 = getelementptr inbounds %struct.fs, %struct.fs* %106, i32 0, i32 10
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %98
  %109 = load %struct.fs*, %struct.fs** %14, align 8
  %110 = getelementptr inbounds %struct.fs, %struct.fs* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fs*, %struct.fs** %14, align 8
  %113 = call i32 @ffs_calc_sbhash(%struct.fs* %112)
  store i32 %113, i32* %17, align 4
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %108
  store i32 0, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.fs*, %struct.fs** %14, align 8
  %120 = getelementptr inbounds %struct.fs, %struct.fs* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %127 = call i32 @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %122, i8* %126)
  br label %128

128:                                              ; preds = %118, %115
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* @FS_NEEDSFSCK, align 4
  %133 = load %struct.fs*, %struct.fs** %14, align 8
  %134 = getelementptr inbounds %struct.fs, %struct.fs* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.fs*, %struct.fs** %14, align 8
  %138 = getelementptr inbounds %struct.fs, %struct.fs* %137, i32 0, i32 7
  store i32 1, i32* %138, align 8
  store i32 0, i32* %7, align 4
  br label %151

139:                                              ; preds = %128
  %140 = load %struct.fs*, %struct.fs** %14, align 8
  %141 = getelementptr inbounds %struct.fs, %struct.fs* %140, i32 0, i32 7
  store i32 0, i32* %141, align 8
  %142 = load i32, i32* @EINVAL, align 4
  store i32 %142, i32* %7, align 4
  br label %151

143:                                              ; preds = %108
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.fs*, %struct.fs** %14, align 8
  %146 = getelementptr inbounds %struct.fs, %struct.fs* %145, i32 0, i32 9
  store i64 %144, i64* %146, align 8
  %147 = load %struct.fs*, %struct.fs** %14, align 8
  %148 = getelementptr inbounds %struct.fs, %struct.fs* %147, i32 0, i32 8
  store i32* null, i32** %148, align 8
  store i32 0, i32* %7, align 4
  br label %151

149:                                              ; preds = %92, %85, %79, %73, %68, %62, %53
  %150 = load i32, i32* @ENOENT, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %149, %143, %139, %131, %38, %28
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @ffs_calc_sbhash(%struct.fs*) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
