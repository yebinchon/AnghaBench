; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_chkdqchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_chkdqchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.dquot** }
%struct.dquot = type { i64, i64, i32, i64, i64 }
%struct.ucred = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64* }

@DQ_BLKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\0A%s: write failed, %s disk limit reached\0A\00", align 1
@quotatypes = common dso_local global i32* null, align 8
@EDQUOT = common dso_local global i32 0, align 4
@time_second = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"\0A%s: write failed, %s disk quota exceeded for too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.ucred*, i32, i32*)* @chkdqchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chkdqchg(%struct.inode* %0, i64 %1, %struct.ucred* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dquot*, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.dquot**, %struct.dquot*** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dquot*, %struct.dquot** %16, i64 %18
  %20 = load %struct.dquot*, %struct.dquot** %19, align 8
  store %struct.dquot* %20, %struct.dquot** %12, align 8
  %21 = load %struct.dquot*, %struct.dquot** %12, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.dquot*, %struct.dquot** %12, align 8
  %28 = getelementptr inbounds %struct.dquot, %struct.dquot* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %5
  %32 = load %struct.dquot*, %struct.dquot** %12, align 8
  %33 = getelementptr inbounds %struct.dquot, %struct.dquot* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %31
  %37 = load %struct.dquot*, %struct.dquot** %12, align 8
  %38 = getelementptr inbounds %struct.dquot, %struct.dquot* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DQ_BLKS, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ucred*, %struct.ucred** %9, align 8
  %48 = getelementptr inbounds %struct.ucred, %struct.ucred* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load i32, i32* @DQ_BLKS, align 4
  %53 = load %struct.dquot*, %struct.dquot** %12, align 8
  %54 = getelementptr inbounds %struct.dquot, %struct.dquot* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.dquot*, %struct.dquot** %12, align 8
  %58 = call i32 @DQI_UNLOCK(%struct.dquot* %57)
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = call %struct.TYPE_5__* @ITOVFS(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @quotatypes, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %68)
  %70 = load i32, i32* @EDQUOT, align 4
  store i32 %70, i32* %6, align 4
  br label %164

71:                                               ; preds = %43, %36
  %72 = load %struct.dquot*, %struct.dquot** %12, align 8
  %73 = call i32 @DQI_UNLOCK(%struct.dquot* %72)
  %74 = load i32, i32* @EDQUOT, align 4
  store i32 %74, i32* %6, align 4
  br label %164

75:                                               ; preds = %31, %5
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.dquot*, %struct.dquot** %12, align 8
  %78 = getelementptr inbounds %struct.dquot, %struct.dquot* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %76, %79
  br i1 %80, label %81, label %163

81:                                               ; preds = %75
  %82 = load %struct.dquot*, %struct.dquot** %12, align 8
  %83 = getelementptr inbounds %struct.dquot, %struct.dquot* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %163

86:                                               ; preds = %81
  %87 = load %struct.dquot*, %struct.dquot** %12, align 8
  %88 = getelementptr inbounds %struct.dquot, %struct.dquot* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.dquot*, %struct.dquot** %12, align 8
  %91 = getelementptr inbounds %struct.dquot, %struct.dquot* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %86
  %95 = load i64, i64* @time_second, align 8
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = call %struct.TYPE_6__* @ITOUMP(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %95, %103
  %105 = load %struct.dquot*, %struct.dquot** %12, align 8
  %106 = getelementptr inbounds %struct.dquot, %struct.dquot* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ucred*, %struct.ucred** %9, align 8
  %111 = getelementptr inbounds %struct.ucred, %struct.ucred* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %94
  %115 = load i32*, i32** %11, align 8
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %94
  store i32 0, i32* %6, align 4
  br label %164

117:                                              ; preds = %86
  %118 = load i64, i64* @time_second, align 8
  %119 = load %struct.dquot*, %struct.dquot** %12, align 8
  %120 = getelementptr inbounds %struct.dquot, %struct.dquot* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %123, label %162

123:                                              ; preds = %117
  %124 = load %struct.dquot*, %struct.dquot** %12, align 8
  %125 = getelementptr inbounds %struct.dquot, %struct.dquot* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DQ_BLKS, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %123
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ucred*, %struct.ucred** %9, align 8
  %135 = getelementptr inbounds %struct.ucred, %struct.ucred* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %130
  %139 = load i32, i32* @DQ_BLKS, align 4
  %140 = load %struct.dquot*, %struct.dquot** %12, align 8
  %141 = getelementptr inbounds %struct.dquot, %struct.dquot* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.dquot*, %struct.dquot** %12, align 8
  %145 = call i32 @DQI_UNLOCK(%struct.dquot* %144)
  %146 = load %struct.inode*, %struct.inode** %7, align 8
  %147 = call %struct.TYPE_5__* @ITOVFS(%struct.inode* %146)
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** @quotatypes, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @uprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %155)
  %157 = load i32, i32* @EDQUOT, align 4
  store i32 %157, i32* %6, align 4
  br label %164

158:                                              ; preds = %130, %123
  %159 = load %struct.dquot*, %struct.dquot** %12, align 8
  %160 = call i32 @DQI_UNLOCK(%struct.dquot* %159)
  %161 = load i32, i32* @EDQUOT, align 4
  store i32 %161, i32* %6, align 4
  br label %164

162:                                              ; preds = %117
  br label %163

163:                                              ; preds = %162, %81, %75
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %163, %158, %138, %116, %71, %51
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i32 @DQI_UNLOCK(%struct.dquot*) #1

declare dso_local i32 @uprintf(i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @ITOVFS(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @ITOUMP(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
